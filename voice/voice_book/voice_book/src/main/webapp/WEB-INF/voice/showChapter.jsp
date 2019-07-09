<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/book/assets/css/demo.css">
    <link rel="stylesheet" href="/book/assets/css/sound.css">
    <link rel="stylesheet" type="text/css" href="/book/assets/css/normalize.css" /><!--CSS RESET-->
    <link rel="stylesheet" type="text/css" href="/book/assets/dist/css/main.min.css">
    <link rel="stylesheet" href="//at.alicdn.com/t/font_1247227_tfdmby2uv2t.css">
     <script  src="../assets/js/jquery-2.0.3.js"></script>
     <link rel="stylesheet" type="text/css" href="/book/assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/book/assets/css/index.css">
    <title>${album.name}</title>
</head>
<script>

  $(function(){
	  $("#certify").click(function(){
		  
		  location.href="../anchor/toCertify";  
	  })
	    $("#anchorManager").click(function(){
		 
		  location.href="../anmanager/toanCenter";  
	  })
	 
	  
  })
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
                                <span class="detail-box-nickname" id="uname2"></span>
                                <i class="icon-xiaoxi"></i>
                               <a href="../book/setting" > <i class="icon-setting"></i></a>
                                 <a href="../book/homepage" ><i class="icon-exit"></i></a>
                            </div>
                        </div>
                        <div class="detail-box-bottom">
                            <div class="detail-shortcut">快捷入口</div>
                            <a href="/book/my" class="iconNav-item2 ">
                                <i class="ic_zhuye">
                                </i>
                                <p class="title_tvdQ2">个人页</p>
                            </a>
                            <a href="/book/my" class="iconNav-item2 ">
                                <i class="ic_dingyue">
                                </i>
                                <p class="title_tvdQ2">订阅</p>
                            </a>
                            <a href="/book/my" class="iconNav-item2 ">
                                <i class="ic_lishi">
                                </i>
                                <p class="title_tvdQ2">历史</p>
                            </a>
                            <a href="/book/my" class="iconNav-item2 ">
                                <i class="ic_yigou">
                                </i>
                                <p class="title_tvdQ2">已购</p>
                            </a>
                            <a href="/book/my" class="iconNav-item2 ">
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
<div class="sound-detail">
    <div class="album-title">
        <a href="/book/tohomepage">首页</a>>
        <div class="catagory-box"> 有声书  <i class="iconfont iconicon"></i>  </div>>
         <a href="<%=request.getContextPath()%>/showAlbum?albumId=${album.id}" style="text-decoration: none;color: #000;">${album.name}</a>>
        ${chapter.name}
    </div>
    <div class="sound-bookcontent">

            <img src="${album.cover}" alt="">
            <div class="content-item">
                <p style="font-size: 24px;">  <strong>${chapter.name}</strong></p>
                <p><a href="" style="color: #ff0000; text-decoration:none;">有声书</a>
                    &nbsp;&nbsp;${newtime} &nbsp;&nbsp;&nbsp;&nbsp;<i  class="iconfont iconerji"></i>${chapter.playNumber}
                </p>
                <p class="catas"><a href=""><c:if test="${album.audienceSex==1}">男 </c:if> <c:if test="${album.audienceSex==0}">女 </c:if></a>   <a href="">${album.audienceCrowd} </a> <a href="">盗墓</a> <a href="">恐怖</a> <a href="">悬疑</a></p>
             	<div class="ready-player-1">
                    <audio crossorigin>
                        <source src="${audio.path}" type="audio/mpeg">
                    </audio>
                </div>
                <p class="catab">
                   <!--  <i class="iconfont iconbofang"></i> -->

                    <a href="${audio.path}" download="${audio.name}">   <i class="iconfont iconmsnui-download"></i> 下载</a>
                    <a href=" ">   <i class="iconfont icondingyue1"></i> 订阅</a>
                    <a href="">    <i class="iconfont iconfenxiang"></i>分享</a>
                </p>
            </div>
    </div>

    <div class="layout-main">
    <div class="sound-inf">
        <div class="see">声音简介</div>
    </div>
   <div class="info">
		 <p>【故事简介】</p>
		 <p>${album.introduction }</p>
    </div>

    <div class="comment-top">
     用户评论
    </div>
   <div class="comment-box">
   <c:choose>
   		<c:when test="${ not empty person.header}">
	   		<img src="${person.header}" alt="">
	   		<h4>${person.nickName}</h4>
   		</c:when>
   		<c:otherwise>
   		   <img src="/book/assets/imgs/comment.jpg" alt="">
   		</c:otherwise>
   </c:choose>
   		
    
      <!--  <textarea name="" id="" cols="92" rows="5"></textarea>
       <div class="btnn"> 0/300字
       <input type="button"  value="发表评论">
  		 </div>  -->
   <section class="tent_info">
   <!-- <form name="commnetForm" action="comment"> -->
		<div class="col-md-12 col-sm-12 col-xl-12 textarea one" >
			<textarea class="text_send" id="text_send" name="content"></textarea>
			<div class="col-md-12 col-sm-12 col-xl-12 btn btn_send">发表评论</div>
		</div>
		
		 <div class="col-md-12 col-sm-12 col-xl-12 one cont"  id="textSend" style="visibility:hidden" >
		
				<div class="col-md-2 col-sm-2 col-xl-12 one img">
					<c:choose>
						<c:when test="${ not empty person.header}">
							<img src="${person.header}" alt="">
						</c:when>
						<c:otherwise>
							<img src="/book/assets/imgs/comment.jpg">
						</c:otherwise>
					</c:choose>
				</div>
				<div class="col-md-10 col-sm-10 col-xl-12 one content">
				<div class="comment-right">
					<c:choose>
						<c:when test="${ not empty person.id}">
							<h4>${person.nickName}</h4>
						</c:when>
						<c:otherwise>
							<h4>匿名</h4>
						</c:otherwise>
					 </c:choose>
					
					<div class="comment-content-header three">
						<span id="timeNow" ><i class="glyphicon glyphicon-time two"></i></span>&nbsp;&nbsp;&nbsp;&nbsp;
						<span><i class="glyphicon glyphicon-map-marker two"></i>北京</span>
					</div>
					<p class="tent" id="tent"></p>
					<div class="comment-content-footer">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xl-12 three">
								<span><i class="glyphicon glyphicon-globe two"></i> 谷歌</span>
							</div>
						</div>
					</div>
					<div class="reply-list three">
						
					</div>
					<div class="col-md-12 col-sm-12 col-xl-12 content_text one three">
						<textarea class="col-md-10 col-sm-10 col-xl-10 con_back" id="con_back"></textarea>
						<div class="col-md-2 col-sm-2 col-xl-2 btn btn_back">提交</div>
					</div>
				</div>
			</div>	
	
				<div class="reply"  >
					<div class="three" id="reply" style="visibility: hidden;">
						<c:choose>
							<c:when test="${not empty person.id}">
							<a class="replyname">${person.nickName}</a>:<span >@brother</span><span id="backTime"></span>
							</c:when>
							<c:otherwise>
								<a class="replyname">匿名</a>:<span >@brother</span><span id="backTime"></span>
							</c:otherwise>
						 </c:choose>
						 <p><span id="conBack"></span></p>
					</div>
					
				</div>	
		</div> 
	<!-- 	</form> --> 
	</section>
   </div>
   <!--  <div class="commentbox">
    <div class="com-box">
        <img src="/book/assets/imgs/comment.jpg" alt="">
         <div class="comment-inf">
             <p style="margin: 0;color: orangered;">这里是名字</p>
             <p style="margin-bottom: 0">这里是评论</p>
             <span style="font-size: 12px;color: #cccccc;display: block;float: left;">2年前 </span>
           <div  class="ifunc" ><a href="">举报</a><a href="">回复</a><span>
               <i class="iconfont  iconzan1"></i>1400 </span>  </div>
         </div>
    </div>
        <div class="com-box">
            <img src="/book/assets/imgs/comment.jpg" alt="">
            <div class="comment-inf">
                <p style="margin: 0;color: orangered;">这里是名字</p>
                <p style="margin-bottom: 0">这里是评论</p>
                <span style="font-size: 12px;color: #cccccc;display: block;float: left;">2年前 </span>
                <div  class="ifunc" ><a href="">举报</a><a href="">回复</a><span>
               <i class="iconfont  iconzan1"></i>1400 </span>  </div>
            </div>
        </div>
    </div> -->

    </div>
    <div class="sound-card">
        <div class="sound-author">
            <div class="auhea">
            <i class="iconfont  iconzhubo" style="color: rgb(200,115,25); font-size: 20px;" ></i>  专辑主播
        </div>
        <div class="header">
            <img src="${author.header}" alt="">
            <span>${author.name}</span>
        </div>
        <p class="consum">
            <a href="" style="margin-left: 0;">  <i class="iconfont iconshengyin"></i> ${author.albumNumber}</a>
            <a href=""> <i class="iconfont iconzhuanji"></i> ${author.chapterNumber}</a>
            <a href=""><i class="iconfont iconzhongdianguanzhurenqun"></i>${author.fans} </a>
        </p>
        <p class="intro">简介：${author.signature}</p>
        <div class="auhea">
            <i class="iconfont iconbofang2"></i>  <i class="iconfont"></i>  所属专辑
        </div>
        <div class="album-item">

            <img src="${album.cover}" alt="">
            <div class="fonta"><a href="<%=request.getContextPath()%>/showAlbum?albumId=${album.id}">${album.name}</a>
            </div>
            <div class="fontb">${pvsum}</div>
        </div>
        <div class="aublum" style="margin-top: 20px;">
            <i class="iconfont  iconshengyin" style="color: rgb(233,122,56);"></i> <a href="" class="aww">更多声音</a> <a href="" class="more">更多</a>
        </div>
        <c:forEach items="${relaChapters}"  var="realChapter">
         <div class="sound-item">


            <img src="${album.cover}" alt="">
            <div class="fonta"><a href="<%=request.getContextPath()%>/showAlbum/showChapter?chapterId=${realChapter.id}&&albumId=${album.id}">${realChapter.name}</a>
            </div>

        </div> 
        
        </c:forEach>
            <div class="auhea" style="margin-top: 20px;">
                <i class="iconfont  iconxiangguantuijian" style="color: greenyellow;"></i>  相关推荐
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>
            <div class="album-item">

                <img src="/book/assets/imgs/alu.jpg" alt="">
                <div class="fonta"><a href="">阴间神探(付费版) |紫襟故事</a>
                </div>
                <div class="fontb">有声的紫襟</div>
            </div>

        </div>
    </div>
</div>
<!-- 底部-->
<div class="bottom-box">
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
<script src="/book/assets/dist/js/app.js"></script>
<script type="text/javascript" src="/book/assets/js/jquery-min.js"></script>
 <script type="text/javascript" src="/book/assets/js/index.js"></script> 
<script>
    document.addEventListener('DOMContentLoaded', function() {
        new GreenAudioPlayer('.ready-player-1');
    });
</script>

</body>
</html>