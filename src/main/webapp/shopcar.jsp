<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
    <script type="text/javascript">
    	function updateBook(id,num){
			var url = "showcarAction_updateshop?id="+id+"&num="+num;    		
			window.location.href = url;
    	}
    </script>
   

    <table border="1" align="center" width="80%">
    	<caption>购物车列表</caption>
		<tr>
			<th>商品编号</th>
			<th>商品名称</th>
			<th>商品价格</th>
			<th>商品产地</th>
			<th>商品数量</th>
			<th>单项总价</th>
		
		</tr>  
		
			<s:iterator value="#session.carshop.map" var="car">
			<tr>
				<td><s:property value="#car.value.good.gid"/></td>
				<td><s:property value="#car.value.good.name"/></td>
				<td><s:property value="#car.value.good.price"/></td>
				<td><s:property value="#car.value.good.address"/></td>		
				<td>
					<input 
						type="text"
						size="1"
						value="<s:property value="#car.value.number"/>"
						onblur="updateBook(<s:property value="#car.value.good.gid"/>,this.value)"
					/>
				</td>
		    <td><s:property value="#car.value.itemprice"/></td>
				
				<td>
					<a href="showcarAction_delete?id=<s:property value="#car.value.good.gid"/>">
						删除
					</a>
				</td>
			</tr>
		
		</s:iterator> 
		<tr>
			<td colspan="3" align="center">
				总价：<s:property value="#session.carshop.totalprice"/>
			</td>
			<td>
				<a href="showcarAction_clearshop">
					清空购物车
				</a>
			</td>
			<td>
				<a href="#">
					继续购物
				</a>
			</td>
		</tr>
	<tr>	
		<td colspan="6" align="center">
			<a href="showcarAction_w2db?uid=<s:property value='#session.exituser.uid'/>">下单</a>	
		</td>
	</tr>		
    </table>
  </body>
</html>
