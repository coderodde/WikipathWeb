<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wikipath</title>
    </head>
    <body>
        <h3>The result shortest path:</h3>
        <ul>
            <c:forEach var="article_datum" items="${requestScope.solution}">
                <li>
                    <a href="${article_datum}">${article_datum}</a>
                </li>
            </c:forEach>
        </ul>
        <div style="color:red;">
            ${requestScope.error_msg}
        </div>
        <div>
            ${requestScope.result_msg}
        </div>
        <button onclick="window.history.back();">Go back</button>
    </body>
</html>
