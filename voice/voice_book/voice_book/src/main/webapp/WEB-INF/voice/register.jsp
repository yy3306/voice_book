<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>注册珠穆朗玛</title>
   <link rel="stylesheet" href="/book/assets/css/register.css"> 
	 <script src="/book/assets/js/jquery-3.1.1.js"></script> 
    <script type="text/javascript" src="/book/assets/js/register.js"> </script>
</head>
<body>
    <div class="reform">
        <div class="regiWrap">
            <p class="regTit-tc">注册珠穆朗玛</p>
            <div class="regiBox">
                <div class="regiLogo">
                    <div class="whiteLogo"></div>
                </div>
                <div class="regFormBox">
                    <form action="add" method="post" class="regForm" id="regForm">
                          <div class="regIcLt">
                            <input type="text" id="nickName" name="nickName"
                                class="regInput" placeholder="请输入昵称&nbsp;&nbsp;20个字符以内">
                            <i class="icon-nickname"></i>
                            <div class="reg-nickname"></div>
                        </div>
                        <div class="regIcLt-inl-b">
                            <div class="regSelBox">
                                <span class="regSelTxt">中国</span>
                                <span class="regSelBtn">+86</span>
                            </div>
                        </div>
                        <div class="regIcLt-inl-bfr">
                            <input type="text"  name="username" class="regInput-brf"
                                   id="userAccountPhone"
                            placeholder="请输入您的手机号" >
                            <i class="icon-username"></i>
                        </div>
                        <div class="regIcLt">
                            <input type="password" name="password" class="regInput"
                            placeholder="需要6-20位数字、字母或符号组成，至少两种" >
                            <i class="icon-password"></i>
                            <div class="reg-password"></div>
                        </div>

                        <div class="regIcLt">
                            <input type="text" name="code" class="regInput-r"
                                   placeholder="请输入验证码">
                            <div class="regTxtBtn">
                                <img id="imgObj" alt="验证码" src="code.html" />
                                <a href="#" onclick="changeImg()">换一张</a>
                            </div>
                          <!--  <input type="button" class="btn regTxtBtn" id="resend_code_btn" value="获取验证码"
                                       onclick="sendMessage()" >-->
                        </div>
                        <div class="regAgreeWrap">
                            <input type="checkbox" class="icon-checkbox" id="agreeDealPhone" checked>
                            <label for="agreeDealPhone" class="regCheckLab">
                                <span class="checkIcon"></span>
                                &nbsp;&nbsp;我已看过并同意
                            </label>
                            <a id="deal_info_phone" href="../book/register-rule" target="_blank">《登录珠穆朗玛网络服务使用协议》</a>
                        </div>
                            <a class="regSubmit" id="login_btn_phone" onclick="document:regForm.submit()">提交注册</a>
							
                    </form>
                </div>
            </div>
            <p class="tc">
                <span class="mgr-20">已有账号？</span>
                <a href="../book/tologin" class="link5">立即登录</a>
            </p>
        </div>
    </div>
</body>
</html>