
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的</title>
    <link rel="stylesheet" href="/book/assets/css/my.css">  
    
</head>
<body>
    <!-- 顶部 -->
<div class="top">
    <div class="top-content">
         <a href="../book/tohomepage" class=""><img src="/book/assets/imgs/logo_f.png" alt="" class="logo" width="180px" height="60px"></a>
        <a href="" class="topA">发现</a>
        <a href="../book/my" class="topA">我的</a>
        <a href="" class="topA">APP下载</a>

        <form class="fbox">
            <input type="text" placeholder="专辑/声音/用户">
            <div class="fbox-right"> <i class="iconfont iconsousuo"></i>   </div>
        </form>

        <div class="top-right">
            <a href="" class="iconNav-item _tvdQ">
                <i class="ic_upload">
                </i>
                <p class="title_tvdQ">上传</p>
            </a>
            <a href="" class="iconNav-item _tvdQ">
                <i class="ic_voiceBox">
                </i>
                <p class="title_tvdQ">小雅音箱</p>
            </a>
            <div class="iconNav-item-user">
                <a href="" class="user-notice">
                    <img src="${person.header}" alt="" class="img_pZ5" width="38px" height="38px" onerror="this.src='/book/assets/imgs/touxiang.png';this.onerror=null">
                </a>
                <div class="nav-item-detail">
                    <div class="detail-box-list">
                        <div class="detail-box-top">
                            <div class="detail-box-content">
                                <span class="detail-box-nickname" id="uname2">${person.nickName}</span>
                                <i class="icon-xiaoxi"></i>
                               <a href="../book/setting" > <i class="icon-setting"></i></a>
                                 <a href="../book/homepage" ><i class="icon-exit"></i></a>
                            </div>
                        </div>
                        <div class="detail-box-bottom">
                            <div class="detail-shortcut">快捷入口</div>
                            <a href="../book/my" class="iconNav-item2 ">
                                <i class="ic_zhuye">
                                </i>
                                <p class="title_tvdQ2">个人页</p>
                            </a>
                            <a href="../book/my" class="iconNav-item2 ">
                                <i class="ic_dingyue">
                                </i>
                                <p class="title_tvdQ2">订阅</p>
                            </a>
                            <a href="../book/my" class="iconNav-item2 ">
                                <i class="ic_lishi">
                                </i>
                                <p class="title_tvdQ2">历史</p>
                            </a>
                            <a href="../book/my" class="iconNav-item2 ">
                                <i class="ic_yigou">
                                </i>
                                <p class="title_tvdQ2">已购</p>
                            </a>
                            <a href="../book/my" class="iconNav-item2 ">
                                <i class="ic_xihuan">
                                </i>
                                <p class="title_tvdQ2">喜欢</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <main class="main-content">
        <section class="k1je">
            <div class="layout-main">
                <div class="myPage-tabs" >
                        <button class="active">
                                 <span>
                                    <svg class="icon icon-wode-dingyue"></svg>
                                    订阅
                                </span>
                        </button>
                        <button>
                            <span>
                                    <svg class="icon icon-wode-tingguo"></svg>
                                    听过
                                </span>
                        </button>
                        <button>
                            <span>
                                    <svg class="icon icon-wode-yigou"></svg>
                                    已购
                                </span>
                        </button>
                        <button>
                              <span>
                                    <svg class="icon icon-wode-xihuan"></svg>
                                    喜欢
                                </span>
                        </button>
                        <div class="content" style="display: block">
                             <div class="empty-result">
                                <img src="/book/assets/imgs/empty.png" alt="喵，没有找到相关结果~" class="_jA">
                                <p class="msg">暂无数据</p>
                            </div>
                        </div>
                        <div class="content">
                             <div class="empty-result">
                                <img src="/book/assets/imgs/empty.png" alt="喵，没有找到相关结果~" class="_jA">
                                <p class="msg">暂无数据</p>
                            </div>
                        </div>
                        <div class="content">
                            <div class="empty-result">
                                <img src="/book/assets/imgs/empty.png" alt="喵，没有找到相关结果~" class="_jA">
                                <p class="msg">暂无数据</p>
                            </div>
                        </div>
                        <div class="content">
                             <div class="empty-result">
                                <img src="/book/assets/imgs/empty.png" alt="喵，没有找到相关结果~" class="_jA">
                                <p class="msg">暂无数据</p>
                            </div>
                        </div>
                    </div>
                </div>
            <div class="layout-side">
                <div class="user-card">
                    <div class="A5L">
                        <div class="user-box">
                            <a href="" class="user-pic">
                             <img src="${person.header}" alt="" class="" width="40px" height="40px" onerror="this.src='/book/assets/imgs/touxiang.png';this.onerror=null">
                            </a>
                            <div class="flex-center-v">
                                <a href="" class="user-box_title" id="uname">君莫笑</a>
                            </div>
                        </div>
                        <div class="user-card_intro" id="cue">该用户很懒，没有留下任何东西~</div>
                    </div>
                    <div class="user-card_link-box">
                        <span class="user-card_link">
                            <a href="../book/setting" class="_A5L">账号设置
                            <i class="xuicon"></i>
                            </a>
                        </span>
                    </div>
                </div>
                <div class="recommend-list">
                    <div class="recommend-head">
                        <h3 class="recommend-head-title">
                            <svg class="icon-tuijian"></svg>
                            相关推荐
                        </h3>
                    </div>
                    <div class="recommend-body">
                        <ul class="general-list">
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                            <div class="item-link">
                                <a href="" class="pic-box">
                                    <div class="pic-wrap"></div>
                                </a>
                                <div class="item-content">
                                    <h6 class="item-title">
                                        <a href="">红黄蓝亲子课音乐</a>
                                    </h6>
                                    <p class="sub-title">
                                        <a href="" class="anchor-link">红黄蓝</a>
                                    </p>
                                </div>
                            </div>
                        </li>
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="item-link">
                                    <a href="" class="pic-box">
                                        <div class="pic-wrap"></div>
                                    </a>
                                    <div class="item-content">
                                        <h6 class="item-title">
                                            <a href="">红黄蓝亲子课音乐</a>
                                        </h6>
                                        <p class="sub-title">
                                            <a href="" class="anchor-link">红黄蓝</a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </main>

 <script>
        window.onload = function(){a();b();load_data()};

        //导航栏下拉
        // let 语句声明一个块级作用域的本地变量，并且可选的将其初始化为一个值。
        function b(){
            let nav=document.querySelector(".iconNav-item-user");
            let ItemDetail=document.querySelector(".nav-item-detail");
            nav.onmouseenter=function(){
                ItemDetail.style.height="152px";//鼠标移入高度
            };
            nav.onmouseleave=function(){//移除高度
                ItemDetail.style.height="0";
            };
            let navItems=document.querySelectorAll(".user-notice");
            let boxItems=document.querySelectorAll(".detail-box-list");

            navItems.forEach(function (ele,index) {
                ele.onmouseenter=function () {
                    for (let i=0;i<boxItems.length;i++){
                        boxItems[i].style.display="none";
                    }
                    boxItems[index].style.display="block";
                }
            });
        }
        function a() {
            // 将按钮和盒子拿出来
            var btn = document.getElementsByTagName('button');
            var div = document.getElementsByClassName('content');
            // 每一个button上面绑定事件
            for(var n = 0; n < btn.length; n++) {
                //生成闭包的立即函数
                (function (i) {
                    btn[n].onclick = function () {
                        for (var m = 0; m < btn.length; m++) {
                            btn[m].className = ""; //清空效果
                            div[m].style.display = "none";
                        }
                        //当前点击的button设置变化
                        this.className = "active";
                        div[i].style.display = "block";
                    }
                }(n))
            }
        }
    	function load_data(){
    		
   		 var theme='${person.signature}';
   		 if(theme==null||theme==""){
   			$("#cue").html('该用户很懒，没有留下任何东西~'); 
   			 $("#uname").html('${person.nickName}');
   		 }else{	
   			 $("#cue").html('${person.signature}');  
   			 $("#uname").html('${person.nickName}');
   			 $("#uname2").html('${person.nickName}');
   			
   		 }
   		
   	}
    </script>
	  <script type="text/javascript" src="/book/assets/js/jquery.min.js"></script> 
</body>
</html>