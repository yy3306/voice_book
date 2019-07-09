//用 jQuery 实现表单验证
$(function(){
    var ok1=false;
    var ok2=false;

    // 验证用户名
    $('input[name="account"]').focus(function(){
        $(this).next().text('账号不能为空').removeClass('state1').addClass('state2');
    }).blur(function(){
        if($(this).val().length ==11 && $(this).val()!=''){
            $(this).next().text('输入成功').removeClass('state1').addClass('state4');
            ok1=true;
        }else{
            $(this).next().text('账号应该为11位').removeClass('state1').addClass('state3');
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
    if(ok1 && ok2 ){
        $('form').submit();
    }else{
        return false;
    }
});