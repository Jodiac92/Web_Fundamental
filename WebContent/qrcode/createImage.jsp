<%@page import="java.io.File"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.IOException"%>
<%@page import="com.google.zxing.WriterException"%>
<%@page import="com.google.zxing.BarcodeFormat"%>
<%@page import="com.google.zxing.client.j2se.MatrixToImageWriter"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="com.google.zxing.common.BitMatrix"%>
<%@page import="com.google.zxing.qrcode.QRCodeWriter"%>
<%@ page language="java" contentType="application/json;charset=utf-8"%>

<%
			String url = request.getParameter("url");
			QRCodeWriter writer = new QRCodeWriter();
		try {
			BitMatrix qrCode = writer.encode(url, BarcodeFormat.QR_CODE, 300, 300);
			BufferedImage qrImage = MatrixToImageWriter.toBufferedImage(qrCode);
			//String name = request.getParameter("name"); => 이렇게 개발하지 않기
			request.setCharacterEncoding("utf-8");
			String path = request.getRealPath("/upload/qrcode");
			
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH)+1;
			
			path += "\\"+year+"\\"+month;
			
			File f = new File(path);
			if(!f.exists()){
				f.mkdirs();
			}
			long currentMills = System.currentTimeMillis();
			File f2 = new File(f, currentMills+".png");
			boolean isSuccess = ImageIO.write(qrImage, "PNG", f2);
			if(isSuccess){
				%>
				{"result" : "ok", "path" : "/upload/qrcode/<%=year %>/<%=month %>/<%=currentMills %>.png"}
				<% 
			}else{
				%>
				{"result" "fail"}
				<%
			}
			
		} catch (WriterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 %>
