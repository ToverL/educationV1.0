<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
	
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	tr{color: #000000; font-size: 12px; background-color:#eeeeee;text-align: center;}
	.tr_title{background-color:#d3eaef;color: #000000; font-size: 12px; }
	body{background-color:#f3f3f3;}
	table{
		border-collapse:collapse;border-style: solid;
	}

	td,table{border-color: #1243FF;}
	
</style>

<link rel="stylesheet" type="text/css" href="../../css/contentstyle.css" />



<script type="text/javascript" src="../../js/jquery11.js"></script>

<script type="text/javascript">
	$(function() {
        $("#classTypeId").load("../../getStates/5/${c.classtype.stateid}");
        $("#teacherId").load("../../getTeachers/${c.teacher.teacherid}");
        $("#classGuideId").load("../../getGuides/1/${c.classGuide.guideid}");
        $("#jobGuideId").load("../../getGuides/2/${c.jobGuide.guideid}");
	});
</script>

</head>
<body>
	<form action="../endClass" method="post">
	<input type="hidden" name="classid" value="${c.classid }">
		<table border="1" align="center">
			<caption>班级信息管理</caption>
			
			<tr>
				<td>班号</td>
				<td><input readonly="readonly" type="text" name="classname" value="${c.classname}"></td>
			<tr>
			<tr>
				<td>班级类型</td>
				<td align="left"><select name="classtypeid" id="classTypeId" disabled="disabled" style="width: 100px">
				</select></td>
			<tr>
			<tr>
				<td>讲师</td>
				<td align="left"><select name="teacherid" id="teacherId" disabled="disabled"
					style="width: 100px"></select></td>
			<tr>
			<tr>
				<td>教务班主任</td>
				<td align="left"><select name="classGuideid" id="classGuideId" disabled="disabled"
					style="width: 100px"></select></td>
			<tr>
			<tr>
				<td>就业班主任</td>
				<td align="left"><select name="classGuideid" id="jobGuideId" disabled="disabled"
					style="width: 100px"></select></td>
			<tr>
			
			<tr>
				<td>开班时间</td>
				<td><input type="text" name="createddate" value="${c.createddate}" readonly="readonly"></td>
			<tr>
			
			<tr>
				<td>备注</td>
				<td><input type="text" name="comment" value="${c.comment}" readonly="readonly"></td>
			<tr>
			
			<tr>
				<td>结班时间</td>
				
				<td><input type="text" name="enddate" value='<fmt:formatDate  value="${c.enddate==null?endDate:c.enddate}" pattern="yyyy-MM-dd"/>'></td>
			<tr>
			
			<tr >
				<td align="right" colspan="2"><input type="submit" value="结课"></td>
			<tr>
		</table>

	</form>
</body>
</html>