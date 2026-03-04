export function language() {

    let languageSwitch      = document.querySelector('.js-lang-select');
    let languages                    = document.querySelectorAll('.js-lang-item');
    let languagesList           = document.querySelector('.js-lang-dropdown');

    if(!languageSwitch) return;

    // Toggle the right language on load.
    if(!localStorage.getItem('language')) {
        localStorage.setItem('language', 'nl');
    }

    let language = localStorage.getItem('language');

    languages.forEach((lang) => {
        let langId      = lang.getAttribute('data-language');

        if(langId === language) {
            lang.classList.add('is-active');
        }

        // Change the language click event.
        lang.addEventListener('click', () => {
            localStorage.setItem('language', langId);
        });
    });

    // Click event for the dropdown.
    languageSwitch.addEventListener('click', (e) => {
        e.preventDefault();

        languageSwitch.classList.toggle('is-active');
        languagesList.classList.toggle('is-active');
    })

    return 'language';
}

export function menuButton() {

    let menuBtn     = document.querySelector('.js-menu-button');
    let menuBtnIcons         = menuBtn.querySelectorAll('span');
    let menu                = document.querySelector('.js-mobile-menu');

    if(!menu) return;

    menuBtn.addEventListener('click', () => {
        menu.classList.toggle('is-active');

        menuBtnIcons.forEach(icon => icon.classList.toggle('d-none'));
    })

    return 'menuButton';
}
