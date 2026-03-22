// MOZILA chrome safari opera ===> setup start
function reload_install() {
    var mime_type = "application/html_note_50";
    var PLUGIN = null;
    navigator.plugins.refresh();
    try { PLUGIN = navigator.mimeTypes[mime_type]; } catch (e) { PLUGIN = null; }
    if (PLUGIN != null) {
        location.reload(); // page reload();
    } else {
        setTimeout(function () {
            reload_install();
        }, 1000);
    }
}
// MOZILA chrome safari opera === setup end


function note_object(key, server_ip, server_port, server_url) {
    var version = "5,0,0,50";
    // MOZILA chrome safari opera check == start
    var mime_type = "application/html_note_50";
    var ua = navigator.userAgent;
    ua = ua.toLowerCase();
    // MOZILA chrome safari opera check == end

    if ((navigator.userAgent.match(/GECKO/i) || navigator.userAgent.match(/opera/i)) && navigator.userAgent.match(/Windows/i)) {
        // MOZILA === start
        var PLUGIN = null;
        navigator.plugins.refresh();
        try { PLUGIN = navigator.mimeTypes[mime_type]; } catch (e) { PLUGIN = null; }
        if (PLUGIN != null) {
            //alert(1);
        } else {
            alert('웹 Note가 설치되지 않았습니다.\n설치(note.exe)프로그램 설치후,이용하세요.');
            window.open('http://study.hunet.co.kr/Study/Contents/note.exe', '', '');
            setTimeout(function () {
                reload_install();
            }, 1000);
        }
        document.writeln('<embed id="obj" name="obj" style="padding: 0px;margin: 0px;" server_ip="' + server_ip + '" server_port="' + server_port + '" server_url="' + server_url + '" key="' + key + '" type="' + mime_type + '" width=0 height=0></embed>');
        // MOZILA === end
    } else {
        // IE  === start
        document.writeln("<OBJECT ID='obj' width='0' height='0' ");
        document.writeln("CLASSID='CLSID:25DDAD48-8CCE-49EF-998E-0607E92E9620'");

        if (ua.indexOf("win64") >= 0 || ua.indexOf("x64") >= 0) {
            document.writeln("CODEBASE='note64.cab#version=" + version + "'>");
        } else {
            document.writeln("CODEBASE='note32.cab#version=" + version + "'>");
        }

        document.writeln("<PARAM name='key' value='" + key + "'>");
        document.writeln("<PARAM name='server_ip' value='" + server_ip + "'>");
        document.writeln("<PARAM name='server_port' value='" + server_port + "'>");
        document.writeln("<PARAM name='server_url' value='" + server_url + "'>");
        document.writeln("</OBJECT>");
        // IE  === end
    }

}