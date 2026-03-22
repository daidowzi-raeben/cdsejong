function sliderStart(maxNum){
	if(mobileCheck){
		//$("#vol_slider").hide();
		//$(".vol_control-slider").hide();
		$("#sliderArea").show();
	}else{
		// pc에서만 볼륨 컨트롤러 활성화
		//$("#vol_slider").show();
		//$(".vol_control-slider").show();
		$("#sliderArea").hide();
	}
	
	$("#sliderArea").bind('mousedown touchstart', function(e) {
		e.preventDefault();

		sliderDrag = true;
		switch(controlMode){
			case "video":
				videoPause();
			break;

			case "audio":
				AudioPause();
			break;
		}
		
		var sliderAreaW = $(this).width();
		var sliderArea_x = parseInt($(this).css("left"));
		
		var parentOffset = $(this).parent().offset();
		var relX;

		if(mobileCheck){
			relX = e.originalEvent.touches[0].pageX - parentOffset.left;
		}else{
			relX = e.pageX - parentOffset.left;
		}
		
		var min = relX - (sliderArea_x * ContainerScaleValue);
		var max = (sliderAreaW*ContainerScaleValue);
		if (min < 0) min = 0;
		if (min >= max) min = max;
					
		var per = (min/max)*1000;
		$('#slider').slider("value", Math.floor(per));
		
		// mouseup outside
		document.addEventListener("mouseup", function handleMouseDown() {
		  document.removeEventListener("mouseup", handleMouseDown);
		  $("#sliderArea").mouseup();
		});

	});
	

	$("#sliderArea").bind('mouseup touchend', function(e) {
		sliderDrag = false;

		switch(controlMode){
			case "video":
				videoSeeking();
				setTimeout(function() {
					videoPlay();
				}, 500);
			break;

			case "audio":
				AudioSeeking();
				setTimeout(function() {
					AudioPlay();
				}, 10);
			break;
		}
	});

	
	$("#sliderArea").bind('mousemove touchmove', function(e) {
		//console.log('#sliderArea : '+event.pageX+" / "+event.screenX);
		//var parentOffset = $(this).parent().offset(); 
	   //or $(this).offset(); if you really just want the current element's offset
	   //var relX = e.pageX - parentOffset.left;
	   //var relX = e.pageX - (parentOffset.left*ctnScaleW);
	   //var relY = e.pageY - parentOffset.top;
	   //console.log( relX - (205 * ctnScaleW)+" / "+ (480*ctnScaleW) );
		
		
		if(sliderDrag){
			var sliderAreaW = $(this).width();
			var sliderArea_x = parseInt($(this).css("left"));

			var parentOffset = $(this).parent().offset();
			var relX;

			if(mobileCheck){
				relX = e.originalEvent.touches[0].pageX - parentOffset.left;
			}else{
				relX = e.pageX - parentOffset.left;
			}
			
			var min = relX - (sliderArea_x * ContainerScaleValue);
			var max = (sliderAreaW*ContainerScaleValue);
			if (min < 0) min = 0;
			if (min >= max) min = max;
						
			var per = (min/max)*1000;
			$('#slider').slider("value", Math.floor(per));
			//console.log("left :"+parentOffset.left);
			//console.log($(this).width()+" / "+$(this).offset().left+" / "+parseInt($(this).css("left")));
		}

	});

	
	
	$("#slider").slider({
		create: function() {
			disableKeydown();
		},
		
		value: 1,
		min: 1,
		max: maxNum,
		animate: false,
		range: "min",

		start: function(event, ui) {
			sliderDrag = true;
			
			switch(controlMode){
				case "video":
					videoPause();
				break;

				case "audio":
					AudioPause();
				break;
			}
			
		},

		slide: function(event, ui) {
			sliderDrag = true;
			
			switch(controlMode){
				case "video":
					videoSeeking();
				break;

				case "audio":
					AudioSeeking();
				break;
			}
			
		},

		stop: function(event, ui) {
			sliderDrag = false;
			
			switch(controlMode){
				case "video":
					videoSeeking();
					setTimeout(function() {
						videoPlay();
					}, 500);
				break;

				case "audio":
					AudioSeeking();
					setTimeout(function() {
						AudioPlay();
					}, 10);
				break;
			}
				
		}
		
	});
	

	// vol
		
	var vol;
	$("#vol_slider").slider({
		value: 1,
		min: 0,
		max: 100,
		animate: false,
		range: "min",

		start: function(event, ui) {
			vol_sliderDrag = true;
			volumeNum = $(this).slider("option","value") / 100;

			switch(controlMode){
				case "video":						
					volumeVideo();
				break;

				case "audio":
					volumeAudio();
				break;
			}
			
		},

		slide: function(event, ui) {
			vol_sliderDrag = true;
			volumeNum = $(this).slider("option","value") / 100;

			switch(controlMode){
				case "video":		
					volumeVideo();
				break;

				case "audio":
					volumeAudio();
				break;
			}
			
		},

		stop: function(event, ui) {
			volumeNum = $(this).slider("option","value") / 100;
			
			switch(controlMode){
				case "video":
					volumeVideo();
				break;

				case "audio":
					volumeAudio();
				break;
			}
			vol_sliderDrag = false;
		}
	});

	
}

function disableKeydown() {
  $(".ui-slider-handle").unbind('keydown');
}

function inputSliderBarBG(){
	
	// input range

	var val = ($("#myRange").val() - $("#myRange").attr('min')) / ($("#myRange").attr('max') - $("#myRange").attr('min'));
		
	$('<style>.slider::-webkit-slider-runnable-track { background-image: '+
	'-webkit-gradient(linear, left top, right top, color-stop('+val+', #df7164), color-stop('+val+', #e8e8e8));'+
	'}<style/>').appendTo('head');

	/*
	var val = ($("#myRange").val() - $("#myRange").attr('min')) / ($("#myRange").attr('max') - $("#myRange").attr('min'));
	$("#myRange").css('background-image',
		'-webkit-gradient(linear, left top, right top, '
		+ 'color-stop(' + val + ', #DE6425), '
		+ 'color-stop(' + val + ', #e8e8e8)'
		+ ')'
	);
	*/
	
	/*
	background-image: -moz-linear-gradient(left center,
        #DF7164 0%, #DF7164 15%,
        #F5D0CC 15%, #F5D0CC 100%);
	*/

}