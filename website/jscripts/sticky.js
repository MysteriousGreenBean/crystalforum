document.addEventListener('DOMContentLoaded', function () {
    function updateAvatarPositions() {
        const posts = document.querySelectorAll('.post_author')

        console.debug(`Number of post_author containers: ${posts.length}`)

        posts.forEach((post) => {
            const avatar = post.querySelector('.author_avatar')

            if (!avatar) {
                console.warn('No avatar found in this post_author container.')
                return
            }

            const containerRect = post.getBoundingClientRect()
            const avatarRect = avatar.getBoundingClientRect()

            const containerTop = containerRect.top + window.scrollY
            const containerBottom = containerRect.bottom + window.scrollY

            let avatarTop = window.scrollY - containerTop
            if (avatarTop < 0) avatarTop = 0

            if (window.scrollY + avatarRect.height > containerBottom) {
                avatarTop = containerBottom - containerTop - avatarRect.height
            }

            const containerWidth = containerRect.width
            const avatarWidth = avatarRect.width
            const avatarLeft = (containerWidth - avatarWidth) / 2

            avatar.style.position = 'absolute'
            avatar.style.top = `${avatarTop}px`
            avatar.style.left = `${avatarLeft}px`
        })
    }

    window.addEventListener('scroll', updateAvatarPositions)
    window.addEventListener('resize', updateAvatarPositions)

    updateAvatarPositions()
})
