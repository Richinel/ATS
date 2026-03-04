// This is all you.
import '../scss/app.scss';
import {language, menuButton} from "./modules/_header.mjs";
import {clientSlider, referenceSlider} from "./modules/_carousels.mjs";

document.addEventListener('DOMContentLoaded', () => {
    language();
    referenceSlider();
    clientSlider();
    menuButton();
})
