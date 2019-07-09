function changeImg() {
    var imgSrc = $("#imgObj");
    var src = imgSrc.attr("src");
    imgSrc.attr("src", chgUrl(src));
}
//时间戳
//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
function chgUrl(url) {
    var timestamp = (new Date()).valueOf();
    url = url.substring(0, 17);
    if ((url.indexOf("&") >= 0)) {
        url = url + "×tamp=" + timestamp;
    } else {
        url = url + "?timestamp=" + timestamp;
    }
    return url;
}
//用 jQuery 实现表单验证
$(function(){
    var ok1=false;
    var ok2=false;
    var ok3=false;

    // 验证昵称
    $('input[name="nickName"]').focus(function(){
        $(this).next().text('昵称不能为空').removeClass('state1').addClass('state2');
    }).blur(function(){
        if($(this).val().length >= 3 && $(this).val().length <=12 && $(this).val()!=''){
            $(this).next().text('输入成功').removeClass('state1').addClass('state4');
            ok1=true;
        }else{
            $(this).next().text('昵称应该为3-20位之间').removeClass('state1').addClass('state3');
        }

    });
    // 验证用户名
    $('input[name="username"]').focus(function(){
        $(this).next().text('手机号不能为空').removeClass('state1').addClass('state2');
    }).blur(function(){
        if($(this).val().length ==11 && $(this).val()!=''){
            $(this).next().text('输入成功').removeClass('state1').addClass('state4');
            ok1=true;
        }else{
            $(this).next().text('手机号应该为11位').removeClass('state1').addClass('state3');
        }

    });

    //验证密码
    $('input[name="password"]').focus(function(){
        $(this).next().text('密码不能为空').removeClass('state1').addClass('state2');
    }).blur(function(){
        if($(this).val().length >= 6 && $(this).val().length <=20 && $(this).val()!=''){
            $(this).next().text('输入成功').removeClass('state1').addClass('state4');
            ok2=true;
        }else{
            $(this).next().text('密码应该为6-20位之间').removeClass('state1').addClass('state3');
        }

    });
});    //提交按钮,所有验证通过方可提交

$('.regSubmit').click(function(){
    if(ok1 && ok2 && ok3){
        $('form').submit();
    }else{
        return false;
    }
});