<body>
<div class="page-wrapper compact-wrapper" id="pageWrapper">
    <!-- Page Header Start-->
    <div class="page-header">
        <div class="header-wrapper row m-0">
            <form class="form-inline search-full col" action="#" method="get">
                <div class="form-group w-100">
                    <div class="Typeahead Typeahead--twitterUsers">
                        <div class="u-posRelative">
                            <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text"
                                   name="q" title="" autofocus>
                            <div class="spinner-border Typeahead-spinner" role="status"><span class="sr-only"></span>
                            </div>
                            <i class="close-search" data-feather="x"></i>
                        </div>
                        <div class="Typeahead-menu"></div>
                    </div>
                </div>
            </form>
            <div class="header-logo-wrapper col-auto p-0">
                <div class="logo-wrapper"><a href="admin_index.jsp">
                    <img class="img-fluid" src="" alt=""></a></div>
                <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle"
                                               data-feather="align-center"></i>
                </div>
            </div>
            <div class="left-header col horizontal-wrapper ps-0">
                <ul class="horizontal-menu">
                </ul>
            </div>
            <div class="nav-right col-8 pull-right right-header p-0">
                <ul class="nav-menus">

                    <li><span class="header-search"><i data-feather="search"></i></span></li>
                    <li class="cart-nav onhover-dropdown">
                        <div class="cart-box">

                            <a href="CartController?action=cart_page"><i data-feather="shopping-cart"></i></a>

                            <span class="badge rounded-pill badge-primary">${sessionScope.session_cart.size()}</span></div>
                    </li>
                    <li class="profile-nav onhover-dropdown p-0 me-0">
                        <div class="media profile-media"><img class="b-r-10" src="assets/images/dashboard/profile.jpg"
                                                              alt="">
                            <div class="media-body">
                                <span><c:out value="${sessionScope.status}"/></span>
                                <p class="mb-0 font-roboto"><i class="middle fa fa-angle-down"></i></p>
                            </div>
                        </div>
                        <ul class="profile-dropdown onhover-show-div">
                            <li><a href="#"><i data-feather="user"></i><span>Account </span></a></li>
                            <c:if test="${sessionScope.status == null}">
                                <li><a href="LoginController?action=loginPage"><i
                                        data-feather="log-in"> </i><span>Login</span></a></li>
                            </c:if>
                            <c:if test="${sessionScope.status != null}">
                                <li><a href="LoginController?action=logout"><i
                                        data-feather="log-out"> </i><span>Log out</span></a></li>
                            </c:if>
                        </ul>
                    </li>
                </ul>
            </div>
            <script class="result-template" type="text/x-handlebars-template">
                <div class="ProfileCard u-cf">
                    <div class="ProfileCard-avatar">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                             class="feather feather-airplay m-0">
                            <path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path>
                            <polygon points="12 15 17 21 7 21 12 15"></polygon>
                        </svg>
                    </div>
                    <div class="ProfileCard-details">
                        <div class="ProfileCard-realName">{{name}}</div>
                    </div>
                </div>
            </script>
        </div>
    </div>
    <!-- Page Header Ends                              -->
    <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <div class="sidebar-wrapper">
            <div>
                <div class="logo-wrapper pb-5">
                    <div class="toggle-sidebar">

                    </div>
                </div>
                <div class="logo-icon-wrapper"><a href="admin_index.jsp">
                    <img class="img-fluid"
                         src=""
                         alt=""></a></div>
                <nav class="sidebar-main">
                    <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
                    <div id="sidebar-menu">
                        <ul class="sidebar-links" id="simple-bar">
                            <li class="back-btn"><a href="admin_index.jsp"><img class="img-fluid"
                                                                                src=""
                                                                                alt=""></a>
                                <div class="mobile-back text-end"><span>Back</span><i class="fa fa-angle-right ps-2"
                                                                                      aria-hidden="true"></i></div>
                            </li>
                            <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i
                                    data-feather="shopping-bag"></i><span>Products</span></a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="AdminController?action=showProducts">products</a>
                                    </li>
                                </ul>

                            </li>
                            <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i
                                    data-feather="shopping-bag"></i><span>Orders</span></a>
                                <ul class="sidebar-submenu">
                                    <li>
                                        <a href="CartController?action=my_orders">my orders</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>