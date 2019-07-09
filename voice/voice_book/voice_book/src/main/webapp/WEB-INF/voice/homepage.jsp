
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
    <title>珠穆朗玛_人气精选-排行榜</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/book/assets/css/homepage.css">
    <link rel="stylesheet" href="/book/assets/css/Cooldog.css">
    <link rel="stylesheet" href="/book/assets/css/iconfont.css">
     <link rel="stylesheet" href="/book/assets/css/iconfont2.css">
    <link rel="stylesheet" type="text/css" media="screen" href="/book/assets/css/reset.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="/book/assets/css/player.css" />
   
<!-- 	<script src="/book/assets/js/jquery.min.js"></script> -->
</head>
<body>
<!-- 顶部 -->
<div class="top">
    <div class="top-content">
        <img src="/book/assets/imgs/logo_f.png" alt="" class="logo" width="180px" height="60px">
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
<!--轮播 -->
<div class="Cooldog_container">
    <div class="Cooldog_content">
        <ul>
            <li class="p1">
                <a href="#">
                    <img src="/book/assets/imgs/1.png" alt="">
                </a>
            </li>
            <li class="p2">
                <a href="#">
                    <img src="/book/assets/imgs/2.png" alt="">
                </a>
            </li>
            <li class="p3">
                <a href="#">
                    <img src="/book/assets/imgs/3.png" alt="">
                </a>
            </li>
            <li class="p4">
                <a href="#">
                    <img src="/book/assets/imgs/4.png" alt="">
                </a>
            </li>
            <li class="p5">
                <a href="#">
                    <img src="/book/assets/imgs/5.png" alt="">
                </a>
            </li>
            <li class="p5">
                <a href="#">
                    <img src="/book/assets/imgs/6.png" alt="">
                </a>
            </li>
            <li class="p5">
                <a href="#">
                    <img src="/book/assets/imgs/7.png" alt="">
                </a>
            </li>
        </ul>
    </div>
    <a href="javascript:;" class="btn_left">
        <i class="iconfont icon-zuoyoujiantou"></i>
    </a>
    <a href="javascript:;" class="btn_right">
        <i class="iconfont icon-zuoyoujiantou-copy-copy"></i>
    </a>
    <a href="javascript:;" class="btn_close">
        <i class="iconfont icon-icon-test"></i>
    </a>
    <div class="buttons clearfix">
        <a href="javascript:;" class="color"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
    </div>
</div>

<!-- 导航菜单 -->
<div class="fenlei_beijing">
<div class="fenlei">
    <span><a href="#">&nbsp;&nbsp;&nbsp;
    <img src="/book/assets/imgs/fenlei.png" width="9.5%"> 全部分类</a>
</span><br><br>
    <span> <a href="#">排行榜&nbsp;</a>·&nbsp;<a href="#">看小说°</a></span>
</div>
<div class="fenlei">
    <span ><a href="#" >有声书</a></span><br><div class="div_span1"></div>
    <span class="neirong"><a href="#" class="neirong"> 文学</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">言情</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">商业</a><br>
        <a href="#" class="neirong">悬疑</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">武侠</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">历史小说</a></span></div>
<div class="fenlei"><span><a href="#">音乐</a></span><br><div class="div_span2"></div>
    <span class="neirong"><a href="#" class="neirong">相声</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">评书</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">小品</a><br>
        <a href="#" class="neirong">流行</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">民谣</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">轻音乐</a></span></div>
<div class="fenlei"><span><a href="#">教育</a></span><br><div class="div_span3"></div>
    <span class="neirong"><a href="#" class="neirong" > 英语</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">历史</a>&nbsp;|&nbsp;
        <a href="#" class="neirong"> 人文</a><br>
        <a href="#" class="neirong">听两会</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">科技</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">外文原版</a></span></div>
<div class="fenlei"><span><a href="#">儿童</a></span><br><div class="div_span4"></div>
    <span class="neirong"><a href="#" class="neirong">学前英语</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">科普</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">绘本</a><br>
        <a href="#" class="neirong">少儿音乐</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">文学</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">卡通</a></span></div>
<div class="fenlei"><span><a href="#">知识</a></span><br><div class="div_span5"></div>
    <span class="neirong"><a href="#" class="neirong">财经</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">历史</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">人文</a><br>
        <a href="#" class="neirong">IT科技</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">新媒体</a>&nbsp;|&nbsp;
        <a href="#" class="neirong">创业</a></span></div>
