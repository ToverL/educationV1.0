<%@ page language="java" isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<script type="text/javascript" src="../../js/jquery11.js"></script>
	<script type="text/javascript">
		$(function () {

            $("#subPage_searche_btn").click(function() {
                var value = $("#subPage_searche_txt").val();
                var p = /^[1-9][0-9]*$/;
                if (p.test(value)) {
                    if (value > 0 && value <= parseInt("${pageInfo.pages}")) {
                        location.href=value;
                    } else {
                        alert("页号不在有效范围内");
                        $("#subPage_searche_txt").val("");
                    }
                } else {
                    alert("非法页号");
                    $("#subPage_searche_txt").val("");
                }
            });

        });



	</script>


</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0"
	   cellspacing="0" style="border-style: none; border-width: 0px;">
	<tr>
		<td height="6" style="border-width: 0px;"><img
				src="../../images/spacer.gif" width="1" height="1" /></td>
	</tr>
	<tr>
		<td height="33" style="border-width: 0px;"><table width="100%"
														  border="0" align="center" cellpadding="0" cellspacing="0"
														  class="right-font08">
			<tr>
				<td width="50%" style="border-width: 0px;">共 <span
						class="right-text09">${pageInfo.total }</span> 条 |每页 <span
						class="right-text09">${pageInfo.pageSize }</span> 条 |共 <span
						class="right-text09">${pageInfo.pages }</span> 页 | 第 <span
						class="right-text09">${pageInfo.pageNum}</span> 页
				</td>
				<td width="49%" align="right" style="border-width: 0px;">[<a
						href="${pageInfo.firstPage}" class="right-font08"
						id="btn_search_first">首页</a> | <c:if
						test="${pageInfo.pageNum>1 }">
					<a
							href="${pageInfo.prePage}" id="btn_search_pre"
							class="right-font08">上一页</a> |
				</c:if> <c:if
						test="${pageInfo.pageNum<pageInfo.pageSize }">
					<a
							href="${pageInfo.nextPage}" id="btn_search_next"
							class="right-font08">下一页</a> |
				</c:if> <a
						href="${pageInfo.lastPage}" id="btn_search_last"
						class="right-font08">末页</a>] 转至：
				</td>
				<td width="1%"><table width="20" border="0" cellspacing="0"
									  cellpadding="0">
					<tr>
						<td width="1%"><input name="textfield3"
											  id="subPage_searche_txt" type="text" class="right-textfield03"
											  size="1" /></td>
						<td width="87%"><input name="Submit23222" type="button"
											   id="subPage_searche_btn" class="right-button06" value="GO" /></td>
					</tr>
				</table></td>
			</tr>
		</table></td>
	</tr>
</table>
</body>

</html>


