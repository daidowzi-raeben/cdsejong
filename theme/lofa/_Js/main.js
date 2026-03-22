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
	

	$('.msec-member').find('.login-btn').click(function(){
		$('.login-input').hide();
		$('.logout-input').show();
		$('.login-other').find('.login').hide();
		$('.login-other').find('.logout').css({'display':'inline-block'});
	});

	$('.msec-member').find('.logout-btn').click(function(){
		$('.logout-input').hide();
		$('.login-input').show();
		$('.login-other').find('.logout').hide();
		$('.login-other').find('.login').css({'display':'inline-block'});
	});
});