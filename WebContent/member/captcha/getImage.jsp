<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
<%@ page language="java" contentType="image/jpg; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    String key = request.getParameter("key");
    out.clear();
    out = pageContext.pushBody();
        String clientId = "MzN4ZMwT_thqj9exk3XQ";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "iQQMi6i8V_";//애플리케이션 클라이언트 시크릿값";
        try {
            String apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
            if(responseCode==200) { // 정상 호출
                InputStream is = con.getInputStream();
                int read = 0;
                byte[] bytes = new byte[1024];
                
                while ((read =is.read(bytes)) != -1) {
                    bos.write(bytes, 0, read);
                }
                is.close();
                bos.close();
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
                String inputLine;
                StringBuffer resp = new StringBuffer();
                while ((inputLine = br.readLine()) != null) {
                    resp.append(inputLine);
                }
                br.close();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    %>