<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Uglory</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="${contextPath}/img/favicon.ico" rel="icon">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    
    <!-- Libraries Stylesheet -->
    <link href="${contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${contextPath}/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Template Stylesheet -->
    <link href="${contextPath}/css/style.css" rel="stylesheet">
    
    <!-- Product Style sheet -->
    <link href="${contextPath}/css/adminproduct-style.css" rel="stylesheet">

    <!-- Fontawesome cdn 링크 -->
    <script src="https://kit.fontawesome.com/1ef9913073.js" crossorigin="anonymous"></script>

</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <div class="navbar bg-light navbar-light">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>UGLORY</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="../img/bananaKoongya.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">바나나 쿵야</h6>
                        <span>Admin</span>
                    </div>
                </div>

                <!-- 사이드바 내용 -->
                <div class="navbar-nav w-100">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa-solid fa-carrot me-2"></i>상품 관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <div class="dropdown-item">
                                <a href="adminProductList.html" class="sub-menu">상품 조회</a>
                            </div>
                            <div class="dropdown-item">
                                <a href="adminProductIn.html" class="sub-menu">상품 등록</a>
                            </div>
                            <div class="dropdown-item">
                                <a href="adminPList.html" class="sub-menu">구독 상품 알림</a>
                            </div>
                        </div>
                    </div>

                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa-solid fa-house me-2"></i>농장 관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <div class="dropdown-item">
                                <a href="adminFarmList.html" class="sub-menu">농장 조회</a>
                            </div>
                            <div class="dropdown-item">
                                <a href="adminFarmIn.html" class="sub-menu">농장 등록</a>
                            </div>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa-solid fa-user me-2"></i>Pages</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <div class="dropdown-item">
                                <a href="signin.html" class="sub-menu">Sign In</a>
                            </div>
                            <div class="dropdown-item">
                                <a href="signup.html" class="sub-menu">Sign Up</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <header class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="../img/bananaKoongya.jpg" alt="프로필 사진" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex fw-bold">바나나 쿵야</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item text-center">Log Out</a>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Navbar End -->


            <!-- 농장 목록 조회 -->
            <main class="container-fluid pt-4 px-4">
                <section class="row bg-light rounded justify-content-center mx-0 m-5 p-4">
                    <article class="col-lg-12 text-center">
                        <h2 class="text-start">농장 관리</h2>
                        <hr>

                        <table class="table table-borderless farmTable mt-4">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">농장 이름</th>
                                    <th scope="col">생산자</th>
                                    <th scope="col">원산지</th>
                                    <th scope="col">삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>당근 농장</td>
                                    <td>당근 쿵야</td>
                                    <td>뿌리채소 마을</td>
                                    <td>
                                        <button type="button" class="btn btn-danger">삭제</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>당근 농장</td>
                                    <td>당근 쿵야</td>
                                    <td>뿌리채소 마을</td>
                                    <td>
                                        <button type="button" class="btn btn-danger">삭제</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>당근 농장</td>
                                    <td>당근 쿵야</td>
                                    <td>뿌리채소 마을</td>
                                    <td>
                                        <button type="button" class="btn btn-danger">삭제</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>당근 농장</td>
                                    <td>당근 쿵야</td>
                                    <td>뿌리채소 마을</td>
                                    <td>
                                        <button type="button" class="btn btn-danger">삭제</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>당근 농장</td>
                                    <td>당근 쿵야</td>
                                    <td>뿌리채소 마을</td>
                                    <td>
                                        <button type="button" class="btn btn-danger">삭제</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>당근 농장</td>
                                    <td>당근 쿵야</td>
                                    <td>뿌리채소 마을</td>
                                    <td>
                                        <button type="button" class="btn btn-danger">삭제</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <a href="adminFarmIn.html" class="farmInBtn"><i class="fa-solid fa-plus"></i> 농장 추가하기</a>

                    </article>
                </section>
            </main>


            <!-- Footer Start -->
            <footer class="container-fluid pt-4 px-4">
                <div class="bg-light rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">Uglory</a>, All Right Reserved. 
                        </div>
                        <div class="col-12 col-sm-6 text-center text-sm-end">
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- Footer End -->
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/lib/easing/easing.min.js"></script>
    <script src="${contextPath}/lib/waypoints/waypoints.min.js"></script>
    <script src="${contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="${contextPath}/lib/tempusdominus/js/moment.min.js"></script>
    <script src="${contextPath}/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="${contextPath}/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <script src="${contextPath}/js/adminProduct.js"></script>  
    
    <!-- Template Javascript -->
    <script src="${contextPath}/js/main.js"></script>  

</body>

</html>