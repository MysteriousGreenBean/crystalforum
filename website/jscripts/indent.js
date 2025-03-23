document.addEventListener('DOMContentLoaded', function() {
  // Select all .post_body elements
  const postBodies = document.querySelectorAll('.post_body');

  function processGeneralContent(postBody) {
    // Preserve carousels by wrapping them in a placeholder
    const carousels = postBody.querySelectorAll('.carousel-wrapper');

    carousels.forEach(carousel => {
      const placeholder = document.createElement('div');
      placeholder.classList.add('carousel-placeholder');
      carousel.parentNode.insertBefore(placeholder, carousel);
      placeholder.appendChild(carousel);
    });

    // Get all child nodes of postBody
    const childNodes = Array.from(postBody.childNodes);
    postBody.innerHTML = ''; // Clear to rebuild content

    let currentParagraph = document.createElement('div');
    currentParagraph.classList.add('indented');

    childNodes.forEach((node, index) => {
      if (node.nodeType === Node.ELEMENT_NODE && node.classList.contains('carousel-wrapper')) {
        // Restore carousel without modifications
        postBody.appendChild(node);
      } else if (node.nodeType === Node.ELEMENT_NODE && (
          node.tagName === 'OL' || 
          node.tagName === 'UL' || 
          node.tagName === 'BLOCKQUOTE' || 
          node.tagName === 'PRE' || 
          node.classList.contains('spoiler'))) {
        // Append structured elements as they are
        if (currentParagraph.childNodes.length > 0) {
          postBody.appendChild(currentParagraph);
          currentParagraph = document.createElement('div');
          currentParagraph.classList.add('indented');
        }
        postBody.appendChild(node);
      } else if (node.nodeType === Node.ELEMENT_NODE && /^H[1-6]$/.test(node.tagName)) {
        // **Fix for extra <br> under headings**
        if (currentParagraph.childNodes.length > 0) {
          postBody.appendChild(currentParagraph);
        }
        postBody.appendChild(node);
        currentParagraph = document.createElement('div');
        currentParagraph.classList.add('indented');
      } else if (node.nodeType === Node.ELEMENT_NODE && node.tagName === 'DIV') {
        // **Ensure text-only <div> gets indented**
        const containsOnlyTextOrInline = [...node.childNodes].every(child =>
          child.nodeType === Node.TEXT_NODE || 
          (child.nodeType === Node.ELEMENT_NODE && ['SPAN', 'I', 'B', 'A', 'STRONG', 'U', 'ITALIC', 'STROKE'].includes(child.tagName))
        );

        if (containsOnlyTextOrInline) {
          node.classList.add('indented'); // Instead of replacing, just add the class
          postBody.appendChild(node);
        } else {
          postBody.appendChild(node); // Otherwise, leave it untouched
        }
      } else if (node.nodeType === Node.TEXT_NODE || (node.nodeType === Node.ELEMENT_NODE && node.tagName === 'BR')) {
        // **Fix: Ignore single <br> right after a heading or image**
        if (
          node.tagName === 'BR' && index > 0 &&
          (
            /^H[1-6]$/.test(childNodes[index - 1].tagName) ||  // Heading before <br>
            (childNodes[index - 1].nodeType === Node.ELEMENT_NODE && childNodes[index - 1].tagName === 'IMG') // Image before <br>
          )
        ) {
          return; // Skip this <br>
        }

        // If it's a <br>, close the current paragraph and start a new one
        if (node.tagName === 'BR' && currentParagraph.childNodes.length > 0) {
          postBody.appendChild(currentParagraph);
          currentParagraph = document.createElement('div');
          currentParagraph.classList.add('indented');
        } else {
          currentParagraph.appendChild(node.cloneNode(true));
        }
      } else if (node.nodeType === Node.ELEMENT_NODE) {
        // If it's an inline element, keep it inside the same paragraph
        if (['I', 'B', 'A', 'STRONG', 'U', 'ITALIC', 'STROKE', 'SPAN'].includes(node.tagName)) {
          currentParagraph.appendChild(node.cloneNode(true));
        } else {
          // If it's a block element, close the current paragraph and append it separately
          if (currentParagraph.childNodes.length > 0) {
            postBody.appendChild(currentParagraph);
            currentParagraph = document.createElement('div');
            currentParagraph.classList.add('indented');
          }
          postBody.appendChild(node);
        }
      }
    });

    // Append any remaining paragraph content
    if (currentParagraph.childNodes.length > 0) {
      postBody.appendChild(currentParagraph);
    }

    // Restore `.carousel-wrapper` to its original position
    postBody.querySelectorAll('.carousel-placeholder').forEach(placeholder => {
      const carousel = placeholder.querySelector('.carousel-wrapper');
      if (carousel) {
        placeholder.replaceWith(carousel);
      }
    });
  }

  function addIndentationToSpoilerContent() {
    const spoilerContents = document.querySelectorAll('.spoiler .spoiler_content');
    
    spoilerContents.forEach(content => {
      if (!content.classList.contains('processed')) {
        content.classList.add('processed');

        const childNodes = Array.from(content.childNodes);
        content.innerHTML = ''; // Clear to reprocess

        let currentParagraph = document.createElement('div');
        currentParagraph.classList.add('indented');

        childNodes.forEach(node => {
          if (node.nodeType === Node.TEXT_NODE || (node.nodeType === Node.ELEMENT_NODE && node.tagName === 'BR')) {
            if (node.tagName === 'BR' && currentParagraph.childNodes.length > 0) {
              content.appendChild(currentParagraph);
              currentParagraph = document.createElement('div');
              currentParagraph.classList.add('indented');
            } else {
              currentParagraph.appendChild(node.cloneNode(true));
            }
          } else if (node.nodeType === Node.ELEMENT_NODE) {
            if (['I', 'B', 'A', 'STRONG', 'U', 'ITALIC', 'STROKE', 'SPAN'].includes(node.tagName)) {
              currentParagraph.appendChild(node.cloneNode(true));
            } else {
              if (currentParagraph.childNodes.length > 0) {
                content.appendChild(currentParagraph);
                currentParagraph = document.createElement('div');
                currentParagraph.classList.add('indented');
              }
              content.appendChild(node);
            }
          }
        });

        if (currentParagraph.childNodes.length > 0) {
          content.appendChild(currentParagraph);
        }
      }
    });
  }

  // Execute the function to process the content for each post body
  postBodies.forEach(postBody => {
    processGeneralContent(postBody);
  });

  // Process indentation for spoilers
  addIndentationToSpoilerContent();
});
