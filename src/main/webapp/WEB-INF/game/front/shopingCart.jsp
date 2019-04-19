<%@page import="com.lujian.game.model.ProductInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lujian.game.dto.CartDTO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>

<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>购物车</title>
<link rel="stylesheet" type="text/css"
	href="resources/lujian/css/style.css" />
<link rel="stylesheet" type="text/css" href="resources/lujian/css/style.css">
<link href="resources/bower_components/bootstrap/dist/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/bower_components/jeasyui/themes/bootstrap/easyui.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
/* 选项操作点击颜色改变 */
.myoption {
	color: black;
}

.clickhref {
	color: blue;
}

body{
background-color:  #F5F5F5

}
.navbar{

background-color: #FF0000;
}
</style>
<script type="text/javascript">

//计算一个商品小计
function onesubtotal(pid){
	   alert('ds');
	   var num=parseInt(document.getElementById("productnum"+pid).value);
	   //单价
	   var price= parseFloat($("#productprice"+pid).text());
	   //一个商品小计
       document.getElementById("onesubtotal"+pid).value=num*price;
	   }

</script>

	<!-- start header -->
	<header>
		<div class="top center">
			<div class="left fl">
				<ul>
					<li><a href="<%=basePath %>front/toMain" target="_blank">6284游戏</a></li>
					<li>|</li>
					<li><a href="<%=basePath %>front/toMain">我的6284</a></li>
					<li>|</li>
					<li><a href="<%=basePath %>front/toMain">金钻兑换</a></li>
					<li>|</li>
					<li><a href="<%=basePath %>front/toMain">我的收藏</a></li>
					<li>|</li>
					<li><a href="<%=basePath %>front/toMain">客服中心</a></li>
					<li>|</li>
					<li><a href="<%=basePath %>front/toMain">网站导航</a></li>
					<li>|</li>
					<li><a href="<%=basePath %>front/toMain">官方微信</a></li>
					<li>|</li>
					<li><a href="<%=basePath%>front/shopingCart">我的购物车</a></li>
					<li>|</li>
					<li><a href="<%=basePath %>front/order">我的订单</a></li>
					<li>|</li>
					<li><a href="<%=basePath %>front/toMain">主页</a></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="right fr">
				<div class="gouwuche fr">
					<a href="<%=basePath %>front/shopingCart">购物车</a>
				</div>
				<div class="fr">
					<ul>
						
						<li><a href="<%=basePath %>front/toMain">消息通知</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</header>
	<!--end header -->
</head>
<body>
	<div class="container-fluid " style="margin-top: 0px;padding-top: 0px">
		<!-- 主页导航栏 -->
	
