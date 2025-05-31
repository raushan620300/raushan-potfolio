'use strict';

//todo: Projects Codes link -
const projectsCodesLink = [
    'https://github.com/raushan620300/virtuoX',
    'https://github.com/raushan620300/Sendify',
    'https://github.com/raushan620300/contact-form-react'
];

document.querySelectorAll('.project-links .project-link').forEach((link, idx) => {
    link.addEventListener('click', (e) => {
        e.preventDefault();
        window.open(projectsCodesLink[idx], '_blank');
    }, false);
});

//todo: Projects Live Demo -
const liveDemo = [
    'https://virtuo-x.vercel.app/',
    'https://sendify-smoky.vercel.app/',
    'https://contact-form-indol-one.vercel.app/'
];

document.querySelectorAll('.project-links .project-demo').forEach((link, idx) => {
    link.addEventListener('click', (e) => {
        e.preventDefault();
        window.open(liveDemo[idx], '_blank');
    }, false);
});