</div>

<div class="zhengwen">
    <!--猜你喜欢 -->
    <div class="cnxh.png">
    <div class="cainixihuan">
    <div class="cainixihaun_top">
    <div class="cainixihuan_btimg">
    </div><div class="cainixihuan_biaoti">猜你喜欢</div>
        <div class="huanyipi"><a href="#">换一批</a></div></div>
    <div class="cainixihuan_zhengwen">
        <ul class="cnxh.png_ul">
            <li class="ul_li">
                <div class="one">
                    <div class="one_top"><a href="#"><img src="/book/assets/imgs/cnxh.png" width="100%"> </a></div>
                    <div class="one_zhengwen"><a href="#"><b>摸金天师</b></a></div>
                    <div class="one_buttom"><a href="#">摸金天师</a></div>
                </div>
            </li>

            <li class="ul_li">
                <div class="one">
                    <div class="one_top"><a href="#"><img src="/book/assets/imgs/cnxh.png" width="100%"></a></div>
                    <div class="one_zhengwen"><a href="#"><b>摸金天师</b></a></div>
                    <div class="one_buttom"><a href="#">摸金天师</a></div>
                </div>
            </li>

            <li class="ul_li">
                <div class="one">
                    <div class="one_top"><a href="#"><img src="/book/assets/imgs/cnxh.png" width="100%"></a></div>
                    <div class="one_zhengwen"><a href="#"><b>摸金天师</b></a></div>
                    <div class="one_buttom"><a href="#">摸金天师</a></div>
                </div>
            </li>

            <li class="ul_li">
                <div class="one">
                    <div class="one_top"><a href="#"><img src="/book/assets/imgs/cnxh.png" width="100%"></a></div>
                    <div class="one_zhengwen"><a href="#"><b>摸金天师</b></a></div>
                    <div class="one_buttom"><a href="#">摸金天师</a></div>
                </div>
            </li>

            <li class="ul_li">
                <div class="one">
                    <div class="one_top"><a href="#"><img src="/book/assets/imgs/cnxh.png" width="100%"></a></div>
                    <div class="one_zhengwen"><a href="#"><b>摸金天师</b></a></div>
                    <div class="one_buttom"><a href="#">摸金天师</a></div>
                </div>
            </li>
        </ul>
    </div>

	</div>
<div class="cainixihuan_right">
<div class="cainixihuan_right_top">
<div class="cainixihuan_right_top_zw"  >
    <div class="cainixihuan_right_top_zw_one">

        <span class="touxiang"><img src="${person.header}" alt="" width="46px" height="46px" id="touxiang" onerror="this.src='/book/assets/imgs/touxiang.png';this.onerror=null"></span>
        <div class="touxiang_text" id="uname">登陆一下，让我了解你</div>
    </div>
    <div class="cainixihuan_right_top_zw_two">
        <div class="zw_two_240252">
            <a href="../book/tologin">
           <div class="denglu" href="#" id="cue">登陆</div>
            </a>
        </div>
    </div>
</div>

</div>
            <div class="cainixihuan_right_bottom">
            <div class="cainixihuan_right_bottom_zw">
<div class="zw_164748">
    <div class="zw_164748_text">
<a href="#">下载客户端</a></div>
    <div class="zw6734"><a href="#">iPhone</a></div><div class="zw6734"><a href="#">Android</a></div>

</div>
            <div class="erweima"><img src="/book/assets/imgs/erweima.png" width="100%"> </div>
        </div>
            </div>
            </div>
    </div>
    <!--有声书 -->
    <div class="youshengshu">
    <div class="cainixihuan_book">
        <div class="cainixihaun_top">
            <div class="cainixihuan_btimg">
            </div><div class="cainixihuan_biaoti"><a href="#">有声书</a></div>
            <div class="xiaoshuo"><a href="#">有声的紫襟</a>&nbsp;|&nbsp;<a href="#">多人小说剧</a>&nbsp;|&nbsp;<a href="#"> 牛大宝</a>&nbsp;|&nbsp;<a href="#">重生</a>&nbsp;|&nbsp;<a href="#">盗墓笔记</a>&nbsp;|&nbsp;<a href="#"> 免费完结小说</a>&nbsp;|&nbsp; <a href="@" >穿越</a></div>
            <div class="huanyipi"><a href="#">更多>>></a></div></div>
        <div class="cainixihuan_zhengwen">
            <ul class="png_ul">
           	<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="../book/showAlbum?albumId=${album.id}"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="../book/showAlbum?albumId=${album.id}"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="../book/anchor?albumId=${album.id}">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
             
			<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="#"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="#"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="#">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
			<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="#"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="#"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="#">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
			<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="#"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="#"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="#">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
			<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="#"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="#"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="#">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
            </ul>
        </div>
    </div>