<div class="xiantiao"></div>

		<!-- 中间模块 -->
		<div class="row mx-auto" style="width: 80%">

			<!-- 顶部导航栏设计 -->
			<div class="row mx-auto text-center"
				style="border: 1px solid #ff6700; width: 100%; height: 23%; background-color:#ff6700; margin-bottom: 0px">
				<div
					style="padding-left: 20px; padding-right: 15px; padding-top: 5px; border: px solid white;">
					<img class="rounded-circle img-thumbnail "
						src="resources/image/shoping.png"
						style="max-width: 78px; height: 80px">
				</div>

				<div
					style="padding-left: 30px; padding-top: 20px; border: px solid white;">
					<h3 class="text-left" style="color: white;padding-top: 10px">我的购物车</h3>
					<span class="text-left" style="color: white;padding-top: 10px">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</span>
				</div>
					<span style="color: white;padding-left: 100px;padding-top: 45px"></span>

				<!-- <div
					style="padding-left: 40px; padding-right: 15px; padding-top: 10px; border: px solid white;">
					<h4 class="text-left" style="color: white;">我的余额</h4>
					<span style="color: white;"><a href="" >没有钱，去充值</a></span>
				</div>
 -->
				

			</div>
			<!-- 顶部导航栏结束 -->
			<form action="shopingcart" method="post">

				<div class="col-md-12 mx-auto" style="padding-left: 0px;padding-right: 0px">

					
					<div class="row mx-auto text-center" style="width: 100%;border: 2px solid #ff6700;">
						<div class="col-md-12">


							<table class="table table-hover">
								<!-- 优化列表界面，自己设置列宽 -->
								<thead class="col-md-12">
									<tr class="row" style="background: #FFFFCC">
										<!-- 设置每一列宽 -->
										<th class=" col-md-1 col-1 text-center">编号</th>
										<th class=" col-md-3 col-1 text-center">图片</th>
										<th class=" col-md-2 col-1 text-center">名称</th>
										<th class=" col-md-1 col-1 text-center">价格</th>
										<th class=" col-md-2 col-1 text-center">数量</th>
										<th class=" col-md-2 col-1 text-center">小计</th>
										<th class=" col-md-1 col-1 text-center">操作</th>
									</tr>
								</thead>
								<tbody class="col-md-12">
                                     <% int s=0; %> 
                                  <c:choose>
                                  <c:when test="${empty productInfos }">
                                       <tr class="text-center">
                                       <td colspan="7"><img class="img-thumbnail "
						src="resources/image/notfound.jpg" style="max-width: 80%;"></td>
                                       </tr>
                                  </c:when>
                                  <c:otherwise>
                                    	<c:forEach items="${productInfos}" var="productInfo" >
								         <% s++;%>
										<tr class="row">
											<td class="col-md-1 col-1 text-center"><span id="">${productInfo.productId}</span></td>
											<input type="hidden" name="<%=s%>+${productInfo.productId}" value="${productInfo.productId}" id="<%=s %>"/>
											<td class="col-md-3 col-1 text-center"><img id="myimg"
												src="upload/${productInfo.productPhoto }"
												style="width: 40%;"></td>
											<td class="col-md-2 col-1 text-center">${productInfo.productName}</td>
											<td class="col-md-1 col-1 text-center"><span id="productprice<%=s %>">${productInfo.productPrice }</span>

											</td>

											<td class="col-md-2 col-1 text-center">
												<!-- 点击+1  -1 --> 
											<input type="button" class="sub" onclick="sub(<%=s %>)"  value="-" style="width: 23px;"> 
											<!-- 判断session商品数量 -->
												<c:forEach items="${sessionScope.carts}" var="cart">
													<c:if test="${cart.productId==productInfo.productId }">
	                                     	<!-- 	 显示商品数量 -->
											<input  id="productnum<%=s %>" readonly="readonly" value="${cart.productQuantity}" style="max-width: 21px;"> 				
													</c:if>
												</c:forEach>
											 <input  onclick="add(<%=s%>,'${productInfo.productStock}')" type="button" value="+" style="width: 23px;">
											</td>
											<td class="col-md-2 col-1 text-center">
												<!-- 总价 -->
										¥ <input id="onesubtotal<%=s %>" onload="onesubtotal(<%=s %>)" readonly="readonly" style="max-width:80%;border: none;" value="${productInfo.productPrice }">
											</td>
											<td class="col-md-1 col-1 text-center">
											  <button type="button" class="btn btn-outline-danger" onclick="delCart(<%=s %>)">删除</button>
											</td>
											
										</tr>
									</c:forEach>

                                    </c:otherwise>
                                  </c:choose>

								</tbody>
							</table>

						</div>

						<div style="border: px solid white;" class="float-right col-md-5">

							<button type="button" class="btn btn-outline-danger" onclick="clearShopping(event)">
								清空购物车</button>
							<button type="button" class="btn btn-outline-danger"
								onclick="toshopinglist(event)">继续购物</button>
							<button type="button" class="btn btn-outline-danger"
								onclick="toorderpay(event)">去结算</button>

						</div>
						<div style="border: px solid white; padding-left: 100px"
							class="float-right col-md-4">
						</div>
                          
						<div
							style="border: 1px solid #ff6700;; margin-left: 0px; background-color: #ff6700"
							class="float-right col-md-3">
							<ul
								style="list-style-type: none; padding-top: 10px; padding-left: 50px">
								<li><label style="color: white">
										&yen;&nbsp;小计&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input id="smallTotal" class="subtotal" value="0"readonly="readonly" style="width:60px;border: none;background-color: #ff6700"></input></li>
								<li><label style="color: white">
										&yen;&nbsp;配送费&nbsp;&nbsp;</label><input id="roadmoney<%=s%>" value="10"readonly="readonly" style="width:60px;border: none;background-color: #ff6700"></input></li>
								<li id="sumLi">
								   <label style="color: white">&yen;&nbsp;总价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
								   <input  id="totalSum" value="10" readonly="readonly" style="width:60px;border: none;background-color: #ff6700; "></input>
								</li>
							</ul>
						</div>
               
					</div>
				</div>
			</form>

		</div>
	</div>


	<!-- 底部版权 -->
	<div class="row mx-auto card"
		style="height: 100px; background-color: #e5e5e5; line-height: 100px">
		<!-- 静态包含，底部版权模块 -->
		<%@include file="common/copyright.jsp"%>
	</div>


	<!-- js文件放在最后面，提高网页响应速度 -->
	<script type="text/javascript"
		src="resources/bower_components/jquery/dist/jquery.js"></script>
	<script type="text/javascript"
		src="resources/bower_components/bootstrap/dist/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="resources/bower_components/jeasyui/jquery.easyui.min.js"></script>
	<script>
	 $(document).ready(function(){
	       //点击链接的时候调用
	      $("#pn").click(function(){
	    	  var productName = document.getElementById("productName").value;
	          //设置linkToCart的href的值
	          $("#pn").attr("href","front/productInfoOne?productName="+productName);
	         
	      });
	    });
