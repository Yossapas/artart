// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
  
  $('#gallery a').lightBox({
    fixedNavigation:true,
    imageBlank: '/images/lightbox/lightbox-blank.gif',
    imageLoading: '/images/lightbox/lightbox-ico-loading.gif',
	  imageBtnClose: '/images/lightbox/lightbox-btn-close.gif',
	  imageBtnPrev: '/images/lightbox/lightbox-btn-prev.gif',
	  imageBtnNext: '/images/lightbox/lightbox-btn-next.gif'
  });
  
});