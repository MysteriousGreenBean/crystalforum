document.addEventListener('DOMContentLoaded', function () {
    const AVATAR_OFFSET = 60 // offset to push avatar lower, adjust as needed

    function updateAvatarPositions() {
        const posts = document.querySelectorAll('.post_author')

        posts.forEach((post) => {
            const avatar = post.querySelector('.author_avatar')

            if (!avatar) return

            const containerRect = post.getBoundingClientRect()
            const avatarRect = avatar.getBoundingClientRect()

            const containerTop = containerRect.top + window.scrollY
            const containerBottom = containerRect.bottom + window.scrollY

            // Add offset here
            let avatarTop = window.scrollY - containerTop + AVATAR_OFFSET
            if (avatarTop < 0) avatarTop = 0

            if (
                window.scrollY + avatarRect.height + AVATAR_OFFSET >
                containerBottom
            ) {
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
