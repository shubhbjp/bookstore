// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require_self
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

window.onload = function () {
	var search_button = document.getElementById('search_button');
    if (search_button) {
    search_button.onclick = function () {
      var xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
          window.location.href = '/search?key=' + document.getElementById('search').value.trim()
        }
      };
      xhr.open('GET', '/search?key=' + document.getElementById('search').value.trim());
      xhr.send('');
    };
  }
};