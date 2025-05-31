'use strict';

document.addEventListener('DOMContentLoaded', () => {
    const contactForm = document.querySelector('#contactForm');
    const formResponse = document.querySelector('#formResponse');

    //todo: Contact Form Submit-
    contactForm.addEventListener('submit', async (e) => {
        e.preventDefault();
        const name = document.querySelector('#name').value.trim();
        const email = document.querySelector('#email').value.trim();
        const subject = document.querySelector('#subject').value.trim();
        const message = document.querySelector('#message').value.trim();

        //? check if input isn't filled -
        if (!name || !email || !subject || !message) {
            alert('Please Fill out the blank [ Input ] fields!');
            return; // Stop execution if any field is empty
        }

        // Display sending message
        formResponse.textContent = "Sending your message...";
        formResponse.className = 'form-response';
        formResponse.style.display = 'block';

        //todo: Send message using an API / Throw Success & Error message -
        try {
            const formData = new FormData(contactForm);
            formData.append('access_key', '5fecc6e9-0eda-423f-ba7a-2ae89e021c61');
            formData.append('from_name', `This message is sent by ${name}`);

            //? Fetching API for sending the messages -
            const response = await fetch('https://api.web3forms.com/submit', {
                method: 'POST',
                body: formData
            });
            
            const result = await response.json();
            console.log("API Response:", result); // Debug log
            
            if (result.success) {
                formResponse.textContent = `Thanks ${name} for your message 😊. I'll reply to you soon!`;
                formResponse.className = 'form-response success';
                formResponse.style.display = 'block';
                contactForm.reset();
            } else {
                throw new Error(result.message || 'Failed to send message!');
            }
        } catch (error) {
            console.error(`Error: ${error}`);
            formResponse.textContent = `Failed to send the message! Please try again. (${error.message})`;
            formResponse.className = 'form-response error';
            formResponse.style.display = 'block';
        }

        //? Hide response message after a delay
        setTimeout(() => {
            formResponse.style.display = 'none';
        }, 5000); // Increased timeout to 5 seconds
    });
});