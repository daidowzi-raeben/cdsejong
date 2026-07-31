let interact = [];
interact[0] = [{
    show:0, hide:0, pause:0,
    top:0, left:0, width:100, height:30,
    onclick:function () {
        vid.pause();
        vid.currentTime = $(this).data('hide');

        window.open('');
    }
}];
interact[2] = [{
    show:6, hide:7, pause:-1,
    top:486, left:786, width:102, height:32,
    onclick:function () {
        vid.pause();

        $tmp = $("<div style='width:100%;height:100%'>").css({position:'absolute',background:'url(img/t.png)'});
        $btn = $("<p>").css({position:'absolute',top:124,left:825,width:23,height:23,background:'url(../common/img/toolbar/btn_close.png)'}).on('click',function(){$(this).parent().remove()});
        $("#content-wrapper").append($tmp.append($btn));
    }
}];

const currInteract = interact[thisNum];

