<%-- 
    Document   : inicio
    Created on : 06-feb-2018, 8:42:45
    Author     : Royer
--%>

<%@page import="java.awt.Font"%>
<%@page import="org.jfree.ui.RefineryUtilities"%>
<%@page import="org.jfree.chart.demo.PieChartDemo1"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
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
      DefaultPieDataset dataset = new DefaultPieDataset();
      dataset.setValue("IPhone 5s" ,200 );  
      dataset.setValue("SamSung Grand" , 20 );   
      dataset.setValue("MotoG" , 20 );    
      dataset.setValue("Nokia Lumia" , 20 );
              dataset.setValue("Nokia 1" , 20 );
              dataset.setValue("1", 2);

      JFreeChart chart = ChartFactory.createPieChart(      
         "Lista de Ventas de Mobiles",   // chart title 
         dataset,          // data    
         true,             // include legend   
         true, 
         false);

      //int width = 640;   
      //int height = 480;   
      //File pieChart = new File( "PieChart.jpeg" ); 
      //ChartUtilities.saveChartAsJPEG( pieChart , chart , width , height ); 

//        PiePlot plot = (PiePlot) chart.getPlot();
//        plot.setLabelFont(new Font("SansSerif", Font.PLAIN, 12));
//        plot.setNoDataMessage("No data available");
//        plot.setCircular(false);
//        plot.setLabelGap(0.02);
//      
//       PieChartDemo1 demo = new PieChartDemo1("Pie Chart Demo 1");
//       demo.pack();
//       RefineryUtilities.centerFrameOnScreen(demo);
//       demo.setVisible(true);
      
      response.setContentType("image/png");
      OutputStream os = response.getOutputStream();
      ChartUtilities.writeChartAsPNG(os, chart, 1000, 500);
        
      
%>
    </body>
</html>
