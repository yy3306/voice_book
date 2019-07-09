
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>账号设置</title>
    <link rel="stylesheet" href="/book/assets/css/personal-setting.css">
</head>
<body>
    <div class="header">
        <div class="main-wrapper">
            <h1 class="fl">
                <a href="../book/tohomepage" class="logo">珠穆朗玛FM</a>
            </h1>
            <div class="mainnav">
                <ul>
                    <li class="item">
                        <a href="" class="item-tit">发现</a>
                    </li>
                    <li class="item">
                        <a href="../book/my" class="item-tit">我的</a>
                    </li>
                    <li class="item">
                        <a href="" class="item-tit">APP下载</a>
                    </li>
                </ul>
            </div>
            <div class="header-right">
                <div class="upload-wrapper">
                    <a href="" class="btn btn-upload" >上传</a>
                    <span class="icon-more">
                        <i class="arrow2"></i>
                    </span>
                </div>
                <div class="search-wrapper">
                    <div class="search-panel">
                        <input type="text" placeholder="搜索声音、专辑、用户">
                        <a href="" class="search-go"></a>
                    </div>
                </div>
                <div class="other">
                    <a href="" class="o-item">
                        <i class="o-item-pingtai"></i>
                        有声化平台</a>
                    <a href="" class="o-item">
                        <i class="o-item-shangcheng"></i>
                        新生活商城</a>
                </div>
            </div>
        </div>
    </div>
    <div class="sub-header">
        <div class="main-wrapper">
            <div class="info">
                <a href="" class="info-block">主播工作台</a>
                <div class="u-info">
                    <a href="" class="txt j-msg">
                        <span class="j-userinfo-nickname" id="uname">君莫笑</span>
                        <img src="${person.header}" alt="" class="u-img"  width="20px" height="20px">
                    </a>
                </div>
                <div class="msg-info">
                    <a href="" class="txt j-msg">消息
                        <span class="new-msg">·</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="bodyBgColor">
        <div class="mainbox">
            <div class="set_container">
                <div class="set_header">账号设置</div>
                <div class="set_left">
                    <div class="set_useravatar">
                        <a href="" class="userface">
                         <img src="${person.header}" alt=""  width="110px" height="110px" onerror="this.src='/book/assets/imgs/user110.jpg';this.onerror=null">
                        </a>
                    </div>
                    <ul class="set_nav">
                        <li  >
                            <a href="">个人设置</a>
                        </li>
                        <li  >
                            <a href="">消息设置</a>
                        </li>
                        <li >
                            <a href="">隐私设置</a>
                        </li>
                        <li >
                            <a href="">头像设置</a>
                        </li>
                    </ul>
                </div>
                <div class="set_right" >
                        <form action="tosetting"   id="setForm">
                            <div class="set_title">基本信息</div>
                            <div class="set_personal">
                                <!-- -->
                                <div class="set_Inner set_Inner-personal ">
                                    <dl class="set_dl">
                                        <dt>您的账号</dt>
                                        <dd class="j-email"><span id="phoneNum">150****2478</span></dd>
                                        <dd><a id="changePwd" href="" title="">修改密码</a></dd>
                                    </dl>
                                    <dl class="set_dl set_align">
                                        <dt>昵称</dt>
                                        <dd>
                                            <span id="uname2">君莫笑</span>
                                            <input class="hidden" type="text" id="nickname" name="nickname" value="w9ci68kufzobfeauiqki">
                                            <div class="error">该昵称已有人使用</div>
                                            <div class="correct"></div>
                                        </dd>
                                        <dd><a id="changeNickname">修改</a></dd>
                                    </dl>
                                    <dl class="set_dl">
                                        <dt>&nbsp;</dt>
                                        <dd style="color:gray" >
                                            每个自然月可主动修改1次昵称
                                        </dd>
                                    </dl>
                                    <dl class="set_dl">
                                        <dt>个性签名</dt>
                                        <dd>
                                            <input id="signature" type="text" name="signature" value="${person.signature}">
                                            <!-- <input id="city" type="hidden" name="city" value="" autocomplete="off">
                                            <a id="changeCity"> • </a> -->
                                        </dd>
                                    </dl>
                                    <dl class="set_dl">
                                        <dt>关于自己</dt>
                                        <dd>
                                            <textarea name="personalSignature" placeholder="" id="personalSignature"></textarea>
                                            <div class="error">不能超过70个字</div>
                                            <div class="correct"></div>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="set_Inner set_Inner-personal2">

                                    <div class="personal_verify verify_mail  hidden ">
                                        <div class="personal_verify_title">绑定邮箱</div>
                                        <div class="personal_verify_email"></div>
                                        <!-- <div class="personal_verify_status2">已验证</div> -->
                                        <div>
                                            <a id="email_bind2" href="javascript:;">解绑</a>
                                        </div>
                                    </div>

                                    <!-- <div class="personal_verify unverify_mail ">
                                <div class="personal_verify_title">邮箱验证</div>
                                <div class="personal_verify_email"></div>
                                <div class="personal_verify_status">未验证！</div>
                                <div>
                                                                        <a id="email_bind" title="绑定邮箱" href="javascript:;">绑定邮箱</a>
                                                                </div>
                            </div> -->
                                    <div class="personal_verify verify_mobile">
                                        <div class="personal_verify_title">绑定手机</div>
                                        <div class="personal_verify_mobile" id="phoneNum2">150****2478</div>
                                        <div class="personal_verify_status">可用于登录 </div>
                                        <div><a id="phone_bind" href="javascript:;">修改手机</a></div>
                                    </div>

                                    <div class="personal_verify verify_vip hidden">
                                        <div class="personal_verify_title">实名认证</div>
                                        <div class="personal_verify_status2">已认证</div>
                                        <div><a href="https://www.ximalaya.com/verify/info">查看认证信息</a></div>
                                    </div>
                                    <div class="personal_verify unverify_vip ">
                                        <div class="personal_verify_title">实名认证</div>
                                        <div class="personal_verify_status">未认证！</div>
                                        <div><a href="https://www.ximalaya.com/verify">认证</a></div>
                                    </div>
                                </div>
                                <div class="set_Inner">
                                    <dl class="set_dl">
                                        <dt>真实姓名</dt>
                                        <dd><input type="text" name="realName" id="realName" value=""></dd>
                                        <dd>
                                            <span class="set_hint">您的真实姓名将会被保密</span>
                                            <div class="error">请填写真实姓名</div>
                                            <div class="correct"></div>
                                        </dd>
                                    </dl>
                                    <dl class="set_dl">
                                        <dt>生日</dt>
                                        <dd>
                                            <select class="set_select" name="birthYear" id="birth_year"><option value="-1">----</option><option value="2019">2019</option><option value="2018">2018</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option></select>
                                            <label>年</label>
                                            <select class="set_select" name="birthMonth" id="birth_month"><option value="-1">--</option><option value="1">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option><option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option><option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
                                            <label>月</label>
                                            <select class="set_select" name="birthDay" id="birth_day"><option value="-1">--</option><option value="1">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option><option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option><option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
                                            <label>日</label>
                                        </dd>
                                    </dl>
                                  <!--  <dl class="set_dl">
                                        <dt>星座</dt>
                                        <dd>
                                            <select class="set_select" id="constellation" name="constellation"><option value="-1">&#45;&#45;&#45;&#45;</option><option value="白羊座">白羊座</option><option value="金牛座">金牛座</option><option value="双子座">双子座</option><option value="巨蟹座">巨蟹座</option><option value="狮子座">狮子座</option><option value="处女座">处女座</option><option value="天秤座">天秤座</option><option value="天蝎座">天蝎座</option><option value="射手座">射手座</option><option value="魔羯座">魔羯座</option><option value="水瓶座">水瓶座</option><option value="双鱼座">双鱼座</option></select>
                                        </dd>
                                    </dl>-->
                                    <dl class="set_dl">
                                        <dt>性别</dt>
                                        <dd>
                                            <input type="radio" class="set_radio" name="gender" id="_1" value="1">
                                            <label for="_1">男</label>
                                            <input type="radio" class="set_radio" name="gender" id="_2" value="2">
                                            <label for="_2">女</label>
                                            <input type="radio" class="set_radio" name="gender" id="_3" value="0" checked="checked">
                                            <label for="_3">保密</label>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="set_operate">
                                    <a class="confirmBtn" id="confirmBtn" href="javascript:document:setForm.submit();">保存设置</a>
                                </div>
                            </div>
                        </form>
                        <form action="">正在加载···，请稍后</form>
                        <form action="">正在加载···，请稍后</form>
                         <form action="setheader" enctype="multipart/form-data" id="setHeader">
                        <div class="set_title">头像信息</div>
                        <div class="set_avatar">
                            <div class="set_avatar_operate">
                                <div>建议上传640*640像素，5M以下的图片</div>
                                <a href="" class="localphotoBtn" id="local_photo">
                                   <!--  <div class="webupload-pick">
                                    </div> -->
                                    <input type="file" name="file" id="file" class="inputfile" accept="image/png, image/jpeg, image/gif, image/jpg" onchange="changepic(this)" />
                                    <label for="file" class='btn btn-success'></label>
                                </a>
                                <a href="" class="uploadphotoBtn" id="photo_upload"></a>
                            </div>
                            <div id="photo_handle" class="set_Inner ">
                                <div class="set_avatar_handle">
                                    <div class="set_avatar_left">
                                        <img id="show" src="" style="visibility: visible;width: 260px;height: 260px">
                                     <!--   <div class="photo_260">
                                            <div class="img-container" id="img_photo_container" style="left: 0; top: 0; width: 260px; height: 260px;">
                                              &lt;!&ndash;  <img id="show" src="" style="visibility: visible;">&ndash;&gt;
                                              &lt;!&ndash;  <img src="" id="show" width="200px" height="200px">&ndash;&gt;
                                            </div>
                                        </div>-->
                                    </div>
                                    <ul class="set_avatar_right">
                                        <li>你的头像会自动生成4种尺寸</li>
                                        <li>
                                            <div class="set_avatar_left2">
                                                <div class="photo_100">
                                                    <img id="preview_100" src="">
                                                </div>
                                                <p>100px*100px</p>
                                            </div>
                                            <div class="set_avatar_right">
                                                <div class="photo_60">
                                                    <img id="preview_60" src="">
                                                </div>
                                                <p>60px*60px</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="photo_30">
                                                <img id="preview_30" src="">
                                            </div>
                                            <p>16px*16px</p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="set_operate">
                                        <a class="confirmBtn" href="javascript:document:setHeader.submit();" id="submit_btn">保存设置</a>
                                        <a class="cancelBtn" href="">取消</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <!--快速导航栏-->
    <script src="/book/assets/js/jquery-3.1.1.js" ></script>
    <script type="text/javascript">

 $().ready(function(){
     $(".set_nav li").mouseover(function(){
         //通过 .index()方法获取元素下标，从0开始，赋值给某个变量
         var _index = $(this).index();
         //让内容框的第 _index 个显示出来，其他的被隐藏
         $(".set_right>form").eq(_index).show().siblings().hide();
         //改变选中时候的选项框的样式，移除其他几个选项的样式
         $(this).addClass("change").siblings().removeClass("change");
     });
 });
 

 function load_data(){
 	
 	 var theme='${person.userId}';
 	 if(theme==null||theme==""){
 		 
 		 $("#uname").html('加载失败');
 		 $("#phoneNum").html('********');
 		$("#phoneNum2").html('********');
 	 }else{	
 		  
 		 $("#uname").html('${person.nickName}');
 		 $("#uname2").html('${person.nickName}');
 		 $("#phoneNum").html('${person.phoneNum}');
 		 $("#phoneNum2").html('${person.phoneNum}');
 		
 	 }
 	
 }
 window.onload = function(){load_data()};
 
 function changepic(obj) {
     //console.log(obj.files[0]);//这里可以获取上传文件的name
     var newsrc=getObjectURL(obj.files[0]);
     document.getElementById('show').src=newsrc;
 }
 //建立一個可存取到該file的url
 function getObjectURL(file) {
     var url = null ;
     // 下面函数执行的效果是一样的，只是需要针对不同的浏览器执行不同的 js 函数而已
     if (window.createObjectURL!=undefined) { // basic
         url = window.createObjectURL(file) ;
     } else if (window.URL!=undefined) { // mozilla(firefox)
         url = window.URL.createObjectURL(file) ;
     } else if (window.webkitURL!=undefined) { // webkit or chrome
         url = window.webkitURL.createObjectURL(file) ;
     }
     return url ;
 }
    </script>
</body>
</html>