$(function() {
	$('.visual-slide').slick({
		autoplay: true,
		adaptiveHeight: true,
		dots: true,
		arrows:false,
		pauseOnDotsHover: false,
		pauseOnHover: false,
		speed: 600,
		centerMode: false,
		autoplaySpeed: 4000,
		fade: true,
		infinite: true, //반복
		cssEase: 'linear',
		slidesToShow: 1,
		slidesToScroll: 1,
	});
	
	/*
	$('.msec-member').find('.login-btn').click(function(){
		
	});

	$('.msec-member').find('.logout-btn').click(function(){
		
	});
	*/
});