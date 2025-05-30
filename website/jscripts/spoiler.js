document.addEventListener('DOMContentLoaded', function() {
  const spoilers = document.querySelectorAll('.spoiler');

  spoilers.forEach(spoiler => {
    const button = spoiler.querySelector('button');
    const content = spoiler.querySelector('.spoiler_content');

    // Set initial styles
    content.style.transition = 'max-height 0.8s ease, padding 0.8s ease, opacity 0.8s ease';
    content.style.maxHeight = '0';
    content.style.opacity = '0';
    content.style.padding = '0';
    content.style.overflow = 'hidden'; // Ensures hidden content doesn't affect layout

    button.addEventListener('click', function() {
      const isOpen = spoiler.classList.contains('open');
      
      if (isOpen) {
        // Close the spoiler
        spoiler.classList.remove('open');
        button.classList.remove('open'); // Remove 'open' class from the button
        content.style.maxHeight = '0'; // Collapse content
        content.style.opacity = '0'; // Hide content
        content.style.padding = '0'; // Remove padding
      } else {
        // Open the spoiler
        spoiler.classList.add('open');
        button.classList.add('open'); // Add 'open' class to the button
        content.style.maxHeight = content.scrollHeight + '30px'; // Expand content to fit
        content.style.opacity = '1'; // Show content
        content.style.padding = '10px'; // Add padding
      }
    });
  });
});




