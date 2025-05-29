document.addEventListener('DOMContentLoaded', function () {
    const postBodies = document.querySelectorAll('.post_body')

    function processGeneralContent(postBody) {
        const carousels = postBody.querySelectorAll('.carousel-wrapper')

        carousels.forEach((carousel) => {
            const placeholder = document.createElement('div')
            placeholder.classList.add('carousel-placeholder')
            carousel.parentNode.insertBefore(placeholder, carousel)
            placeholder.appendChild(carousel)
        })

        const childNodes = Array.from(postBody.childNodes)
        postBody.innerHTML = ''

        let currentParagraph = document.createElement('div')
        currentParagraph.classList.add('indented')

        childNodes.forEach((node, index) => {
            if (
                node.nodeType === Node.ELEMENT_NODE &&
                node.classList.contains('carousel-wrapper')
            ) {
                postBody.appendChild(node)
            } else if (
                node.nodeType === Node.ELEMENT_NODE &&
                (node.tagName === 'OL' ||
                    node.tagName === 'UL' ||
                    node.tagName === 'BLOCKQUOTE' ||
                    node.tagName === 'PRE' ||
                    node.classList.contains('spoiler'))
            ) {
                if (currentParagraph.childNodes.length > 0) {
                    postBody.appendChild(currentParagraph)
                    currentParagraph = document.createElement('div')
                    currentParagraph.classList.add('indented')
                }
                postBody.appendChild(node)
            } else if (
                node.nodeType === Node.ELEMENT_NODE &&
                /^H[1-6]$/.test(node.tagName)
            ) {
                if (currentParagraph.childNodes.length > 0) {
                    postBody.appendChild(currentParagraph)
                }
                postBody.appendChild(node)
                currentParagraph = document.createElement('div')
                currentParagraph.classList.add('indented')
            } else if (
                node.nodeType === Node.ELEMENT_NODE &&
                node.tagName === 'DIV'
            ) {
                if (node.classList.contains('no_indent')) {
                    postBody.appendChild(node)
                } else {
                    const containsOnlyTextOrInline = [...node.childNodes].every(
                        (child) =>
                            child.nodeType === Node.TEXT_NODE ||
                            (child.nodeType === Node.ELEMENT_NODE &&
                                [
                                    'SPAN',
                                    'I',
                                    'B',
                                    'A',
                                    'STRONG',
                                    'U',
                                    'ITALIC',
                                    'STROKE',
                                ].includes(child.tagName))
                    )

                    if (containsOnlyTextOrInline) {
                        node.classList.add('indented')
                        postBody.appendChild(node)
                    } else {
                        postBody.appendChild(node)
                    }
                }
            } else if (
                node.nodeType === Node.TEXT_NODE ||
                (node.nodeType === Node.ELEMENT_NODE && node.tagName === 'BR')
            ) {
                if (
                    node.tagName === 'BR' &&
                    index > 0 &&
                    (/^H[1-6]$/.test(childNodes[index - 1].tagName) ||
                        (childNodes[index - 1].nodeType === Node.ELEMENT_NODE &&
                            childNodes[index - 1].tagName === 'IMG'))
                ) {
                    return
                }

                if (
                    node.tagName === 'BR' &&
                    currentParagraph.childNodes.length > 0
                ) {
                    postBody.appendChild(currentParagraph)
                    currentParagraph = document.createElement('div')
                    currentParagraph.classList.add('indented')
                } else {
                    currentParagraph.appendChild(node.cloneNode(true))
                }
            } else if (node.nodeType === Node.ELEMENT_NODE) {
                if (node.classList.contains('no_indent')) {
                    if (currentParagraph.childNodes.length > 0) {
                        postBody.appendChild(currentParagraph)
                        currentParagraph = document.createElement('div')
                        currentParagraph.classList.add('indented')
                    }
                    postBody.appendChild(node)
                } else if (
                    [
                        'I',
                        'B',
                        'A',
                        'STRONG',
                        'U',
                        'ITALIC',
                        'STROKE',
                        'SPAN',
                    ].includes(node.tagName)
                ) {
                    currentParagraph.appendChild(node.cloneNode(true))
                } else {
                    if (currentParagraph.childNodes.length > 0) {
                        postBody.appendChild(currentParagraph)
                        currentParagraph = document.createElement('div')
                        currentParagraph.classList.add('indented')
                    }
                    postBody.appendChild(node)
                }
            }
        })

        if (currentParagraph.childNodes.length > 0) {
            postBody.appendChild(currentParagraph)
        }

        postBody
            .querySelectorAll('.carousel-placeholder')
            .forEach((placeholder) => {
                const carousel = placeholder.querySelector('.carousel-wrapper')
                if (carousel) {
                    placeholder.replaceWith(carousel)
                }
            })
    }

    function addIndentationToSpoilerContent() {
        const spoilerContents = document.querySelectorAll(
            '.spoiler .spoiler_content'
        )

        spoilerContents.forEach((content) => {
            if (!content.classList.contains('processed')) {
                content.classList.add('processed')

                const childNodes = Array.from(content.childNodes)
                content.innerHTML = ''

                let currentParagraph = document.createElement('div')
                currentParagraph.classList.add('indented')

                childNodes.forEach((node) => {
                    if (
                        node.nodeType === Node.TEXT_NODE ||
                        (node.nodeType === Node.ELEMENT_NODE &&
                            node.tagName === 'BR')
                    ) {
                        if (
                            node.tagName === 'BR' &&
                            currentParagraph.childNodes.length > 0
                        ) {
                            content.appendChild(currentParagraph)
                            currentParagraph = document.createElement('div')
                            currentParagraph.classList.add('indented')
                        } else {
                            currentParagraph.appendChild(node.cloneNode(true))
                        }
                    } else if (node.nodeType === Node.ELEMENT_NODE) {
                        if (node.classList.contains('no_indent')) {
                            if (currentParagraph.childNodes.length > 0) {
                                content.appendChild(currentParagraph)
                                currentParagraph = document.createElement('div')
                                currentParagraph.classList.add('indented')
                            }
                            content.appendChild(node)
                        } else if (
                            [
                                'I',
                                'B',
                                'A',
                                'STRONG',
                                'U',
                                'ITALIC',
                                'STROKE',
                                'SPAN',
                            ].includes(node.tagName)
                        ) {
                            currentParagraph.appendChild(node.cloneNode(true))
                        } else {
                            if (currentParagraph.childNodes.length > 0) {
                                content.appendChild(currentParagraph)
                                currentParagraph = document.createElement('div')
                                currentParagraph.classList.add('indented')
                            }
                            content.appendChild(node)
                        }
                    }
                })

                if (currentParagraph.childNodes.length > 0) {
                    content.appendChild(currentParagraph)
                }
            }
        })
    }

    postBodies.forEach((postBody) => {
        processGeneralContent(postBody)
    })

    addIndentationToSpoilerContent()
})
