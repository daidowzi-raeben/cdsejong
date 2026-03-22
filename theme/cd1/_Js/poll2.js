function get_query(){
	var url = document.location.href;
	var qsChk = url.indexOf('?');
	var qs = url.substring(url.indexOf('?') + 1).split('&');
	var oldParams = [];


	for(var i = 0; i < qs.length; i++){
		qs[i] = qs[i].split('=');

		var _param = {
			name : qs[i][0],
			value : decodeURIComponent(qs[i][1])
		}
		oldParams.push(_param);
	}

	if(qsChk != -1){
		choice(oldParams)
		allStr = makeParam(oldParams);
	}
}

function choice(params){

	console.log(params)

	params.forEach(function (item, index){
		$('input[name=' + item.name + '][value=' + item.value + ']').prop('checked',true)
	});
}

function allStrChk(allStr){

	if(allStr == ""){
		return true;
	}else{
		return false;
	}
}

function makeParam(params, type){

	var _str = ""

	params.forEach(function (item, index){

		console.log(item)


		if(index == 0){

			if(type == true){

				if(allStrChk(allStr)){

					_str += "?";
					console.log(_str)

				}else{
					console.log("2")
					_str += "&";
				}

			}else{
				_str += "?";
			}

		}else{

			_str += "&";
		}

		_str += item.name + "=" + item.value

		console.log(_str)
	})

	return _str;

}