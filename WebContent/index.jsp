
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String basePath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" src="js/LodopFuncs.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/GetLoDop.js"></script>
<object id="LODOP" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA"
	width=0 height=0>
	<embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0></embed>
</object>
<script language="javascript" type="text/javascript">
	var LODOP; //声明为全局变量 
	function prn1_preview() {
		PrintMytable();
		LODOP.PREVIEW();
	};
	function prn1_print() {
		PrintMytable();
		LODOP.PRINT();
	};

	function PrintMytable() {
		LODOP = getLodop(document.getElementById('LODOP'), document
				.getElementById('LODOP_EM'));
		LODOP.PRINT_INIT("银燕公司宽带收费明细");
		LODOP.SET_PRINT_PAGESIZE(1, 0, 0, "A4");
		LODOP.ADD_PRINT_TEXT(30, 280, 500, 50, "银燕公司宽带财务报表明细")
		LODOP.SET_PRINT_STYLEA(1, "ItemType", 1);
		LODOP.SET_PRINT_STYLEA(1, "FontSize", 14);
		LODOP.SET_PRINT_STYLEA(1, "Bold", 1);
		LODOP.ADD_PRINT_TEXT(1050, 370, 200, 22, "第#页/共&页");
		LODOP.SET_PRINT_STYLEA(2, "ItemType", 2);
		LODOP.SET_PRINT_STYLEA(2, "HOrient", 1);
		LODOP.ADD_PRINT_TEXT(90, 50, 100, 50, "共：3 条记录")
		LODOP.SET_PRINT_STYLEA(3, "ItemType", 1);
		LODOP.ADD_PRINT_TEXT(90, 300, 350, 50, "时间范围：2015 至 2016")
		LODOP.SET_PRINT_STYLEA(4, "ItemType", 1);
		LODOP.ADD_PRINT_TABLE(110, 33, 750, 900,
				document.documentElement.innerHTML);
		//LODOP.ADD_PRINT_TABLE(110, 33, 750, 900, document.getElementById("printdiv").innerHTML);
	};
	$(function() {
		$("#preview").click(function() {
			prn1_preview();
		});
		$("#print").click(function() {
			prn1_print();
		});
	});
</script>
</head>
<body>
	<input type="button" value="preview" id="preview">
	<input type="button" value="print" id="print">
</body>
</html>