<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>主播的电台</title>
    <link rel="stylesheet" href="/book/assets/css/PersonalPage.css">
</head>
<body>
<!-- 顶部 -->
<div class="top">
    <div class="top-content">
  	  <a href="/book/tohomepage">
        <img src="/book/assets/imgs/logo_f.png" alt="/book/tohomepage" class="logo" width="180px" height="60px">
        </a>
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
                                 <a href="../book/homepage" id="exit"><i class="icon-exit"></i></a>
                            </div>
                        </div>
                        <div class="detail-box-bottom">
                            <div class="detail-shortcut">快捷入口</div>
                            <a href="../book/personal" class="iconNav-item2 ">
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
<div class="one-zhubo">
    <div class="one-zhubotext">
    	<c:choose>
    	<c:when test="${anchor.id eq 3}">
    	<div class="one-zhubotext-img"><img src="${anchor.header}"width="100%"></div>
        <div class="one-zhubotext2">
            <h1> ${anchor.nickName}<br><h2>${anchor.signature}</h2></h1>
        </div>
    	</c:when>
    	 <c:otherwise>
        <div class="one-zhubotext-img"><img src="${person.header}"width="100%"></div>
        <div class="one-zhubotext2">
            <h1> ${person.nickName}<br><h2>${person.signature}</h2></h1>
        </div>
        </c:otherwise>
        </c:choose>
        <div class="one-zhubotext3">
            <div class="one-zhubotext3-one">
                &nbsp;<img src="/book/assets/imgs/zhubozhuye/jiahao.png">关注
            </div>
            <div class="nono">
            <div class="one-zhubotext3-two"><img src="/book/assets/imgs/zhubozhuye/liaotian.png"></div>

            <div class="one-zhubotext3-shu"><img src="/book/assets/imgs/zhubozhuye/shu.png"></div>
        </div></div>
        </div>
</div>
<div class="one-div">

