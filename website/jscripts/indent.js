document.addEventListener('DOMContentLoaded', function() {
  // Select all .post_body elements
  const postBodies = document.querySelectorAll('.post_body');

  function processGeneralContent(postBody) {
    let content = postBody.innerHTML;

    // Preserve lists by wrapping them with a temporary class
    content = content.replace(/(<ol[\s\S]*?<\/ol>|<ul[\s\S]*?<\/ul>)/gi, function(match) {
      return `<div class="preserve-list">${match}</div>`;
    });

    // Preserve spoilers by wrapping them with a temporary class
    content = content.replace(/(<div class="spoiler">[\s\S]*?<\/div>)/gi, function(match) {
      return `<div class="preserve-spoiler">${match}</div>`;
    });

    // Split content by <br> tags while keeping the list and spoiler content intact
    const parts = content.split(/(<div class="preserve-list">[\s\S]*?<\/div>|<div class="preserve-spoiler">[\s\S]*?<\/div>)/g);

    // Clear the current content
    postBody.innerHTML = '';

    parts.forEach(part => {
      if (/^<div class="preserve-list">/.test(part) || /^<div class="preserve-spoiler">/.test(part)) {
        // Append preserved lists and spoilers directly
        postBody.innerHTML += part.replace(/^<div class="preserve-list">/, '').replace(/^<div class="preserve-spoiler">/, '').replace(/<\/div>$/, '');
      } else {
        // Split non-list, non-spoiler content by <br> tags
        const paragraphs = part.split(/<br\s*\/?>/);

        // Wrap each paragraph in a div with the 'indented' class
        paragraphs.forEach(paragraph => {
          const trimmedParagraph = paragraph.trim();
          if (trimmedParagraph) {
            const div = document.createElement('div');
            div.classList.add('indented');
            div.innerHTML = trimmedParagraph;
            postBody.appendChild(div);
          }
        });
      }
    });
  }

  function addIndentationToSpoilerContent() {
    // Select all spoiler contents
    const spoilerContents = document.querySelectorAll('.spoiler .spoiler_content');
    
    spoilerContents.forEach(content => {
      // Process only if content is not already processed
      if (!content.classList.contains('processed')) {
        // Mark as processed to avoid multiple processing
        content.classList.add('processed');

        // Create a temporary container
        const tempDiv = document.createElement('div');
        tempDiv.innerHTML = content.innerHTML;

        // Split content by <br> tags
        const parts = tempDiv.innerHTML.split(/<br\s*\/?>/);

        // Clear current content
        content.innerHTML = '';

        // Wrap each part in a div with the 'indented' class
        parts.forEach(part => {
          const trimmedPart = part.trim();
          if (trimmedPart) {
            const div = document.createElement('div');
            div.classList.add('indented');
            div.innerHTML = trimmedPart;
            content.appendChild(div);
          }
        });
      }
    });
  }

  // Execute the function to process the content for each post body
  postBodies.forEach(postBody => {
    processGeneralContent(postBody);
  });
  
  // After processing the general content, handle spoilers
  addIndentationToSpoilerContent();
});