<div class="youshengshu_right">
<div class="youshengshu_right_top">有声书飙升榜</div>
		<div class="right_260100">
		    <div class="right_240100">
		        <div class="right_img8080">
		    <img src="/book/assets/imgs/ranking1.jpg" width="100%">
		        </div>
		        <div class="right_14040">
		            <a href="#">重生空间鬼眼神棍</a><br><span class="ph_img_span">常乐_0g</span>
		        </div>
		    </div>
		</div>
            <div class="right_260100">
                <div class="right_240100">
                    <div class="right_img8080">
                        <img src="/book/assets/imgs/ranking2.jpg" width="100%">
                    </div>
                    <div class="right_14040">
                        <a href="#">抬龙棺</a><br><span class="ph_img_span">有声的亚当_新派</span>
                    </div>
                </div>
            </div>
            <div class="right_260100">
                <div class="right_240100">
                    <div class="right_img8080">
                        <img src="/book/assets/imgs/ranking3.jpg" width="100%">
                    </div>
                    <div class="right_14040">
                        <a href="#">替嫁娇妻，偏执总裁宠...</a><br><span class="ph_img_span">思念小说</span>
                    </div>
                </div>
            </div>
            <div class="right_text24040">
                <div class="right_text24020"> <span class="ph_img_span">4.</span> &nbsp;&nbsp;<b><a href="#"> 站权倾天下（免费）</a></b></div> </div>
            <div class="right_text24040">
                <div class="right_text24020"> <span class="ph_img_span">5.</span> &nbsp;&nbsp;<b><a href="#"> 时间都知道（多人有声剧）</a></b></div> </div>

        </div>
    </div>
    <!--有声书 -->
    <div class="youshengshu">
        <div class="cainixihuan_book">
            <div class="cainixihaun_top">
                <div class="cainixihuan_btimg">
                </div><div class="cainixihuan_biaoti"><a href="#">有声书</a></div>
                <div class="xiaoshuo"><a href="#">有声的紫襟</a>&nbsp;|&nbsp;<a href="#">多人小说剧</a>&nbsp;|&nbsp;<a href="#"> 牛大宝</a>&nbsp;|&nbsp;<a href="#">重生</a>&nbsp;|&nbsp;<a href="#">盗墓笔记</a>&nbsp;|&nbsp;<a href="#"> 免费完结小说</a>&nbsp;|&nbsp; <a href="@" >穿越</a></div>
                <div class="huanyipi"><a href="#">更多>>></a></div></div>
            <div class="cainixihuan_zhengwen">
               <ul class="png_ul">
           	<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="../book/showAlbum?albumId=${album.id}"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="../book/showAlbum?albumId=${album.id}"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="../book/showAlbum?albumId=${album.id}">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
             
			<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="#"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="#"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="#">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
			<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="#"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="#"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="#">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
			<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="#"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="#"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="#">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
			<c:forEach items="${albums}" var="album">
                <li class="ul_li">
                    <div class="one">
                        <div class="one_top"><a href="#"><img src="${album.cover}" width="140px" height="140px"> </a></div>
                        <div class="one_zhengwen"><a href="#"><b>${album.name}</b></a></div>
                        <div class="one_buttom"><a href="#">${person2.nickName}</a></div>
                    </div>
                </li>
			</c:forEach>
            </ul>
            </div>

        </div>
        <div class="youshengshu_right">
