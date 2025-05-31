'use strict';

//todo: Reaching out Each Blogs links -
const blogLinks = [
    'https://www.notion.so/DSA-in-Web-Development-1cd90b7f75b1802d9679d532ea348ad3',
    'https://www.notion.so/AI-Full-stack-Developer-Roadmap-2025-5acbe10535fe472fb743ee3097261f6d',
    'https://dev.to/raushan_sinha_8efb05c7b1c/future-of-artificial-intelligence-b9',
    'https://www.notion.so/Improving-Your-English-Communication-for-IT-Professionals-16790b7f75b180d4aeadfbb868895416',
    'https://www.notion.so/Importance-of-Responsive-Web-Design-1ea90b7f75b1801da0feeb6c660fd398',
    'https://dev.to/raushan_sinha_8efb05c7b1c/difference-between-html-css-and-javascript-in-frontend-development-3jj5'
];
document.querySelectorAll('.blog-card a').forEach((blogLink, idx) => {
    blogLink.addEventListener('click', (e) => {
        e.preventDefault();
        window.open(blogLinks[idx], '_blank');
    }, false);
});