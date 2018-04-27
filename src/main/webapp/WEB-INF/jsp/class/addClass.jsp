<%--
  Created by IntelliJ IDEA.
  User: 刘佳伟
  Date: 2018/4/22
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>addClass</title>
    <script type="text/javascript" src="../js/jquery11.js"></script>
    <script type="text/javascript">
        $(function () {
           $("#classTypeId").load("../getStates/5/0");
            $("#teacherId").load("../getTeachers/0");
            $("#classGuideId").load("../getGuides/1/0");
            $("#jobGuideid").load("../getGuides/2/0");

            $("#btn_submit").click(function () {

                if(confirm("确认创建吗？")){
                    $("form").submit();
                }
            });
        });

    </script>

    <link href="../css/table.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="../class/saveClass" method="post">
    <table border="1" align="center">
        <caption>班级信息管理</caption>
        <tr>
            <td>班号</td>
            <td><input type="text" name="classname" id="className"><span id="span_className"></span></td>

        <tr>
        <tr>
            <td>班级类型</td>
            <td><select name="classtypeid" id="classTypeId" style="width: 100px">
            </select></td>
        <tr>
        <tr>
            <td>讲师</td>
            <td><select name="teacherid" id="teacherId"
                        style="width: 100px"></select></td>
        <tr>
        <tr>
            <td>教务班主任</td>
            <td><select name="classGuideid" id="classGuideId"
                        style="width: 100px"></select></td>
        <tr>
        <tr>
            <td>就业班主任</td>
            <td><select name="jobGuideid" id="jobGuideid"
                        style="width: 100px"></select></td>
        <tr>

        <tr>
            <td>开班时间</td>
            <td><input type="text" name="createddate" id="txt_createdDate"><span id="span_createdDate"></span></td>
        <tr>

        <tr>
            <td>备注</td>
            <td><textarea name="comment" rows="4" cols="20"></textarea></td>
        <tr>

        <tr align="right">
            <td colspan="2"><input type="button" value="创建" id="btn_submit"></td>
        <tr>
    </table>

</form>
</body>
</html>
