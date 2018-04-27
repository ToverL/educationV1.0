<%@ page language="java" isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/contentstyle.css" />
<style type="text/css">
	tr{color: #000000; font-size: 12px; background-color:#eeeeee;text-align: center;}
	.tr_title{background-color:#d3eaef;color: #000000; font-size: 12px; }
	body{background-color:#f3f3f3;}
	table{
		border-collapse:collapse;border-style: solid;
	}

	td,table{border-color: #1243FF;}
	
</style>

<script type="text/javascript" src="../../js/jquery11.js"></script>

<script type="text/javascript">
	$(function () {
        $("tr:not(.tr_title)").hover(function() {
            //	alert("sss");
            $(this).css("background-color", "#dddddd");
        }, function() {
            $(this).css("background-color", "#eeeeee");
        });
    });
</script>
</head>
<body>
	<table width="98%"  align="center" border=1>
		<caption>班级信息</caption>
		<tr class="tr_title">
			<td>序号</td>
			<td>班级名称</td>
			<td>班级类型</td>
			<td>讲师</td>
			<td>教务班主任</td>
			<td>就业班主任</td>
			<td>开班时间</td>
			<td>结课时间</td>
			<td>状态</td>
			<td>备注</td>
			<td>操作</td>
		</tr>

		<c:forEach items="${pageInfo.list}" var="clazz" varStatus="state">
			<tr class='${clazz.state.stateid==102?"endClass":"having"}'>
				<td>${state.count+(pageInfo.pageNum-1)*pageInfo.pageSize}</td>
				<td>${clazz.classname }</td>
				<td>${clazz.classtype.statename}</td>
				<td>${clazz.teacher.name }</td>
				<td>${clazz.classGuide.name }</td>
				<td>${clazz.jobGuide.name }</td>
				<td>${clazz.createddate }</td>
				<td>${clazz.enddate }</td>
				<td style="color:${clazz.state.stateid==102?'red':'#000000'}">${clazz.state.statename}</td>
				<td>${clazz.comment}</td>
				<td><a href="getClassById?classId=${clazz.classid}">结课</a> | <a href="viewClassDetailsById?classId=${clazz.classid}">班级详细</a> | <a href="listStudentsByClassId?classId=${clazz.classid}">学生信息</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td style="text-align: left" colspan="11"><input type="button" value="增加新班级" onclick="window.open('../addClass','_self')"></td>
		</tr>
	</table>
<%@include file="../include/subPage.jsp"%>
</body>
</html>