var buttonclick_key;
var total;
var nextpage;

/*****************************************************/ 
// 페이지 이동
/*****************************************************/
function next(n){
	var n ;
	total = 9;

	if (n < total ){
		buttonclick_key = true;
		n = n + 1;
		//alert("next")

			if (n < 10){
				url = "00" + n + ".html";
			}else{
				url = "0"+n+".html";
			}

			
			location.href = url;

	}else{
			alert(" 마지막 페이지 입니다. ");
	}
		
}

function prev(n){
	var n;
	if (n > 1 ){
		buttonclick_key = true;
		n = eval(n - 1);
		//alert("prev")

		if (n < 10){
				url = "00" + n + ".html";
			}else{
				url = "0"+n+".html";
			}
			location.href = url;
		
	}else{
			alert(" 첫 페이지 입니다. ");
	}
}

/*****************************************************/ 
// 페이지 이동
/*****************************************************/
function Menu_num (n){
	//alert("Move")
	if (n < 10){
		url = "00" + n + ".html";
	}else{
		url = "0"+n+".html";
		}
	location.href = url;
}
//페이지
function page_num(n){
	document.fvar.setVariable("frame_num", n);
}

// 차시이동
function next_chp(n){
		urlChap = "../"+ n +"/index.htm"
		location.href = urlChap;
}

//미디어서버 URL 수정
