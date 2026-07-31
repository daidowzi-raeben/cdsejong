<?php
include_once('./_common.php');
include_once("./lib/outlogin.lib.php");
?>

<style>
    @charset "utf-8";

    /* 공통 */
    .check_box input[type="checkbox"] {
        display: none;
    }

    .check_box input[type="checkbox"]+label {
        position: relative;
        font-size: 15px;
        margin-left: 30px
    }

    .check_box input[type="checkbox"]+label:before {
        content: "";
        display: block;
        background: url('./img/check.svg') no-repeat center;
        background-size: 100%;
        position: absolute;
        width: 23px;
        height: 23px;
        border: solid 1px #dddddd;
        border-radius: 50%;
        top: -3px;
        left: -30px
    }

    .check_box input[type="checkbox"]:checked+label:before {
        border-color: #1d73f3;
        background-image: url('./img/check_on.svg')
    }

    .btn_submit {
        width: calc(100% - 60px);
        height: 60px;
        background: #1d73f3;
        border: solid 1px #1d73f3;
        color: #ffffff;
        margin: 30px 0 20px;
        font-size: 18px;
        transition: all .2s
    }

    /* 로그인 */
    .mem05_skin {
        width: 320px;
        background: #ffffff;
        padding-bottom: 50px;
        margin: 80px auto 0
    }

    .mem05_skin .logo {
        text-align: center;
        padding: 30px 0
    }

    .mem05_skin .logo img {
        height: 90px
    }

    #login_fs {
        text-align: center;
    }

    #login_fs .frm_input {
        width: calc(100% - 60px);
        height: 50px;
        border: solid 1px transparent;
        background: #f6f6f6;
        padding-left: 25px;
        font-size: 16px;
    }

    #login_fs .frm_input:focus {
        border: solid 1px #1d73f3
    }

    #login_fs .frm_input::placeholder {
        color: #999999
    }

    #login_fs #login_pw {
        margin-top: 15px
    }

    #login_fs .info_wrap {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-top: 20px;
        padding: 0 30px
    }

    #login_fs .info_wrap #lost_password a {
        font-size: 14px;
        color: #999999;
        position: relative
    }

    #login_fs .info_wrap #lost_password #join:hover {
        color: #1d73f3
    }

    .join {
        display: flex;
        justify-content: center;
        color: #999999;
        font-size: 15px
    }

    .join a {
        margin-left: 10px;
        transition: all .2s
    }

    .join a:hover {
        color: #1d73f3
    }

    .sns_login {
        margin-top: 60px;
        text-align: center
    }

    .sns_login .sns_login_title {
        position: relative;
    }

    .sns_login .sns_login_title:before {
        content: '';
        display: block;
        width: calc(100% - 60px);
        height: 1px;
        background: #dddddd;
        position: absolute;
        top: 50%;
        left: 30px;
        z-index: -1
    }

    .sns_login span {
        background: #ffffff;
        padding: 10px 30px;
        font-size: 14px;
        color: #999999
    }

    .sns_login .sns_list {
        margin-top: 30px;
        display: flex;
        align-items: center;
        justify-content: center
    }

    .sns_login .sns_list li+li {
        margin-left: 20px;
    }

    .sns_login .sns_list li a {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 58px;
        height: 58px;
        border-radius: 50%;
    }

    .sns_login .sns_list li a.google_login {
        border: solid 1px #dddddd
    }

    .sns_login .sns_list li a.facebook_login {
        background-color: #1877f2
    }

    .sns_login .sns_list li a.naver_login {
        background-color: #00c60c
    }

    .sns_login .sns_list li a.kakao_login {
        background-color: #fee500
    }

    .sns_login .sns_list li a img {
        width: 38px;
    }
</style>
<?php
$aa = '';
// if (date("ymd") == '240908') {
//     $aa = '10';
// } else {
//     $aa = '12';
// }



?>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
<div style="position:absolute;height:493px; top:50%; margin-top:-300px; left:50%; margin-left:-155px;">
    <div style="text-align:center; margin-top:20px;">
        <img src="../img/bng_logo.png">
    </div>



    <div id="" class="mem05_skin">
        <div class="inner">

            <form name="flogin" action="/bbs/login_check.php" onsubmit="return flogin_submit(this);" method="post"
                autocomplete="off">
                <input type="hidden" name="url" value="/Edu/class.php?lssn=89">

                <fieldset id="login_fs">
                    <div>
                        <legend style="margin:20px;">회원로그인</legend>
                        <!-- <label for="login_id" class="sound_only">회원아이디<strong class="sound_only"> 필수</strong></label> -->
                        <input type="text" name="mb_id" id="login_id" required class="frm_input required" size="20"
                            maxLength="20" placeholder="사번을 입력하세요">
                    </div>
                    <div>
                        <!-- <label for="login_pw" class="sound_only">비밀번호<strong class="sound_only"> 필수</strong></label> -->
                        <input type="password" name="mb_password" id="login_pw" required class="frm_input required"
                            size="20" maxLength="20" placeholder="사번을 입력하세요">
                    </div>


                    <button type="submit" class="btn_submit family_medium">로그인</button>
                </fieldset>
            </form>

        </div>
    </div>
</div>