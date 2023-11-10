<%-- 
    Document   : Page2
    Created on : 10 Kas 2023, 13:27:54
    Author     : bsra_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
        if (request.getParameter("isim") != null
                && request.getParameter("mail") != null
                && request.getParameter("yas") != null) {
            String isim = request.getParameter("isim");
            String mail = request.getParameter("mail");
            String yas = request.getParameter("yas");
            boolean kontrol = false;
            try {
                Integer.parseInt(yas);
                kontrol = true;
            } catch (Exception e) {

            }
            if (!mail.contains("@")) {
                out.println("@ İşsareti olmak zorunda");
            } else if (kontrol == false) {
                out.println("Yaş tam sayı olmak zorunda");
            } else {
                Cookie cookie1 = new Cookie("isim", isim);
                cookie1.setMaxAge(60 * 60 * 24);
                response.addCookie(cookie1);
                Cookie cookie2 = new Cookie("mail", mail);
                cookie2.setMaxAge(60 * 60 * 24);
                response.addCookie(cookie2);

                Cookie cookie3 = new Cookie("yas", yas);
                cookie3.setMaxAge(60 * 60 * 24);
                response.addCookie(cookie3);

            }

        } else {
            out.println("Boş Olamaz");
        }


    %>
</body>
</html>
