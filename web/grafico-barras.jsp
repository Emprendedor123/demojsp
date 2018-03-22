<%-- 
    Document   : inicio
    Created on : 06-feb-2018, 8:42:45
    Author     : Royer
--%>

<%@page import="java.awt.Color"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.jfree.chart.ChartFactory" %>
<%@page import="org.jfree.chart.ChartUtilities" %>
<%@page import="org.jfree.chart.JFreeChart" %>
<%@page import="java.io.File" %>
<%@page import="org.jfree.chart.plot.*" %>
<%@page import="java.io.*" %>
<%@page import="org.jfree.data.category.DefaultCategoryDataset" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%  // Create a simple Bar chart
    DefaultCategoryDataset dataset = new DefaultCategoryDataset();
    
        dataset.setValue(5, "Compras", "Enero");
        dataset.setValue(7, "Ventas", "Enero");
        dataset.setValue(7, "Compras", "Febrero");
        dataset.setValue(9, "Ventas", "Febrero");
        dataset.setValue(5, "Compras", "Abril");
        dataset.setValue(10, "Compras", "Mayo");
        dataset.setValue(10, "Compras", "Junio");
        dataset.setValue(10, "Compras", "Julio");
        dataset.setValue(1, "Ventas", "Agosto");
        dataset.setValue(2, "Compras", "Septiembre");
        dataset.setValue(10, "Ventas", "Octubre");
        dataset.setValue(10, "Compras", "Noviembre");
        dataset.setValue(1, "Compras", "Diciembre");
        dataset.setValue(1, "Ventas", "Diciembre");
        
        JFreeChart chart = ChartFactory.createBarChart3D("Llamadas Mensuales","2011", "Numero de Llamadas", dataset, PlotOrientation.VERTICAL, false,true, false);
        
        CategoryPlot catplot = chart.getCategoryPlot();
        catplot.setRangeGridlinePaint(Color.BLACK);
        
        try {
            response.setContentType("image/png");
            OutputStream os = response.getOutputStream();
            ChartUtilities.writeChartAsPNG(os, chart, 1000, 500);
            

            
//            File pieChart = new File("D:\\PieChart1.png" ); 
//            ChartUtilities.saveChartAsPNG(pieChart, chart, 1000, 500);
 
 
        } catch (IOException e) {
            System.err.println("Error creando grafico.");
        }
%>
    </body>
</html>
