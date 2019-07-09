<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.Chapter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
 <link rel="stylesheet" href="/book/assets/css/demo.css">
    <link rel="stylesheet" href="/book/assets/css/sound.css">

<link rel="stylesheet"
	href="//at.alicdn.com/t/font_1247227_tfdmby2uv2t.css">
	 <script  src="assets/js/jquery-2.0.3.js"></script>
<title>${album.name}</title>
<script>

$(function(){
	  $("#certify").click(function(){
		  
		  location.href="anchor/toCertify";  
	  })
	    $("#anchorManager").click(function(){
		 
		  location.href="anmanager/toanCenter";  
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
<div class="album-detail">
		<div class="album-title">
			<a href="/book/tohomepage">首页</a>
			<div class="catagory-box">
				有声书 <i class="iconfont iconicon"></i>
			</div>
			${album.name}
		</div>
		<div class="album-bookcontent">
			<div class="content-top">
				<img src="${album.cover}" alt="">
				<div class="content-item">
					<p style="font-size: 20px;">
					<c:choose>
						  <c:when test="${album.isCompleted eq true}"><span class="wanben"> &nbsp; 完本
						  </c:when>
						   <c:otherwise><span class="wanben" style="background:blue;"> &nbsp; 连载 </c:otherwise>
						</c:choose>
						
						
						</span> ${album.name}
					</p>
					<p>
						<a href="" style="color: #ff0000; text-decoration: none;">有声书</a>
						&nbsp;&nbsp;${updateTime}更新 &nbsp;&nbsp;&nbsp; <i
							class="iconfont iconerji"></i> ${album.pvs}
					</p>
					<p class="catas">
						<a href=""><c:if test="${album.audienceSex==1}">男 </c:if> <c:if test="${album.audienceSex==0}">女 </c:if></a>
						 <a	 href="">${album.audienceCrowd} </a> <a href="">盗墓</a> <a href="">恐怖</a>
						<a href="">悬疑</a>
					</p>
					<p class="catab">
						<i class="iconfont iconbofang"></i> <a href="" id="play">播放全部</a>
						<a href=""> <i class="iconfont iconmsnui-download"></i> 下载	</a> 
						<a href=" "> <i class="iconfont icondingyue1"></i> 订阅</a>
						 <a href=""> <i class="iconfont iconfenxiang"></i>分享</a>
					</p>
				</div>
			</div>
			<div class="content-recom">
				<div class="recom-item">
					推荐 <a href="">播放推荐</a>
				</div>
				<c:forEach  items="${recommendchapters}" var="recomchapter">
				   				<div class="recom-item">
					<div class="itemcard">
						<div class="youzhi">优质</div>
						<div class="chename">
							<a href="<%=request.getContextPath()%>/showAlbum/showChapter?chapterId=${recomchapter.id}&&albumId=${album.id}"> ${recomchapter.name}</a>
						        
						</div>
						<span class="pv"> <i class="iconfont  iconerji"></i>
							${recomchapter.playNumber}
						</span> <span class="distime">2年前</span>
					</div>
					<div class="itemcard2">
						<i class="iconfont  iconbofang3"
							style="float: left; display: block;"></i>
						<div class="chename">
						<a href="<%=request.getContextPath()%>/showAlbum/showChapter?chapterId=${recomchapter.id}&&albumId=${album.id}">${recomchapter.name}</a>
						</div>
						<div class="cards">
							<span> <i class="iconfont iconxihuan"></i>
							</span> <span> <i class="iconfont  iconzhuanfa"></i>
							</span> <span> <i class="iconfont iconpinglun"></i></span>
						</div>
					</div>
				</div>
				</c:forEach>

				
				
			</div>
			<div class="content-intro">
				<p style="font-size: 20px;">【内容简介】</p>
				<p>${album.introduction}</p>
			</div>
			<div class="content-authorinf">
				<p style="font-size: 20px;">【作者/主播简介】</p>
				<p>
					<b>作者</b> ：${album.authorInf}
				</p>
				<p>
					<b>主播</b>
					：${author.authorInf}
				</p>
			</div>

		</div>

		<div class="album-author">
			<div class="auhea">
				<i class="iconfont  iconzhubo"
					style="color: rgb(200, 115, 25); font-size: 18px;"></i> 专辑主播
			</div>
			<div class="header">
				 <a href="anchor"><img src="${author.header}" alt=""><span>${author.name}</span></a>
			</div>
			<p class="consum">
				<a href="" style="margin-left: 0;"> <i
					class="iconfont iconshengyin"></i> ${author.chapterNumber}
				</a> <a href=""> <i class="iconfont iconzhuanji"></i> ${author.albumNumber}
				</a> <a href=""><i class="iconfont iconzhongdianguanzhurenqun"></i>${author.fans}
				</a>
			</p>
			<p class="intro">简介：${author.signature}</p>
			<div class="aublum">
				<i class="iconfont iconbofang2"></i> <a href="" class="aww">TA的专辑</a>
				<a href="" class="more">更多</a>
			</div>
			<c:forEach items="${albums }"  var="album">
				<div class="album-item">

				<img src="${album.cover}" alt="">
				<div class="fonta">
					<a href="<%=request.getContextPath()%>/showAlbum?albumId=${album.id}">${album.name}</a>
				</div>
				<div class="fontb">${album.pvs}</div>
			</div>
			
			
			</c:forEach>
		
		
			<div class="auhea" style="margin-top: 40px;">
				<i class="iconfont iconhuo" style="color: #ff553a; font-size: 20px;"></i>
				相关搜索
			</div>
			<div class="serch-container"></div>
			<div class="auhea" style="margin-top: 20px;">
				<i class="iconfont iconxiangguantuijian"
					style="color: yellow; font-size: 20px;"></i> 相关推荐
			</div>
			<div class="album-item">

				<img src="assets/imgs/alu.jpg" alt="">
				<div class="fonta">
					<a href="">阴间神探(付费版) |紫襟故事</a>
				</div>
				<div class="fontb">有声的紫襟</div>
			</div>
			<div class="album-item">

				<img src="assets/imgs/alu.jpg" alt="">
				<div class="fonta">
					<a href="">阴间神探(付费版) |紫襟故事</a>
				</div>
				<div class="fontb">有声的紫襟</div>
			</div>
			<div class="album-item">

				<img src="assets/imgs/alu.jpg" alt="">
				<div class="fonta">
					<a href="">阴间神探(付费版) |紫襟故事</a>
				</div>
				<div class="fontb">有声的紫襟</div>
			</div>
			<div class="album-item">

				<img src="assets/imgs/alu.jpg" alt="">
				<div class="fonta">
					<a href="">阴间神探(付费版) |紫襟故事</a>
				</div>
				<div class="fontb">有声的紫襟</div>
			</div>
			<div class="album-item">

				<img src="assets/imgs/alu.jpg" alt="">
				<div class="fonta">
					<a href="">阴间神探(付费版) |紫襟故事</a>
				</div>
				<div class="fontb">有声的紫襟</div>
			</div>
			<div class="album-item">

				<img src="assets/imgs/alu.jpg" alt="">
				<div class="fonta">
					<a href="">阴间神探(付费版) |紫襟故事</a>
				</div>
				<div class="fontb">有声的紫襟</div>
			</div>
			<div class="album-item">

				<img src="assets/imgs/alu.jpg" alt="">
				<div class="fonta">
					<a href="">阴间神探(付费版) |紫襟故事</a>
				</div>
				<div class="fontb">有声的紫襟</div>
			</div>
			<div class="album-item">

				<img src="assets/imgs/alu.jpg" alt="">
				<div class="fonta">
					<a href="">阴间神探(付费版) |紫襟故事</a>
				</div>
				<div class="fontb">有声的紫襟</div>
			</div>
		</div>

		<div class="album-chapter"   >
		
			<div class="chapter-item">专辑里的声音(1133)</div>
			 <!-- 分页操作-->
    <% 
         List<Chapter> list = (List<Chapter>)request.getAttribute("chapters");  //此处是取出所存储的数据
         int page_current = 1; //当前页数
         int page_begin = 0;  //起始点,注意:下标从0开始
         int page_end = 9;   //终点,每页十条信息
         int total_count = 0;
         if(list != null)
            total_count = list.size();   //信息的总量
         int page_total = total_count / 10 + (total_count % 10 != 0 ? 1 : 0);
         if(request.getParameter("begin") != null) {
        	 page_current = Integer.parseInt(request.getParameter("begin"));  //获取当前页数
                        }
         page_begin = (page_current - 1) * 10;
         page_end = page_begin + 9 > total_count ? total_count : page_begin + 9;
         request.getSession().setAttribute("page_current", page_current);  //保存到session中
         request.getSession().setAttribute("page_total", page_total);
    %>


			<c:forEach  items="${chapters}" var="chapter" begin="<%=page_begin %>" end="<%=page_end %>" >
			
				<div class="chapter-item">
				<div class="itemcard">
					<div class="orders">${chapter.order}</div>
					<div class="chename">
						<a href="<%=request.getContextPath()%>/showAlbum/showChapter?chapterId=${chapter.id}&&albumId=${album.id}">${chapter.name}</a>
					</div>
					<span class="pv"> <i class="iconfont  iconerji"></i> ${chapter.playNumber}
					</span> <span class="distime">2年前</span>
				</div>
				<div class="itemcard2">
					<i class="iconfont  iconbofang3"
						style="float: left; display: block;"></i>
					<div class="chename">
						<a href="<%=request.getContextPath()%>/showAlbum/showChapter?chapterId=${chapter.id}&&albumId=${album.id}">${chapter.name}</a>
					</div>
					<div class="cards">
						<span> <i class="iconfont iconxihuan"></i>
						</span> <span> <i class="iconfont  iconzhuanfa"></i>
						</span> <span> <i class="iconfont iconpinglun"></i></span>
					</div>
				</div>
			</div>	
			</c:forEach>
			<c:if test="${sessionScope.page_current != 1 }">
			<li style="list-style: none;"><a href="<%=request.getContextPath()%>/showAlbum?begin=${sessionScope.page_current - 1 }&&albumId=${album.id}" style="text-decoration: none;
		    display: inline-block;">上一页</a></li>
			</c:if>
			<c:if test="${sessionScope.page_current != sessionScope.page_total }">
			<li style="list-style: none;"><a href="<%=request.getContextPath()%>/showAlbum?begin=${sessionScope.page_current + 1 }&&albumId=${album.id}" style="text-decoration: none;
		    display: inline-block;">下一页</a></li>
			</c:if>
			当前页数 : ${sessionScope.page_current } / ${sessionScope.page_total }
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



</body>
</html>