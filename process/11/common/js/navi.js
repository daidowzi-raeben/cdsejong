

pageinfo=new Array(2);

pageinfo[1]=new Array();
pageinfo[2]=new Array();


//01
pageinfo[1][1]=new Array("010101","001","01/01_01.html");
pageinfo[1][2]=new Array("010201","002","01/01_02.html");
pageinfo[1][3]=new Array("010301","003","01/01_03.html");
pageinfo[1][4]=new Array("010401","004","01/01_04.html");
pageinfo[1][5]=new Array("010501","005","01/01_05.html");
pageinfo[1][6]=new Array("010601","006","01/01_06.html");
pageinfo[1][7]=new Array("010701","007","01/01_07.html");

//02
pageinfo[2][1]=new Array("020101","001","02/02_01.html");
pageinfo[2][2]=new Array("020201","002","02/02_02.html");
pageinfo[2][3]=new Array("020301","003","02/02_03.html");
pageinfo[2][4]=new Array("020401","004","02/02_04.html");
pageinfo[2][5]=new Array("020501","005","02/02_05.html");
pageinfo[2][6]=new Array("020601","006","02/02_06.html");
pageinfo[2][7]=new Array("020701","007","02/02_07.html");



/*************************************************************************************************/ 
// 이동 함수
/*************************************************************************************************/ 

var makeName = ".html";
var nowIndex = document.URL.split(makeName)[0];
var Dirnumber = Number(nowIndex.substring(nowIndex.length-8,nowIndex.length-6));
var hpage = Number(nowIndex.substring(nowIndex.length-2,nowIndex.length));

function movepage(c,p) {
  c = Number(Dirnumber);
//  p = Number(hpage);
	if (!pageinfo[c][p][2]) {
		alert("존재하지 않는 페이지입니다.");
	}
	else {
		location.href="../"+pageinfo[c][p][2];
	}
	
}

function nextpage(c,p) {
  c = Number(Dirnumber);
  p = Number(hpage);
//  alert("nextpage   c : "+c+"   p : "+p);   
	if ( p >= ( pageinfo[c].length-1)  ) {
		if ( c >= ( pageinfo.length - 1 ) ) {
			alert("모든 과정을 마치셨습니다");
		}
		else {
			alert("이번 차시의 학습이 끝났습니다. 다음 차시로 진행합니다.");
			//setClass 호출
			parent.setClass(11, 20, 20);
			location.href="../"+pageinfo[(c+1)][1][2];
		}
	}
	else {	
		location.href="../"+pageinfo[c][(p+1)][2];
	}
}

function prevpage(c,p) {
  c = Number(Dirnumber);
  p = Number(hpage);
  //alert("prevpage   c : "+c+"   p : "+p); 
	if ( ( p-1)  <= 0 ) {
		if (c==1) {
			alert("첫 페이지 입니다.");
		}
		else {
			alert("이전 차시로 이동합니다.");
			location.href="../"+pageinfo[(c-1)][ (pageinfo[c-1].length-1)][2];
		}
	}
	else {
		location.href="../"+pageinfo[c][(p-1)][2];
	}
}
/*************************************************************************************************/ 


/*************************************************************************************************/ 
// 의견쓰기 함수
///////////////////////////////////////////////////////////////////////////////////////


function on_opinionlist (opinionNo)
{		
	viewOpinion(opinionNo); 
	//alert("DB연동부분입니다~") 	
}

function on_opinion (opinionNo, title, contents)
{ 
	writeOpinion(opinionNo, contents);
}         


/*************************************************************************************************/ 