<div class="one-one"></div>
    <div class="one-one-one">
    <div class="one-twoone">
        <div class="one-twoone-top">
            <div class="one-twoone-left">
                <h3>他的专辑</h3></div>
            <span class="one-twoone-right"><a href="#"> 全部></a></span>
        </div>
        <div class="one-twoone-bottom">
        <c:forEach items="${albums}"  var="album">
	        <div class="one-twoone-zuoping">
	            <img src="${album.cover}" width="100%">
	            <br><span><a href="#">${album.name}</a></span>
	        </div>
        </c:forEach>
       
   		 </div>

        <div class="one-twoone-dibu">
                <div class="one-twoone-top">
                <div class="one-twoone-left">
                    <h3>TA的声音</h3></div>
                <span class="one-twoone-right"><a href="#"> 全部></a></span>
                </div>
           <c:forEach items="${chapters}"  var="chapter">
            <div class="one-twoone-dibu-text">
            <div class="one-twoone-dibu-text-one">
                <div class="one-twoone-dibu-text-one-one">
                </div>
            </div>
                <div class="one-twoone-dibu-text-two">
                    <div class="two1">${chapter.name}</div>
                    <div class="two2">2年前</div>
                    <div class="two3">${album.name}</div>
                    <div class="two5"></div>
                    <div class="two4"><img src="/book/assets/imgs/zhubozhuye/biao.png">10:03</div>
                    <div class="two4"><img src="/book/assets/imgs/zhubozhuye/erji.png">1437</div>
                    <div class="two6">
                        <div class="two624"><img src="/book/assets/imgs/zhubozhuye/aixin.png" width="100%"></div>
                        <div class="two624"><img src="/book/assets/imgs/zhubozhuye/zhuanfa.png" width="100%"></div>
                        <div class="two624"><img src="/book/assets/imgs/zhubozhuye/liuyan.png" width="100%"></div>
                        <div class="two624"><img src="/book/assets/imgs/zhubozhuye/jiaru.png" width="100%"></div>
                    </div>
                </div>
            </div>
            
       </c:forEach>
         </div>
    </div>
    <div class="anchor-right">
    <c:choose>
    <c:when test="${anchor.id eq 3}">
        <div class="anchor-info">
            <div class="anchor-info-top">
                <div class="anchor-info-top-img"></div>
                <span>TA的资料</span>
            </div>
            <div class="anchor-info-bottom">
                <div class="info-bottom-row">
                    <div class="anchor-info-img"></div>
                    <span>${anchor.nickName}</span>
                </div>
                <div class="info-bottom-row2">
                    <div class="row2-one row2-border">
                        <div class="row2-one-img"></div>
                        <span>797.7w</span>
                    </div>
                  <div class="row2-two row2-border">
                        <div class="row2-two-img"></div>
                        <span>男神</span>
                    </div>
                    <div class="row2-three row2-border">
                        <div class="row2-three-img"></div>
                        <span>天蝎座</span>
                    </div>

                </div>
                <div class="info-bottom-row3">
                    <div class="row3-img"></div>
                    <span>江西省·南昌市</span>
                </div>
                <div class="info-bottom-row4">
                    <div class="row4-one">
                        <div class="row4-one-img"></div>
                        <span>认证</span>
                    </div>
                    <div class="row4-two"></div>
                </div>
                <div class="info-bottom-row5">
                    <div class="row5-img"></div>
                    <span>认证信息:</span><br>
                    <span class="row5-anthor">${anchor.nickName}</span>
                </div>
                <div class="info-bottom-row6">
                    <div class="row6-img"></div>
                    <span>珠穆朗玛个人电台</span>
                    <a href="">https:www.zhumulangma.com/zhubo/${anchor.phoneNum}</a>
                </div>
                <div class="info-bottom-row7">
                    <div class="row7-top">
                        <div class="row7-top-img"></div>
                        <span>分享到:</span>
                    </div>
                    <div class="row7-bottom">
                        <div class="row7-bottom-one"></div>
                        <div class="row7-bottom-two"></div>
                        <div class="row7-bottom-three"></div>
                        <div class="row7-bottom-four"></div>
                        <div class="row7-bottom-five"></div>
                    </div>

                </div>
            </div>
        </div>
        </c:when>
         <c:otherwise>
         	  <div class="anchor-info">
            <div class="anchor-info-top">
                <div class="anchor-info-top-img"></div>
                <span>TA的资料</span>
            </div>
            <div class="anchor-info-bottom">
                <div class="info-bottom-row">
                    <div class="anchor-info-img"></div>
                    <span>${person.nickName}</span>
                </div>
                <div class="info-bottom-row2">
                    <div class="row2-one row2-border">
                        <div class="row2-one-img"></div>
                        <span>0</span>
                    </div>
                   <!--  <div class="row2-two row2-border">
                        <div class="row2-two-img"></div>
                        <span>男神</span>
                    </div>
                    <div class="row2-three row2-border">
                        <div class="row2-three-img"></div>
                        <span>天蝎座</span>
                    </div> -->

                </div>
                <div class="info-bottom-row3">
                    <div class="row3-img"></div>
                    <span>未知</span>
                </div>
                <div class="info-bottom-row4">
                    <div class="row4-one">
                        <div class="row4-one-img"></div>
                        <span>认证</span>
                    </div>
                    <div class="row4-two"></div>
                </div>
                <div class="info-bottom-row5">
                    <div class="row5-img"></div>
                    <span>认证信息:</span><br>
                    <span class="row5-anthor">${person.nickName}</span>
                </div>
                <div class="info-bottom-row6">
                    <div class="row6-img"></div>
                    <span>珠穆朗玛个人电台</span>
                    <a href="">https:www.zhumulangma.com/zhubo/${person.phoneNum}</a>
                </div>
                <div class="info-bottom-row7">
                    <div class="row7-top">
                        <div class="row7-top-img"></div>
                        <span>分享到:</span>
                    </div>
                    <div class="row7-bottom">
                        <div class="row7-bottom-one"></div>
                        <div class="row7-bottom-two"></div>
                        <div class="row7-bottom-three"></div>
                        <div class="row7-bottom-four"></div>
                        <div class="row7-bottom-five"></div>
                    </div>

                </div>
            </div>
        </div>
         </c:otherwise>
        </c:choose>
        <div class="anchor-concern">
            <div class="concern-top">
                <div class="concern-top-left">
                    <div class="concern-top-left-img"></div>
                    <span>TA的关注(129)</span>
                </div>
                <div class="concern-top-right">
                    <span>全部></span>
                </div>
            </div>
            <div class="concern-bottom">
                <div class="concern-bottom-one">
                    <div class="concern-bottom-img"></div>
                    <div class="concern-bottom-img2"></div>
                    <div class="concern-bottom-img3"></div>
                    <div class="concern-bottom-img4"></div>
                </div>

                <div class="concern-bottom-two">
                    <div class="concern-bottom-img5"></div>
                    <div class="concern-bottom-img6"></div>
                    <div class="concern-bottom-img7"></div>
                </div>

            </div>
        </div>
    </div>
    </div>
