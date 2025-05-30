document.addEventListener('DOMContentLoaded', function () {
    // Add a copy button to each codeblock element
    const codeblocks = document.querySelectorAll('.codeblock')
    codeblocks.forEach((codeblock) => {
        // Create a <center> element
        const centerElement = document.createElement('center')

        // Create a <button> element
        const copyButton = document.createElement('button')
        copyButton.textContent = 'Kopiuj kod'
        copyButton.className = 'copy-button'
        copyButton.addEventListener('click', function () {
            CopyCodeToClipboard(copyButton)
        })

        // Append the button to the center element
        centerElement.appendChild(copyButton)

        // Append the center element to the codeblock
        codeblock.appendChild(centerElement)
    })
})

function CopyCodeToClipboard(button) {
    const codeblockElement = button.closest('.codeblock')
    const codeElement = codeblockElement.querySelector('code')

    // Create a temporary textarea to copy the text
    const buffer = document.createElement('textarea')
    buffer.value = codeElement.textContent
    document.body.appendChild(buffer)

    buffer.select()
    document.execCommand('copy')
    document.body.removeChild(buffer)
}
