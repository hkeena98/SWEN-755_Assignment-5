<%--
  Created by IntelliJ IDEA.
  User: gavinburris
  Date: 11/8/22
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>Login Success Page</title>
    <script type="text/javascript">
        function alertTimeOut() {
            alert("Session will be come inactive after 1 minute of inactivity");
            document.cookie = "session=true"
        }

        function logOut() {
            console.log("Logged Out!")
            document.cookie = "logOut=true"
            <%
                response.sendRedirect("index.jsp");
            %>
        }

        let btn = document.getElementById("btn");
        btn.addEventListener('click', () => {
            logOut()
        });
    </script>
</head>
<body onload="alertTimeOut()">
<%
    //allow access only if session exists
    String user = null;
    System.out.println("HERE1");
    if(session.getAttribute("username") == null){
        System.out.println("HERE2");
        response.sendRedirect("index.jsp");
    }else user = (String) session.getAttribute("username");
%>
<h3>Hi <%=user %>, Admin login successful</h3>
User=<%=user %>
<
<%--<input type="button" id="btn">--%>
<br>
</body>
</html>
</html>