<div class="youshengshu_right_top">有声书飙升榜</div>
		<div class="right_260100">
		    <div class="right_240100">
		        <div class="right_img8080">
		    <img src="/book/assets/imgs/ranking1.jpg" width="100%">
		        </div>
		        <div class="right_14040">
		            <a href="#">重生空间鬼眼神棍</a><br><span class="ph_img_span">常乐_0g</span>
		        </div>
		    </div>
		</div>
            <div class="right_260100">
                <div class="right_240100">
                    <div class="right_img8080">
                        <img src="/book/assets/imgs/ranking2.jpg" width="100%">
                    </div>
                    <div class="right_14040">
                        <a href="#">抬龙棺</a><br><span class="ph_img_span">有声的亚当_新派</span>
                    </div>
                </div>
            </div>
            <div class="right_260100">
                <div class="right_240100">
                    <div class="right_img8080">
                        <img src="/book/assets/imgs/ranking3.jpg" width="100%">
                    </div>
                    <div class="right_14040">
                        <a href="#">替嫁娇妻，偏执总裁宠...</a><br><span class="ph_img_span">思念小说</span>
                    </div>
                </div>
            </div>
            <div class="right_text24040">
                <div class="right_text24020"> <span class="ph_img_span">4.</span> &nbsp;&nbsp;<b><a href="#"> 站权倾天下（免费）</a></b></div> 
             </div>
            <div class="right_text24040">
                <div class="right_text24020"> <span class="ph_img_span">5.</span> &nbsp;&nbsp;<b><a href="#"> 时间都知道（多人有声剧）</a></b></div> 
             </div>

        </div>
    </div>


    <!--排行榜 -->
    <div class="youshengshu2">
    <div class="xmly_ph">
    <div class="xmly_ph_one">
        <div class="ph_one_top">
            <h4>
                <div class="h4_left"><a href="#"><img src="/book/assets/imgs/mianfei.png" width="100%"></a></div>
                <div class="h4_right"><a href="#">全部></a></div>
            </h4>
        </div>
        <div class="ph_two24080">
            <div class="ph_two_zhengwen24060">
                <div class="ph_img"><img src="/book/assets/imgs/ph_1.jpg" width="80%"> </div>
                <div class="ph_img_text"><a href="#"> 鲜快报</a><br><span class="ph_img_span"> 封面新闻</span></div>
            </div>
        </div>
        <div class="ph_two24082">
            <div class="ph_two_zhengwen240602">  <div class="ph_img"><img src="/book/assets/imgs/list-1.jpg" width="80%"> </div>
                <div class="ph_img_text"><a href="#"> 郭德纲21年相声精选</a><br><span class="ph_img_span"> 郭德纲相声</span></div></div>
        </div>
        <div class="ph_two24080">
            <div class="ph_two_zhengwen24060"> <div class="ph_img"><img src="/book/assets/imgs/list-2.jpg" width="80%"> </div>
                <div class="ph_img_text"><a href="#"> 郭德纲·于谦  明天见</a><br><span class="ph_img_span"> 郭德纲相声</span></div> </div>
        </div>
        <div class="ph_two24040">
            <div class="ph_two_zhengwen24020">4.大历史</div>
        </div>
        <div class="ph_two24041">
            <div class="ph_two_zhengwen24020">5.华分|每日大盘预判</div>
        </div>
        <div class="ph_two24040">
            <div class="ph_two_zhengwen24020">6.蕊希电台</div>
        </div>
        <div class="ph_two24041">
            <div class="ph_two_zhengwen24020">7.读者</div>
        </div>
        <div class="ph_two24040">
            <div class="ph_two_zhengwen24020">8.陆家嘴财经早餐</div>
        </div>
        <div class="ph_two24041">
        <div class="ph_two_zhengwen24020">9.新闻美丽说</div>
    </div>
        <div class="ph_two24040">
            <div class="ph_two_zhengwen24020">10.新闻早餐</div>
        </div>
    </div>
        <div class="xmly_ph_one">
            <div class="ph_one_top">
                <h4>
                    <div class="h4_left"><a href="#"><img src="/book/assets/imgs/fufei.png" width="100%"></a></div>
                    <div class="h4_right"><a href="#">全部></a></div>
                </h4>
            </div>
            <div class="ph_two24080">
                <div class="ph_two_zhengwen24060">
                    <div class="ph_img"><img src="/book/assets/imgs/list2-1.jpg" width="80%"> </div>
                    <div class="ph_img_text"><a href="#"> 史上最强赘婿|爆笑双播...</a><br><span class="ph_img_span"> 幻樱空</span></div>
                </div>
            </div>
            <div class="ph_two24082">
                <div class="ph_two_zhengwen240602">  <div class="ph_img"><img src="/book/assets/imgs/list2-2.jpg" width="80%"> </div>
                    <div class="ph_img_text"><a href="#"> 《明朝败家子》爆笑|没...</a><br><span class="ph_img_span"> 有声的紫襟</span></div></div>
            </div>
            <div class="ph_two24080">
                <div class="ph_two_zhengwen24060"> <div class="ph_img"><img src="/book/assets/imgs/list2-3.jpg" width="80%"> </div>
                    <div class="ph_img_text"><a href="#"> 我修的可能是假仙</a><br><span class="ph_img_span"> Hi 牛大宝</span></div> </div>
            </div>
            <div class="ph_two24040">
                <div class="ph_two_zhengwen24020">4.国家地理中文网：小探险家双语...</div>
            </div>
            <div class="ph_two24041">
                <div class="ph_two_zhengwen24020">5.蔡永康的201情商课</div>
            </div>
            <div class="ph_two24040">
                <div class="ph_two_zhengwen24020">6.钱文忠讲佛教十三经</div>
            </div>
            <div class="ph_two24041">
                <div class="ph_two_zhengwen24020">7.王东岳的中西哲学启蒙课</div>
            </div>
            <div class="ph_two24040">
                <div class="ph_two_zhengwen24020">8.《剑来》下·烽火戏诸侯</div>
            </div>
            <div class="ph_two24041">
                <div class="ph_two_zhengwen24020">9.《红楼梦》全本有声剧</div>
            </div>
            <div class="ph_two24040">
                <div class="ph_two_zhengwen24020">10.陈果的幸福哲学课</div>
            </div>
        </div>
        <div class="xmly_ph_one">
            <div class="ph_one_top">
                <h4>
                    <div class="h4_left"><a href="#"><img src="/book/assets/imgs/renqipng.png" width="100%"> </a></div>
                    <div class="h4_right"><a href="#">全部></a></div>
                </h4>
            </div>
            <div class="ph_two24080">
                <div class="ph_two_zhengwen24060">
                    <div class="ph_img"><img src="/book/assets/imgs/list3-1.jpg" width="80%"> </div>
                    <div class="ph_img_text"><a href="#"> 猪猪侠之竞球小英雄</a><br><span class="ph_img_span"> 咏声动漫</span></div>
                </div>
            </div>
            <div class="ph_two24082">
                <div class="ph_two_zhengwen240602">  <div class="ph_img"><img src="/book/assets/imgs/list3-2.jpg" width="80%"> </div>
                    <div class="ph_img_text"><a href="#"> 少年的你，别再烦了 易...</a><br><span class="ph_img_span"> 超级制作</span></div></div>
            </div>
            <div class="ph_two24080">
                <div class="ph_two_zhengwen24060"> <div class="ph_img"><img src="/book/assets/imgs/list3-3.jpg" width="80%"> </div>
                    <div class="ph_img_text"><a href="#"> 大锤说史【周三、周日...</a><br><span class="ph_img_span"> 大锤说史</span></div> </div>
            </div>
            <div class="ph_two24040">
                <div class="ph_two_zhengwen24020">4.健康减肥瘦身法</div>
            </div>
            <div class="ph_two24041">
                <div class="ph_two_zhengwen24020">5.娱乐响当当</div>
            </div>
            <div class="ph_two24040">
                <div class="ph_two_zhengwen24020">6.每天3分钟 吃瘦自己 |严料坊</div>
            </div>
            <div class="ph_two24041">
                <div class="ph_two_zhengwen24020">7.食疗大讲堂</div>
            </div>
            <div class="ph_two24040">
                <div class="ph_two_zhengwen24020">8.PMCAFF产品社区</div>
            </div>
            <div class="ph_two24041">
                <div class="ph_two_zhengwen24020">9.环球故事会</div>
            </div>
            <div class="ph_two24040">
                <div class="ph_two_zhengwen24020">10.跑步心情</div>
            </div>
        </div>
    </div>
    <div class="youshengshu_right2">
        <div class="youshengshu_right_top">有声书飙升榜</div>
    <div class="right_260100">
		    <div class="right_240100">
		        <div class="right_img8080">
		    <img src="/book/assets/imgs/ranking1.jpg" width="100%">
		        </div>
		        <div class="right_14040">
		            <a href="#">重生空间鬼眼神棍</a><br><span class="ph_img_span">常乐_0g</span>
		        </div>
		    </div>
		</div>
            <div class="right_260100">
                <div class="right_240100">
                    <div class="right_img8080">
                        <img src="/book/assets/imgs/ranking2.jpg" width="100%">
                    </div>
                    <div class="right_14040">
                        <a href="#">抬龙棺</a><br><span class="ph_img_span">有声的亚当_新派</span>
                    </div>
                </div>
            </div>
            <div class="right_260100">
                <div class="right_240100">
                    <div class="right_img8080">
                        <img src="/book/assets/imgs/ranking3.jpg" width="100%">
                    </div>
                    <div class="right_14040">
                        <a href="#">替嫁娇妻，偏执总裁宠...</a><br><span class="ph_img_span">思念小说</span>
                    </div>
                </div>
            </div>
            <div class="right_text24040">
                <div class="right_text24020"> <span class="ph_img_span">4.</span> &nbsp;&nbsp;<b><a href="#"> 站权倾天下（免费）</a></b></div> 
             </div>
            <div class="right_text24040">
                <div class="right_text24020"> <span class="ph_img_span">5.</span> &nbsp;&nbsp;<b><a href="#"> 时间都知道（多人有声剧）</a></b></div> 
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
                <p>喜马拉雅电台是一个专业的音频分享平台，精彩内容包括有声书，相声段子，音乐，新闻，综艺娱乐、儿童、情感生活、评书、外语、培训讲座、百家讲坛、广播剧、历史人文、电台、商业财经、IT科技、健康养生、校园电台、汽车、旅游、电影、游戏等5453多个分类，上千万条声音。听书听催眠音乐，让你随时随地，听我想听！</p>
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
                <p>上海证大喜马拉雅网络科技有限公司 版权所有  公司地址：上海市闵行区紫星路588号2幢2062室  联系地址：上海市祖冲之路887弄88号402室A座  客服热线：400-838-5616</p>
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