</script>
	<script type="text/javascript">
	    
		$(function() {
                    
			$(".myoption").click(function() {
				$(".myoption")[0].addClass("clickhref");

			})
			
			$("onesubtotal"+<%=s %>)
		//计算每件商品小计
		    var smallSum=0.0;
			for(var i=1;i<="${fn:length(sessionScope.carts)}";i++ ){
				//每件商品的数量
				var num=parseInt(document.getElementById("productnum"+i).value);	
				//每件商品的价格
			    var price= parseFloat($("#productprice"+i).text()).toFixed(2);
			    //每件商品的总价
			    var productInfoSum=num*price;
			    document.getElementById("onesubtotal"+i).value=parseFloat(productInfoSum).toFixed(2);		
			    //所有商品小计相加
			    smallSum=parseFloat(smallSum)-0+productInfoSum;
			    
			}
			//小计		
			document.getElementById("smallTotal").value=parseFloat(smallSum).toFixed(2);
			//总计//当购物车没有商品时总价为0
			if(${fn:length(sessionScope.carts)}==0){
				document.getElementById("totalSum").value=parseFloat(smallSum).toFixed(2);
			}else{
			    document.getElementById("totalSum").value=parseFloat(smallSum+10).toFixed(2);
			}
		
		});
		  // 9.26需解决问题 总小计出现问题   另外用户直接输入会出现问题(用失去焦点时再次计算或者直接让input不能修改值)
		  function sub(pid){
			  //某件数量
			  var num=parseInt(document.getElementById("productnum"+pid).value);
			  //某件单价
			  var price= parseFloat($("#productprice"+pid).text()).toFixed(2);
			  
              var  onesubtotal=parseFloat(document.getElementById("onesubtotal"+pid).value).toFixed(2);
			  if(num>=2){
				  document.getElementById("productnum"+pid).value=num-1;//数量
				    //一个商品小计
	              document.getElementById("onesubtotal"+pid).value=parseFloat((num-1)*price).toFixed(2);
	              //所有商品小计 //每当按下减号应该减去每件商品的单价
	              //$(".subtotal").val(parseFloat($(".subtotal").val()).toFixed(2)-price);
	              var small=parseFloat(document.getElementById("smallTotal").value);
		          document.getElementById("smallTotal").value=(small-parseFloat(price)).toFixed(2);
		        //总计+配送费
		          document.getElementById("totalSum").value=(small+10-parseFloat(price)).toFixed(2);
				  }else{
					  document.getElementById("productnum"+pid).value=1;//数量
					  document.getElementById("onesubtotal"+pid).value=price;
					  }
				
		 }
			 
		  function add(pid,stock){
			
			  /*  先判断商品总量再加*/
			  var totalProductInfoStock=parseInt(stock);
			  var num=parseInt(document.getElementById("productnum"+pid).value);
			  var val="productnum"+pid;
			  //单价
			  var price= parseFloat($("#productprice"+pid).text()).toFixed(2);
			 
              var  onesubtotal=parseFloat(document.getElementById("onesubtotal"+pid).value).toFixed(2);
                  if(num<totalProductInfoStock){
                	  document.getElementById("productnum"+pid).value=num+1;//数量
                	  
                	 //一个商品小计
                	  document.getElementById("onesubtotal"+pid).value=parseFloat((num+1)*price).toFixed(2);
    		          var small=parseFloat(document.getElementById("smallTotal").value);
    		          document.getElementById("smallTotal").value=(small+parseFloat(price)).toFixed(2); 
    		          //总计+配送费
    		          document.getElementById("totalSum").value=(small+10+parseFloat(price)).toFixed(2);
    		       }
		}
	
		/* 点击到订单结算界面 */
		function toorderpay(event) {
			/* 点击到订单结算界面 */
			var totalprice=  $("#totalSum").val();
			//如果没有商品先购买商品
			if(totalprice==0.00)
				{
                     alert('\u2764 你的购物车为空，请先选择商品 ！');

				}else{


			var url = "front/orderpay?totalprice="+totalprice;

			window.location.href = url;
					}
		}
	</script>
	<script type="text/javascript">
		/*  到商品列表界面购物 */
		function toshopinglist(event) {
			/* 点击到继续购物，到商品列表界面 */
			//定义一个数组存放json
		    var arrJson=new Array();
			var productJson={};
			for(var i=1;i<="${fn:length(sessionScope.carts)}";i++ ){
				//每件商品的数量
				var num=parseInt(document.getElementById("productnum"+i).value);
				//每件商品的id
			    var stringid=document.getElementById(i).name;
			    //prodcutInfoId
				var productid=parseInt(stringid.split('+')[1]);
				productJson.productId=productid;
				productJson.productQuantity=num;
				arrJson.push(productJson);
				productJson={};			
			} 
			
			//发送ajax请求把商品数据id num传给后端
			 $.ajax({
               type:'POST',
               url:'front/shopCartsModify',
	           dataType:"json",      
	           contentType:"application/json",   
	           data:JSON.stringify(arrJson),
               success:function(){			
	           }
             });
		 
			var url = "front/productInfoList";
			window.location.href = url;
		}
		/* 清空购物车 */
		function clearShopping(event){
			 window.location.href="front/clearCarts";
		}
		/* 指定删除某一项商品 */
		function delCart(s){
			for(var i=1;i<="${fn:length(sessionScope.carts)}";i++ ){
				if(s==i){
					var stringid=document.getElementById(i).name;
				    //prodcutInfoId
					var productid=parseInt(stringid.split('+')[1]);
					window.location.href="front/delCart?productInfoId="+productid;
			  }
		  }
	   }
	</script>
</body>
</html>