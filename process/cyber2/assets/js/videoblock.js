
$(document).ready(function () {
	
	var video = $('#Video1').get(0);
	var supposedCurrentTime = 0;
	top.endchk = false;
	top.endstudy = false;
	video.addEventListener('timeupdate', function() {

		if(!top.endchk){
			//fnPlayEnd();
			//if (!video.seeking) {
					supposedCurrentTime = video.currentTime;
			//}
		}
		if(top.endstudy){
				supposedCurrentTime = video.currentTime;

		}
	});

	video.addEventListener('seeking', function() {

	var delta = video.currentTime - supposedCurrentTime;
			console.log(supposedCurrentTime);
		if (Math.abs(delta) > 0.01) {
			//console.log("Seeking is disabled");
			video.currentTime = supposedCurrentTime;
		} else {
			supposedCurrentTime = 0;
			top.endchk = true;

		}
	});
	video.addEventListener('ended', function() {
	  // reset state in order to allow for rewind
		top.endstudy = true;
		supposedCurrentTime = 0;
		video.removeEventListener('seeking');
	});
	
});



