<%@include file="head.jsp" %>
<%@include file="userSidebar.jsp" %>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Recent Orders</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin_index.jsp"> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item">Ecommerce</li>
                        <li class="breadcrumb-item active"> Recent Orders</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Recent Orders</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="order" items="${ongoingOrders}">
                                <div class="col-xxl-4 col-md-6">
                                    <div class="prooduct-details-box">
                                        <div class="media"><img class="align-self-center img-fluid img-60"
                                                                src="../assets/images/ecommerce/product-table-6.png"
                                                                alt="#">
                                            <div class="media-body ms-3">
                                                <div class="product-name">
                                                    <h6><a href="#">${order.name}</a></h6>
                                                </div>
                                                <div class="rating"><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i></div>
                                                <div class="price d-flex">
                                                    <div class="text-muted me-2">Price</div>
                                                    $ ${order.price}
                                                </div>
                                                <div class="avaiabilty">
                                                    <p>${order.created_at}</p>
                                                </div>

                                                <a class="btn btn-primary btn-xs" href="#">${order.status}</a><i
                                                    class="close" data-feather="x"></i>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Old Orders</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="order" items="${completedOders}">
                                <div class="col-xxl-4 col-md-6">
                                    <div class="prooduct-details-box">
                                        <div class="media"><img class="align-self-center img-fluid img-60"
                                                                src="../assets/images/ecommerce/product-table-6.png"
                                                                alt="#">
                                            <div class="media-body ms-3">
                                                <div class="product-name">
                                                    <h6><a href="#">${order.name}</a></h6>
                                                </div>
                                                <div class="rating"><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i></div>
                                                <div class="price d-flex">
                                                    <div class="text-muted me-2">Price</div>
                                                    $ ${order.price}
                                                </div>
                                                <div class="avaiabilty">
                                                    <p>${order.created_at}</p>
                                                </div>

                                                <a class="btn btn-primary btn-xs" href="#">${order.status}</a><i
                                                    class="close" data-feather="x"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>
<%@include file="scripts.jsp" %>
