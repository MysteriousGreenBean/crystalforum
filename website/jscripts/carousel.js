// Carousel
document.addEventListener('DOMContentLoaded', function () {
    const images = document.querySelectorAll('.carousel-image')
    const indicatorsContainer = document.querySelector('.carousel-indicators')
    const nextBtn = document.querySelector('.next-btn')
    const prevBtn = document.querySelector('.prev-btn')
    let currentIndex = 0

    function showSlide(index) {
        images.forEach((slide) => slide.classList.remove('active'))
        images[index].classList.add('active')
        updateIndicators()
    }

    function updateIndicators() {
        indicatorsContainer.innerHTML = ''
        images.forEach((_, i) => {
            const dot = document.createElement('span')
            dot.classList.add('dot')
            if (i === currentIndex) dot.classList.add('active')
            dot.addEventListener('click', () => {
                currentIndex = i
                showSlide(currentIndex)
            })
            indicatorsContainer.appendChild(dot)
        })
    }

    nextBtn.addEventListener('click', () => {
        currentIndex = (currentIndex + 1) % images.length
        showSlide(currentIndex)
    })

    prevBtn.addEventListener('click', () => {
        currentIndex = (currentIndex - 1 + images.length) % images.length
        showSlide(currentIndex)
    })

    showSlide(currentIndex)
})

// Content list
document.addEventListener('click', function (e) {
    const icon = e.target

    if (
        icon.classList.contains('opener') &&
        (icon.classList.contains('cp-minus') ||
            icon.classList.contains('cp-plus'))
    ) {
        const content = document.querySelector('.content_list')

        if (icon.classList.contains('cp-minus')) {
            icon.classList.remove('cp-minus')
            icon.classList.add('cp-plus')
        } else {
            icon.classList.remove('cp-plus')
            icon.classList.add('cp-minus')
        }

        // Toggle visibility using the hidden class
        if (content) {
            content.classList.toggle('hidden')
        }
    }
})
