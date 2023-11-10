<%-- 
    Document   : Page3
    Created on : 10 Kas 2023, 13:27:32
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
        String isim = request.getParameter("isim");
        String mail = request.getParameter("mail");
        String yas = request.getParameter("yas");

        out.println("İsim:" + isim);
        out.println("Mail:" + mail);
        out.println("Yaş" + yas);


    %>
</body>
</html>