<!-- 播放器 -->
 <div class="music-player">
    <!-- audio标签 -->
    <audio class="music-player__audio" ></audio>
    <!-- 播放器主体 -->
    <div class="music-player__main">
        <!-- 模糊背景 -->
        <div class="music-player__blur"></div>
        <!-- 唱片 -->
        <div class="music-player__disc">
            <!-- 唱片图片 -->
            <div class="music-player__image">
                <img width="100%" src="" alt="">
            </div>
            <!-- 指针 -->
            <div class="music-player__pointer"><img width="100%" src="/book/assets/imgs/cd_tou.png" alt=""></div>
        </div>
        <!-- 控件主体 -->
        <div class="music-player__controls">
            <!-- 歌曲信息 -->
            <div class="music__info">
                <h3 class="music__info--title">...</h3>
                <p class="music__info--singer">...</p>
            </div>
            <!-- 控件... -->
            <div class="player-control">
                <div class="player-control__content">
                    <div class="player-control__btns">
                        <div class="player-control__btn player-control__btn--prev"><i class="iconfont icon-prev"></i></div>
                        <div class="player-control__btn player-control__btn--play"><i class="iconfont icon-play"></i></div>
                        <div class="player-control__btn player-control__btn--next"><i class="iconfont icon-next"></i></div>
                        <div class="player-control__btn player-control__btn--mode"><i class="iconfont icon-loop"></i></div>
                    </div>
                    <div class="player-control__volume">
                        <div class="control__volume--icon player-control__btn"><i class="iconfont icon-volume"></i></div>
                        <div class="control__volume--progress progress"></div>
                    </div>
                </div>

                <!-- 歌曲播放进度 -->
                <div class="player-control__content">
                    <div class="player__song--progress progress"></div>
                    <div class="player__song--timeProgess nowTime">00:00</div>
                    <div class="player__song--timeProgess totalTime">00:00</div>
                </div>

            </div>

        </div>
    </div>
    <!-- 歌曲列表 -->
    <div class="music-player__list">
        <ul class="music__list_content">
            <!-- <li class="music__list__item play">123</li>
            <li class="music__list__item">123</li>
            <li class="music__list__item">123</li> -->
        </ul>
    </div>
</div>


<script type="text/javascript">
window.onload = function(){load_data();b()};

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

function load_data(){
	
	 var theme=${person.userId};
	 if(theme==null||theme==""){
		$("#cue").show(); 
		 $("#uname").html('登陆一下，让我了解你');
	 }else{	
		 $("#cue").hide();  
		 $("#uname").html('${person.nickName}');
		 $("#uname2").html('${person.nickName}');
		
	 }
	
}


 
</script>
 <script type="text/javascript" src="/book/assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="/book/assets/js/Cooldog.js"></script>	
	<script src="/book/assets/js/utill.js"></script>
	<script src="/book/assets/js/player.js"></script>
</body>
</html>