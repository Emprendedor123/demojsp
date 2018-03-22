<%-- 
    Document   : export-excel
    Created on : 06-feb-2018, 19:05:30
    Author     : Royer
--%>

<%
//response.setContentType("application/vnd.ms-excel");
//response.setHeader("Content-Disposition", "attachment; filename=users.xls");


//response.setContentType("application/pdf");
//response.setHeader("Content-Type", "application/pdf");
//response.setHeader("Content-Disposition","attachment;filename=Saba_PhBill.pdf");

//response.setContentType("application/pdf");
//response.setHeader("Content-disposition","attachment;filename="+ "testPDF.pdf");

//response.setContentType("application/pdf");
//response.setContentLength(content.length);
//response.setHeader("Content-Disposition", "attachment; filename=users123.pdf");
//response.setHeader("Content-Disposition", "inline; filename=123.pdf");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%
//response.setContentType("application/pdf");
//response.setContentType("application/pdf;");
//response.setHeader("Content-Disposition", "attachment; filename=123.pdf");
%>


<%
//response.setContentType("application/vnd.ms-excel");
//response.setHeader("Content-Disposition", "attachment; filename=users.xls");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <img src="grafico-barras.jsp"/>
        <table border="1">
            <thead>
                <tr>
                    <th>idproducto - ejemplo</th>
                    <th>producto - ejemplo</th>
                </tr>
            </thead>
            <tbody>
                
                <!-- inicio foreach spring --> 
                <tr>
                    <td>CODPRODUCTO 1</td>
                    <td>Lomo Saltado</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                </tr>
                <!-- fin foreach --> 
            </tbody>
        </table>

    </body>
</html>
