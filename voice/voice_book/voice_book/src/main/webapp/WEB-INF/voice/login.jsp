
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>登录珠穆朗玛</title>
    <link rel="stylesheet" href="/book/assets/css/login.css"> 
    <script src="/book/assets/js/jquery-3.1.1.js"></script> 
    <script type="text/javascript" src="/book/assets/js/login.js"> </script>
</head>
<body >
    <div id="app">
        <div class="reform">
            <div class="regiWrap">
                <p class="regTit tc ">登录珠穆朗玛</p>
                <div class="regiBox">
                    <a href="" class="chang-ways"></a>
                    <div class="regiLogo inl-b">
                        <div class="whiterLogo">
                        </div>
                        <p class="regWayTxt">或者使用第三方登录</p>
                        <div class="regLoginWays">
                            <a href="javascript:;" class="regLogWx">
                                <i class=" icon-weixin"></i>
                            </a>
                            <a href="javascript:;" class="regLogQq">
                                <i class=" icon-ic_qq"></i>
                            </a>
                            <a href="javascript:;" class="regLogWb">
                                <i class=" icon-weibo"></i>
                            </a>
                        </div>
                    </div>
                    <div class="regFormBox inl-b">
                        <form action="login" class="regForm j-loginform" method="post" id="loginForm">
                            <input type="hidden" class="formUri" name="formUri" value="">
                            <input type="hidden" class="tip" name="tip" value="">
                            <div class="regIcLt inl-b j-coutryarea" >
                                <div class="regSelBox regInput inl-b wid-120">
                                    <span class="wid-30 elli inl-b j-selected-name">中国</span>
                                    <span class="regSelBtn" data-code="+86">
                                        <span class="j-selected-code">+86</span>
                                        <i class="iconfont icon-ic_down"></i>
                                    </span>
                                   <!-- <div class="regListBox">
                                        <div class="regSelList ps ">
                                            <ul>
                                                <li>
                                                    <span class="fr regSelNum">+86</span>
                                                    <span>中国</span>
                                                </li>
                                                <li>
                                                    <span class="fr regSelNum">+43</span>
                                                    <span>奥地利</span>
                                                </li>
                                                <li>
                                                    <span class="fr regSelNum">+880</span>
                                                    <span>孟加拉</span>
                                                </li>
                                                <li>
                                                    <span class="fr regSelNum">+55</span>
                                                    <span>巴西</span>
                                                </li>
                                                <li>
                                                    <span class="fr regSelNum">+41</span>
                                                    <span>瑞士</span>
                                                </li>
                                            </ul>
                                            <div class="ps__scrollbar-x-rail" style="left: 0; bottom: 0;">
                                                <div class="ps__scrollbar-x" tabindex="0" style="left: 0; width: 0;"></div>
                                            </div>
                                            <div class="ps__scrollbar-y-rail" style="top: 0; height: 0; right: 0;">
                                                <div class="ps__scrollbar-y" tabindex="0" style="top: -3px; height: 3px;"></div>
                                            </div>
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                             <div class="regIcLt inl-b fr">
                                <input type="text" name="account" id="userAccount" placeholder="请输入您的账号/手机号/邮箱" class="regInput wid-170 pdl-50">
                                <i class="icon-nickname"></i>
                                <div class="account-error" ></div>
                            </div>
                            <div class="regIcLt">
                                <input type="password" name="password" id="userPwd" placeholder="请输入6-20位密码" class="regInput pdl-50 wid-300">
                                <i class="icon-password"></i>
                                <div class="password-error" ></div>
                            </div>
                            <div class="regAgreeWrap">
                                <input type="checkbox" id="xmlyReg" checked="checked" class="icon-checkbox">
                                <label for="xmlyReg" class="regCheckLab">
                                    <span class="checkIcon"></span>记住登录状态</label>
                                <a href="" class="c10 mgl-20">找回密码</a>

                            </div>
                            <div class="error">&nbsp;</div>
                         <!--    <input type="submit" value="add"> disabled-->
                            <a id="login_btn" class="regSubmit" href="javascript:document:loginForm.submit();">登录</a>
                        </form>
                    </div>
                </div>
                <p class="tc mgt-30 regTipLog"><span class="mgr-20">没有账号？</span> <a href="../book/toadd" class="link5">立即注册</a></p>
            </div>
        </div>
    </div>
</body>
</html>