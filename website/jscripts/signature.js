document.addEventListener('DOMContentLoaded', function () {
    const signatures = document.querySelectorAll(
        '.signature .sig_text, .signature2 .sig_text'
    )
    signatures.forEach((sig) => {
        // Find the closest post element
        const postWrapper = sig.closest('.post')
        if (postWrapper) {
            // Get the username element and its color
            const usernameElement = postWrapper.querySelector('.username')
            if (usernameElement) {
                const usernameColor =
                    window.getComputedStyle(usernameElement).color

                // Apply the color to the .sig_quote elements
                const sigShadow = sig.closest('.sig_shadow')
                if (sigShadow) {
                    const quotes = sigShadow.querySelectorAll('.sig_quote')
                    quotes.forEach((quote) => {
                        if (!quote.hasAttribute('data-user-set-color')) {
                            quote.style.color = usernameColor
                        }
                    })

                    // Apply the color to the border of the .sig_img element
                    const sigImg = sigShadow.querySelector('.sig_img')
                    if (sigImg && !sigImg.hasAttribute('data-user-set-color')) {
                        sigImg.style.borderColor = usernameColor
                    }
                }

                // Apply the color to the .sig_urls element
                const sigUrls = postWrapper.querySelector('.sig_urls')
                if (sigUrls && !sigUrls.hasAttribute('data-user-set-color')) {
                    sigUrls.style.color = usernameColor

                    // Apply the color to .sig_urls a and a:hover elements
                    const style = document.createElement('style')
                    style.innerHTML = `
                        .sig_urls a { color: ${usernameColor} !important; }
                        .sig_urls a:hover { color: ${usernameColor} !important; }
                    `
                    document.head.appendChild(style)
                }
            }
        }
    })
})

document.addEventListener('DOMContentLoaded', function () {
    const signatures = document.querySelectorAll(
        '.signature .sig_text, .signature2 .sig_text'
    )
    signatures.forEach((sig) => {
        let signatureHTML = sig.innerHTML

        // Debug initial signatureHTML
        console.debug('Initial signatureHTML:', signatureHTML)

        // Handle quote color
        const quoteColorMarker = signatureHTML.match(
            /\[quote_color=([#a-zA-Z0-9]+)\]/
        )
        if (quoteColorMarker) {
            const quoteColor = quoteColorMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[quote_color=([#a-zA-Z0-9]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const quotes = sig
                .closest('.sig_shadow')
                .querySelectorAll('.sig_quote')
            quotes.forEach((quote) => {
                quote.style.color = quoteColor
                quote.setAttribute('data-user-set-color', 'true') // Mark as user set color
            })
        }

        // Handle urls color
        const urlsColorMarker = signatureHTML.match(
            /\[urls_color=([#a-zA-Z0-9]+)\]/
        )
        if (urlsColorMarker) {
            const urlsColor = urlsColorMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[urls_color=([#a-zA-Z0-9]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const postWrapper = sig.closest('.post')
            const urls = postWrapper.querySelector('.sig_urls')
            if (urls) {
                urls.style.color = urlsColor
                urls.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
        }

        // Handle sig_img border color
        const imgBorderColorMarker = signatureHTML.match(
            /\[img_border_color=([#a-zA-Z0-9]+)\]/
        )
        if (imgBorderColorMarker) {
            const imgBorderColor = imgBorderColorMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[img_border_color=([#a-zA-Z0-9]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const sigImg = sig.closest('.sig_shadow').querySelector('.sig_img')
            if (sigImg) {
                sigImg.style.borderColor = imgBorderColor
                sigImg.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
        }

        // Handle sig_shadow background color for both .sig_shadow and .signature2 .sig_shadow
        const shadowBgColorMarker = signatureHTML.match(
            /\[shadow_bg_color=([#a-zA-Z0-9]+)\]/
        )
        if (shadowBgColorMarker) {
            const shadowBgColor = shadowBgColorMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[shadow_bg_color=([#a-zA-Z0-9]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const sigShadow = sig.closest('.sig_shadow')
            if (sigShadow) {
                sigShadow.style.backgroundColor = shadowBgColor
                sigShadow.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
            const signature2Shadow = sig.closest('.signature2 .sig_shadow')
            if (signature2Shadow) {
                signature2Shadow.style.backgroundColor = shadowBgColor
                signature2Shadow.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
        }

        // Handle signature background image
        const signatureBgImageMarker = signatureHTML.match(
            /\[signature_bg_image=([^\]]+)\]/
        )
        if (signatureBgImageMarker) {
            const signatureBgImage = signatureBgImageMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[signature_bg_image=([^\]]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const signatureElement = sig.closest('.signature, .signature2')
            if (signatureElement) {
                signatureElement.style.backgroundImage = `url(${signatureBgImage})`
                signatureElement.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
        }

        // Handle signature box-shadow
        const signatureBoxShadowMarker = signatureHTML.match(
            /\[signature_box_shadow=([^\]]+)\]/
        )
        if (signatureBoxShadowMarker) {
            const signatureBoxShadow = signatureBoxShadowMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[signature_box_shadow=([^\]]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const signatureElement = sig.closest('.signature, .signature2')
            if (signatureElement) {
                signatureElement.style.boxShadow = signatureBoxShadow
                signatureElement.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
        }

        // Handle signature border
        const signatureBorderMarker = signatureHTML.match(
            /\[signature_border=([^\]]+)\]/
        )
        if (signatureBorderMarker) {
            const signatureBorder = signatureBorderMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[signature_border=([^\]]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const signatureElement = sig.closest('.signature, .signature2')
            if (signatureElement) {
                signatureElement.style.border = signatureBorder
                signatureElement.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
        }

        // Handle sig_shadow box-shadow
        const shadowBoxShadowMarker = signatureHTML.match(
            /\[shadow_box_shadow=([^\]]+)\]/
        )
        if (shadowBoxShadowMarker) {
            const shadowBoxShadow = shadowBoxShadowMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[shadow_box_shadow=([^\]]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const sigShadow = sig.closest('.sig_shadow')
            if (sigShadow) {
                sigShadow.style.boxShadow = shadowBoxShadow
                sigShadow.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
        }

        // Handle sig_shadow border
        const shadowBorderMarker = signatureHTML.match(
            /\[shadow_border=([^\]]+)\]/
        )
        if (shadowBorderMarker) {
            const shadowBorder = shadowBorderMarker[1]
            signatureHTML = signatureHTML.replace(
                /\[shadow_border=([^\]]+)\]/,
                ''
            )
            sig.innerHTML = signatureHTML
            const sigShadow = sig.closest('.sig_shadow')
            if (sigShadow) {
                sigShadow.style.border = shadowBorder
                sigShadow.setAttribute('data-user-set-color', 'true') // Mark as user set color
            }
        }

        // Debug final signatureHTML
        console.debug('Final signatureHTML:', sig.innerHTML)
    })
})
