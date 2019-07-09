
$(".btn_send").on('click',function(){
	var now = time()
	//获取评论信息
	var text_send = $("#text_send").val();
	if(text_send == ""){
		return false;
	}

	 var nowtime =document.getElementById('timeNow');
	 var textSend =document.getElementById('textSend');
	

	 nowtime.innerHTML=now;
	 var tent =document.getElementById('tent');
	 tent.innerHTML=text_send;
	 $(".tent_info").append(textSend.innerHTML);
	 //document.commnetForm.submit();
	 $("#textSend").hide();
	$(".text_send").val("");
})

$(".content_text").show();
$(".tent_info").on('click','.btn_back',function(){
	
	var back_time = time()

	
	//获取评论信息
	var con_back = $(this).parent().parent().parent().find("#con_back").val();
	if(con_back == ""){
		return false;
	}

	//$(this).parent().parent().parent().find(".reply-list").append(html_back);
	var reply =document.getElementById('reply');
	

	 var conBack =document.getElementById('conBack');
	 var backTime =document.getElementById('backTime');
	 backTime.innerHTML=back_time;
	
	 conBack.innerHTML=con_back;
	 
	$(this).parent().parent().parent().find(".reply-list").append(reply.innerHTML);
	 //$(".reply-list").append(reply.innerHTML);
	$(this).parent().parent().parent().find("#con_back").val("");
	
})

//评论提交
function time(){
	function time(s) {
	    return s < 10 ? '0' + s: s;
	}
	var myDate = new Date();
	//获取当前年
	var year=myDate.getFullYear();
	//获取当前月
	var month=myDate.getMonth()+1;
	//获取当前日
	var date=myDate.getDate(); 
	var h=myDate.getHours();       //获取当前小时数(0-23)
	var m=myDate.getMinutes();     //获取当前分钟数(0-59)
	var s=myDate.getSeconds();  
	return year+'-'+time(month)+"-"+time(date)+" "+time(h)+':'+time(m)+":"+time(s);
}