<!-- 底部-->
<div class="bottom">
    <div class="bottom-one">
        <div class="bottom-one-part">
            <p class="title-name">热门搜索</p>
            <a href="">鬼故事</a>
            <a href="">武侠小说</a>
            <a href="">轻音乐</a>
            <a href="">相声</a>
            <a href="">京剧</a>
            <a href="">新概念英语</a>
            <a href="">国学</a>
            <a href="">睡前故事</a>
        </div>
        <div class="bottom-one-part bottom-one-part2">
            <p class="title-name">特色产品</p>
            <a href="">新声活商城-开启你的新生活</a>
            <a href="">声创空间</a>
            <a href="">游戏联运</a>
        </div>
        <div class="bottom-one-part bottom-one-part3">
            <p class="title-name">关注我们</p>
            <a href="">官方博客</a>
            <a href="">微信公众号</a>
            <a href="">新浪微博</a>
            <a href="">QQ公众号</a>
            <a href="">贴吧</a>
            <a href="">兴趣部落</a>
        </div>
        <div class="bottom-one-part bottom-one-part4">
            <p class="title-name">App下载</p>
            <div class="iPhone">
                <a>iPhone</a>
                </div>
                <div class="Android">
                <a>Android</a>
                </div>
        </div>
    </div>
    <div class="bottom-two">
        <div class="bottom-two-top">
            <p>合作与服务</p>
        </div>
        <div class="bottom-two-bottom">
            <div class="two-bottom-left" >
            </div>
            <div class="two-bottom-right">
                <span class="gray">开放平台</span><br>
                <p class="content">对接海量精彩内容</p>
            </div>
        </div>
        <div class="bottom-two-bottom bottom-two-bottom2">
            <div class="two-bottom-left2">
            </div>
            <div class="two-bottom-right">
                <span class="gray">喜配音平台</span><br>
                <p class="content">一站式配音服务平台</p>
            </div>
        </div>
        <div class="bottom-two-bottom bottom-two-bottom3">
            <div class="two-bottom-left3">
            </div>
            <div class="two-bottom-right">
                <span class="gray">小雅智能</span><br>
                <p class="content">智能硬件，连接赋能</p>
            </div>
        </div>
        <div class="bottom-two-bottom bottom-two-bottom4">
            <div class="two-bottom-left4">
            </div>
            <div class="two-bottom-right">
                <span class="gray">车联网平台</span><br>
                <p class="content">自在出行，听我想听</p>
            </div>
        </div>
        <div class="bottom-two-bottom bottom-two-bottom5">
            <div class="two-bottom-left5">
            </div>
            <div class="two-bottom-right">
                <span class="gray">企业版</span><br>
                <p class="content">员工学习，企业买单</p>
            </div>
        </div>
        <div class="bottom-two-bottom bottom-two-bottom6">
            <div class="two-bottom-left6">
            </div>
            <div class="two-bottom-right">
                <span class="gray">少儿成长中心</span><br>
                <p class="content">打造未来领导者</p>
            </div>
        </div>
    </div>
    <div class="bottom-three">
        <div class="bottom-three-top">
            <p>珠穆朗玛电台是一个专业的音频分享平台，精彩内容包括有声书，相声段子，音乐，新闻，综艺娱乐、儿童、情感生活、评书、外语、培训讲座、百家讲坛、广播剧、历史人文、电台、商业财经、IT科技、健康养生、校园电台、汽车、旅游、电影、游戏等5453多个分类，上千万条声音。听书听催眠音乐，让你随时随地，听我想听！</p>
        </div>
        <div class="bottom-three-bottom">
            <p>快捷入口</p>
            <a href="">听单</a>
            <a href="">未来女友实验室</a>
            <a href="">兵蓝色女士</a>
        </div>
    </div>
    <div class="bottom-four">
        <div class="bottom-four-one">
            <a href="">关于我们&nbsp;|&nbsp;</a>
            <a href="">联系我们&nbsp;|&nbsp;</a>
            <a href="">公司新闻&nbsp;|&nbsp;</a>
            <a href="">招贤纳士&nbsp;|&nbsp;</a>
            <a href="">用户反馈&nbsp;|&nbsp;</a>
            <a href="">使用协议&nbsp;|&nbsp;</a>
            <a href="">版权声明&nbsp;|&nbsp;</a>
            <a href="">开放平台&nbsp;|&nbsp;</a>
            <a href="">直播平台&nbsp;|&nbsp;</a>
            <a href="">自律承诺</a>
        </div>
        <div class="bottom-four-two">
            <p>Copyright © 2012-2019 www.ximalaya.com lnc.ALL Rights Reserved</p>
        </div>
        <div class="bottom-four-three">
            <p>上海证大珠穆朗玛网络科技有限公司 版权所有  公司地址：上海市闵行区紫星路588号2幢2062室  联系地址：上海市祖冲之路887弄88号402室A座  客服热线：400-838-5616</p>
        </div>
        <div class="bottom-four-four">
            <div class="bottom-four-four-left">
                <p>信息网络传播视听节目许可证1908287号  |  互联网直播服务备案号：沪ILS备201708210007  |  沪网文【2016】6034-453号沪ICP备13027243号-3  </p>
            </div>
            <div class="bottom-four-four-logo">
            </div>
            <div class="bottom-four-four-right">
                <p>沪公网安备 31011502005603号</p>
                <p>违法不良信息举报电话：400-838-5616  |  《举报受理和处置管理办法》</p>
            </div>
        </div>
        <div class="bottom-four-five">
            <div class="bottom-four-five-part">
                <div class="part-img"></div>
                <span>上海互联网举报中心&nbsp;|&nbsp;</span>
            </div>
            <div class="bottom-four-five-part bottom-four-five-part2">
                <div class="part-img2"></div>
                <span>网上有害信息举报专区&nbsp;|&nbsp;</span>
            </div>
            <div class="bottom-four-five-part bottom-four-five-part3">
                <div class="part-img3"></div>
                <span>儿童色情举报专区&nbsp;|&nbsp;</span>
            </div>
            <div class="bottom-four-five-part bottom-four-five-part4">
                <div class="part-img4"></div>
                <span>诚信网站</span>
            </div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript">
window.onload = function(){b()};

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
 
</script>
 <script type="text/javascript" src="/book/assets/js/jquery.min.js"></script>
</body>
</html>