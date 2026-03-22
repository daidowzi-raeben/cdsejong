//동영상 초기화
_this.$content = $("body").children(".content");
_this.$videoDOM = document.createElement("video");
_this.$videoDOM.src = _this.$moviePath;
_this.$videoDOM.classList.add('video1');
_this.$videoDOM.setAttribute('autoplay','true');
//_this.$videoDOM.setAttribute('muted','true');
_this.$videoDOM.setAttribute('playsinline',true);
_this.$videoDOM.setAttribute('webkit-playsinline',true);
_this.$content.get(0).appendChild(_this.$videoDOM);
