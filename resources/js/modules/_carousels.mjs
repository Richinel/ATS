import { tns } from "tiny-slider";

export function referenceSlider() {
    let carousel    = document.querySelector('.js-reference-slider');

    if(!carousel) return;

    let sliderElement = tns({
        container: '.js-reference-slider',
        items: 1,
        controls: true,
        controlsText: ['<', '>'],
        controlsPosition: 'bottom',
        touchDrag: true,
        mouseDrag: true,
        nav: false,
        autoplay: true,
        autoplayTimeout: 10000,
        autoplayButtonOutput: false,
        edgePadding: 75,
        gutter: 75,
        responsive: {
            0: {
                autoHeight: true,
            },
            769: {
                autoHeight: false
            }
        }
    })

    return 'referenceSlider';
}

export function clientSlider() {
    let carousel    = document.querySelector('.js-clients-slider');

    if(!carousel) return;

    let sliderElement = tns({
        container: '.js-clients-slider',
        items: 1,
        controls: false,
        touchDrag: true,
        mouseDrag: true,
        nav: false,
        autoplay: true,
        autoplayTimeout: 7500,
        autoplayButtonOutput: false,
    })

    return 'clientSlider';
}
