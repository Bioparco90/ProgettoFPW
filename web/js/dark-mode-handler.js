const toggle = $('#toggle');

// Check if the user has a saved preference for dark mode
const isDarkMode = localStorage.getItem('dark-mode');

// If the user has a saved preference and it is set to dark mode,
// add the `dark-mode` class to the `<body>` element to enable dark mode
if (isDarkMode === 'true') {
  $('body').addClass('dark-mode');
}

// When the toggle is clicked, toggle the dark mode class on the body
// and save the preference to local storage
toggle.click(() => {
  $('body').toggleClass('dark-mode');
  localStorage.setItem('dark-mode', $('body').hasClass('dark-mode'));
});
