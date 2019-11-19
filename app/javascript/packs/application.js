// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

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


function changeTab(tabName) {
	document.getElementById("add_new_book").classList.add('tablinks')
	document.getElementById("add_new_book").classList.remove('tab_button_active')
	document.getElementById("add_new_author").classList.add('tablinks')
	document.getElementById("add_new_author").classList.remove('tab_button_active')
	document.getElementById("add_new_publications").classList.add('tablinks')
	document.getElementById("add_new_publications").classList.remove('tab_button_active')

	if (tabName == 'book') {
		document.getElementById("add_new_book").classList.remove('tablinks')
		document.getElementById("add_new_book").classList.add('tab_button_active')
	} else if (tabName == 'author') {
		document.getElementById("add_new_author").classList.remove('tablinks')
		document.getElementById("add_new_author").classList.add('tab_button_active')	
	} else if (tabName == 'publications') {
		document.getElementById("add_new_publications").classList.remove('tablinks')
		document.getElementById("add_new_publications").classList.add('tab_button_active')	
	}
}

function hideOtherTabContent() {
	var tabContent = document.getElementsByClassName('tab_content')
	for (var i = 0; i < tabContent.length; i++) {
    	tabContent[i].style.display = 'none';
	}
}

window.onload = function(){
	hideOtherTabContent();
	document.getElementById('add_new_book').onclick = function () {
		changeTab('book');
		hideOtherTabContent();
		document.getElementsByClassName('book')[0].style.display = 'block';
	}

	document.getElementById('add_new_author').onclick = function () {
		changeTab('author');
		hideOtherTabContent();
		document.getElementsByClassName('author')[0].style.display = 'block';
	}

	document.getElementById('add_new_publications').onclick = function () {
		changeTab('publications');
		hideOtherTabContent();
	}

	document.getElementById('new_author').onclick = function () {
		location.href = '/authors/new'
	}

	document.getElementById('show_author').onclick = function () {
		location.href = '/author/new'
	}
	
}