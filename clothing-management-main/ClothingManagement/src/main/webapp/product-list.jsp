<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="Site keywords here">
    <meta name="description" content="#">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Site Title -->
    <title>Product List</title>

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;0,900;1,300;1,400;1,500;1,700;1,900&display=swap"
          rel="stylesheet">

    <!-- Fav Icon -->
    <link rel="icon" href="img/favicon.png">

    <!-- sherah Stylesheet -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome-all.min.css">
    <link rel="stylesheet" href="css/charts.min.css">
    <link rel="stylesheet" href="css/datatables.min.css">
    <link rel="stylesheet" href="css/jvector-map.css">
    <link rel="stylesheet" href="css/slickslider.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .pagination a {
            padding: 8px 12px;
            margin: 0 5px;
            border: 1px solid #ddd;
            text-decoration: none;
            color: #333;
        }

        .pagination a:active {
            background-color: #09ad95;
            color: white;
            font-weight: bold;
        }

        .pagination a:hover {
            background-color: #ddd;
        }

        .search-form {
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .search-input {
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 5px;
            width: 250px;
        }

        .search-button {
            padding: 5px 15px;
            background-color: #09ad95;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .search-button:hover {
            background-color: #078c76;
        }
    </style>

</head>
<body id="sherah-dark-light">

<div class="sherah-body-area">
    <jsp:include page="include/sidebar.jsp"></jsp:include>
    <jsp:include page="include/header.jsp"></jsp:include>
    <!-- sherah Dashboard -->
    <section class="sherah-adashboard sherah-show">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="sherah-body">
                        <!-- Dashboard Inner -->
                        <div class="sherah-dsinner">
                            <div class="row align-items-center justify-content-between">
                                <div class="col-6">
                                    <div class="sherah-breadcrumb mg-top-30">
                                        <h2 class="sherah-breadcrumb__title">Manage Product</h2>
                                        <ul class="sherah-breadcrumb__list">
                                            <li><a href="product-list">Home</a></li>
                                            <c:if test="${sessionScope.role == 1 || sessionScope.role == 2}">
                                            <li class="active"><a href="add-product">Add Product</a></li>
                                            </c:if>
                                        </ul>

                                    </div>
                                </div>
                                <div class="col-6">
                                    <form action="product-list" method="post" class="search-form">
                                        <input type="text" name="search" placeholder="Search..." value="${search}"
                                               class="search-input">
                                        <button type="submit" class="search-button">Search</button>
                                    </form>
                                </div>
                            </div>
                            <div class="sherah-table sherah-page-inner sherah-border sherah-default-bg mg-top-25">
                                <table id="sherah-table__vendor" class="sherah-table__main sherah-table__main-v3">
                                    <thead class="sherah-table__head">
                                    <tr>
                                        <th class="sherah-table__column-2 sherah-table__h2">Serial No</th>
                                        <th class="sherah-table__column-2 sherah-table__h2">Name</th>
                                        <th class="sherah-table__column-2 sherah-table__h2">Image</th>
                                        <th class="sherah-table__column-2 sherah-table__h2">Category</th>
                                        <th class="sherah-table__column-2 sherah-table__h2">Price</th>
                                        <c:if test="${sessionScope.role == 1 || sessionScope.role == 2}">
                                            <th class="sherah-table__column-2 sherah-table__h2">MinQuantity</th>
                                            <th class="sherah-table__column-2 sherah-table__h2">Quantity</th>
                                        </c:if>
                                        <c:if test="${sessionScope.role == 4}">
                                            <th class="sherah-table__column-2 sherah-table__h2">Quantity</th>
                                        </c:if>
                                        <th class="sherah-table__column-2 sherah-table__h2">Status</th>
                                        <th class="sherah-table__column-2 sherah-table__h2">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody class="sherah-table__body">
                                    <c:if test="${not empty list}">
                                        <c:forEach var="entry" items="${list}">
                                            <tr>
                                                <td class="sherah-table__column-2 sherah-table__data-2">
                                                    <div class="sherah-table__product-content">
                                                        <p class="sherah-table__product-desc">${entry.key.id}</p>
                                                    </div>
                                                </td>
                                                <td class="sherah-table__column-2 sherah-table__data-2">
                                                    <div class="sherah-table__product-content">
                                                        <p class="sherah-table__product-desc">${entry.key.name}</p>
                                                    </div>
                                                </td>
                                                <td class="sherah-table__column-2 sherah-table__data-2">
                                                    <div class="sherah-table__product-content">
                                                        <p class="sherah-table__product-desc">
                                                            <img src="${entry.key.urlImage}" alt="Product Image"
                                                                 width="100" height="100">
                                                        </p>
                                                    </div>
                                                </td>
                                                <td class="sherah-table__column-2 sherah-table__data-2">
                                                    <div class="sherah-table__product-content">
                                                        <p class="sherah-table__product-desc">${entry.value}</p>
                                                    </div>
                                                </td>
                                                <td class="sherah-table__column-2 sherah-table__data-2">
                                                    <div class="sherah-table__product-content">
                                                        <p class="sherah-table__product-desc">${entry.key.price}</p>
                                                    </div>
                                                </td>
                                                <c:if test="${sessionScope.role == 1 || sessionScope.role == 2}">
                                                    <td class="sherah-table__column-2 sherah-table__data-2">
                                                        <div class="sherah-table__product-content">
                                                            <p class="sherah-table__product-desc">${entry.key.minQuantity}</p>
                                                        </div>
                                                    </td>
                                                    <td class="sherah-table__column-2 sherah-table__data-2">
                                                        <div class="sherah-table__product-content">
                                                            <p class="sherah-table__product-desc">${entry.key.totalQuantity}</p>
                                                        </div>
                                                    </td>
                                                </c:if>
                                                <c:if test="${sessionScope.role == 4}">
                                                    <td class="sherah-table__column-2 sherah-table__data-2">
                                                        <div class="sherah-table__product-content">
                                                            <p class="sherah-table__product-desc">${entry.key.totalQuantity}</p>
                                                        </div>
                                                    </td>
                                                </c:if>
                                                <td class="sherah-table__column-2 sherah-table__data-2">
                                                    <div class="sherah-table__product-content">
                                                        <c:if test="${entry.key.status==1}">
                                                            <p class="sherah-table__product-desc">Active</p>
                                                        </c:if>
                                                        <c:if test="${entry.key.status==0}">
                                                            <p class="sherah-table__product-desc">Inactive</p>
                                                        </c:if>
                                                    </div>
                                                </td>
<%--                                                <c:if test="${entry.key.totalQuantity <= (entry.key.minQuantity*120)/100 && entry.key.status==1}">--%>
<%--                                                    <c:if test ="${sessionScope.role==2}">--%>
<%--                                                        <td class="sherah-table__column-2 sherah-table__data-2">--%>
<%--                                                            <div class="sherah-table__product-content">--%>
<%--                                                                <p class="sherah-table__product-desc">--%>
<%--                                                                    <a href="#">--%>
<%--                                                                        Create PO--%>
<%--                                                                    </a>--%>
<%--                                                                </p>--%>
<%--                                                            </div>--%>
<%--                                                        </td>--%>
<%--                                                    </c:if>--%>
<%--                                                    <c:if test ="${sessionScope.role==1}">--%>
<%--                                                        --%>
<%--                                                    </c:if>--%>
<%--                                                </c:if>--%>
                                                <c:if test="${entry.key.status==1}">
                                                    <c:if test="${entry.key.totalQuantity==0}">
                                                        <c:if test="${sessionScope.role == 1}">
                                                        <td class="sherah-table__column-2 sherah-table__data-2">
                                                            <div class="sherah-table__product-content">
                                                                <p class="sherah-table__product-desc">
                                                                    <a href="#"
                                                                       onclick="return confirmDelete('${pageContext.request.contextPath}/delete-product?id=${entry.key.id}');">
                                                                        Delete
                                                                    </a>
                                                                </p>
                                                            </div>
                                                        </td>
                                                        </c:if>
                                                    </c:if>
                                                </c:if>

                                                <c:if test="${entry.key.status==0}">
                                                <c:if test="${sessionScope.role == 1 || sessionScope.role == 2}">
                                                <td class="sherah-table__column-2 sherah-table__data-2">
                                                        <div class="sherah-table__product-content">
                                                            <p class="sherah-table__product-desc">
                                                                <a href="#"
                                                                   onclick="return confirmRecovery('${pageContext.request.contextPath}/recover-product?id=${entry.key.id}');">
                                                                    Recover
                                                                </a>
                                                            </p>
                                                        </div>
                                                    </td>
                                                </c:if>
                                                </c:if>

                                                <td class="sherah-table__column-2 sherah-table__data-2">
                                                    <div class="sherah-table__product-content">
                                                        <p class="sherah-table__product-desc">
                                                            <a href="${pageContext.request.contextPath}/update-product?id=${entry.key.id}">
                                                                Detail
                                                            </a>
                                                        </p>
                                                    </div>
                                                </td>

                                            </tr>
                                        </c:forEach>

                                    </c:if>
                                    <c:if test="${empty list}">
                                        <tr>
                                            <td colspan="4" class="text-center">No products available</td>
                                        </tr>
                                    </c:if>
                                    </tbody>
                                </table>
                                <div class="pagination">
                                    <c:if test="${currentPage > 1}">
                                        <a href="product-list?page=${currentPage - 1}&search=${search}">Previous</a>
                                    </c:if>

                                    <c:forEach var="i" begin="${currentPage - 1 > 0 ? currentPage - 1 : 1}" end="${currentPage + 1 < totalPages ? currentPage + 1 : totalPages}">
                                        <a href="product-list?page=${i}&search=${search}" class="${i == currentPage ? 'active' : ''}">${i}</a>
                                    </c:forEach>

                                    <c:if test="${currentPage < totalPages}">
                                        <a href="product-list?page=${currentPage + 1}&search=${search}">Next</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                        <!-- End Dashboard Inner -->
                    </div>
                </div>


            </div>
        </div>
    </section>
    <!-- End sherah Dashboard -->

</div>

<!-- sherah Scripts -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/charts.js"></script>
<script src="js/datatables.min.js"></script>
<script src="js/circle-progress.min.js"></script>
<script src="js/jquery-jvectormap.js"></script>
<script src="js/jvector-map.js"></script>
<script src="js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    window.onload = function () {
        const alertMessage = '<%= session.getAttribute("alertMessage") != null ? session.getAttribute("alertMessage") : "" %>';
        const alertType = '<%= session.getAttribute("alertType") != null ? session.getAttribute("alertType") : "" %>';
        if (alertMessage.trim() !== "" && alertType.trim() !== "") {
            Swal.fire({
                icon: alertType,
                title: alertMessage,
                showConfirmButton: false,
                timer: 2000
            });
        }
        <%
            session.removeAttribute("alertMessage");
            session.removeAttribute("alertType");
        %>
    };

    function confirmDelete(url) {
        if (confirm("Are you sure you want to delete this product?")) {
            window.location.href = url;
        }
        return false;
    }

    function confirmRecovery(url) {
        if (confirm("Are you sure you want to recover this product?")) {
            window.location.href = url;
        }
        return false;
    }
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>
