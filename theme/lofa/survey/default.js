$(function(){
	var num = $(".num").text();
	if(num.substring(0,(num.length-1)) == 0) {
		num = "0%";
	} else if(num.substring(0,(num.length-1)) < 10) {
		num = "10%";
	}
	$(".graph").css("background-size",num);

    $("form").submit(function(){
		var FileName = document.URL.substring(document.URL.lastIndexOf("/") + 1, document.URL.lastIndexOf("/") + 20).split(".");
		var FileName = FileName[0].split("_");

		if(FileName[0] == "poll") {
			if(FileName[1] == "01") {
				var q1 = $("input:radio[name='q1']").is(":checked");
				var q2 = $("input:radio[name='q2']").is(":checked");
				var q3 = $("input:radio[name='q3']").is(":checked");
				var q4 = $("input:radio[name='q4']").is(":checked");
				var q5 = $("input:radio[name='q5']").is(":checked");

				if(!q1 || !q2 || !q3 || !q4 || !q5) {
					alert('미입력 항목이 있습니다.');
					return false;
				}
			}

			if(FileName[1] == "02") {
				for (var i = 6; i <= 10; i++) {
					var q1 = $("input:radio[name='q" + i + "']").is(":checked");

					if(!q1) {
						alert('미입력 항목이 있습니다.');
						return false;
					}
				}
			}

			// if(FileName[1] == "22") {
			// 	var department = $("#department").val();

			// 	if(!department) {
			// 		alert('조직을 선택 하세요.');
			// 		return false;
			// 	}
			// }

			for (var i = 3; i <= 22; i++) {
				if(i < 10) {
					var page = "0" + i;
				} else {
					var page = i;
				}

				if(FileName[1] == page) {
					var q1 = $("input:radio[name='sq" + (i - 2) +"']").is(":checked");

					if(!q1) {
						alert('미입력 항목이 있습니다.');
						return false;
					}
				}
			}
		}
    });
});