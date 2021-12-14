<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="left">
                    <div class="sushi">
                        <c:if test="${not empty iderror}">
                            ${iderror}
                        </c:if>
                        <c:if test="${empty iderror}">
                            <div class="sushi_title">${sushi.name}</div>
                            <div class="sushi_detail">
                                <div class="sushi_image">
                                    <img src="${imagePath}${sushi.image}" alt=""/>
                                </div>
                                ${sushi.detailDes}
                            </div>
                            <div class="sushi_price">
                                Price: ${sushi.price} $
                            </div>
                        </c:if>
                    </div>
                </div>
                <jsp:include page="Right.jsp"/>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
