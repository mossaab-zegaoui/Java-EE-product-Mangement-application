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
                        <h5>New Orders</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="processedOrder" items="${processingOrders}">
                                <div class="col-xxl-4 col-md-6">
                                    <div class="prooduct-details-box">
                                        <div class="media"><img class="align-self-center img-fluid img-60"
                                                                src="../assets/images/ecommerce/product-table-6.png"
                                                                alt="#">
                                            <div class="media-body ms-3">
                                                <div class="product-name">
                                                    <h6><a href="#">${processedOrder.name}</a></h6>
                                                </div>
                                                <div class="rating"><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i></div>
                                                <div class="price d-flex">
                                                    <div class="text-muted me-2">Price</div>
                                                        ${processedOrder.price} $
                                                </div>
                                                <div class="avaiabilty">
                                                    <p>${processedOrder.created_at}</p>
                                                    <div class="text-success">
                                                        <c:if test="${(processedOrder.quantity > 30) }">
                                                            <p class="font-success">In stock</p>
                                                        </c:if>
                                                        <c:if test="${(processedOrder.quantity <= 30)  && (processedOrder.quantity  > 20)}">
                                                            <p class="font-primary">Low on stock</p>
                                                        </c:if>
                                                        <c:if test="${(processedOrder.quantity <= 20)}">
                                                            <p class="font-danger">out of stock</p>
                                                        </c:if>
                                                    </div>
                                                </div>

                                                <a class="btn btn-primary btn-xs" href="#">Processing</a><i
                                                    class="close" data-feather="x"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5>Shipped Orders</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="shippedOrder" items="${shippedOrders}">
                                <div class="col-xxl-4 col-md-6">
                                    <div class="prooduct-details-box">
                                        <div class="media"><img class="align-self-center img-fluid img-60"
                                                                src="../assets/images/ecommerce/product-table-6.png"
                                                                alt="#">
                                            <div class="media-body ms-3">
                                                <div class="product-name">
                                                    <h6><a href="#">${shippedOrder.name}</a></h6>
                                                </div>
                                                <div class="rating"><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i></div>
                                                <div class="price d-flex">
                                                    <div class="text-muted me-2">Price</div>
                                                    : ${shippedOrder.price}$
                                                </div>
                                                <p>${shippedOrder.created_at}</p>
                                                <div class="avaiabilty">
                                                    <div class="text-success">
                                                        <c:if test="${(shippedOrder.quantity > 30) }">
                                                            <p class="font-success">In stock</p>
                                                        </c:if>
                                                        <c:if test="${(shippedOrder.quantity <= 30)  && (shippedOrder.quantity  > 20)}">
                                                            <p class="font-primary">Low on stock</p>
                                                        </c:if>
                                                        <c:if test="${(shippedOrder.quantity <= 20)}">
                                                            <p class="font-danger">out of stock</p>
                                                        </c:if>
                                                    </div>
                                                </div>
                                                <a class="btn btn-success btn-xs" href="#">Shipped</a><i
                                                    class="close" data-feather="x"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5>Cancelled Orders </h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="cancelledOrder" items="${cancelledOrders}">
                                <div class="col-xxl-4 col-md-6">
                                    <div class="prooduct-details-box">
                                        <div class="media"><img class="align-self-center img-fluid img-60"
                                                                src="../assets/images/ecommerce/product-table-6.png"
                                                                alt="#">
                                            <div class="media-body ms-3">
                                                <div class="product-name">
                                                    <h6><a href="#">${cancelledOrder.name}</a></h6>
                                                </div>
                                                <div class="rating"><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                        class="fa fa-star"></i><i class="fa fa-star"></i></div>
                                                <div class="price d-flex">
                                                    <div class="text-muted me-2">Price</div>
                                                    : ${cancelledOrder.price}$
                                                </div>
                                                <p>${cancelledOrder.created_at}</p>
                                                <div class="avaiabilty">
                                                    <div class="text-success">
                                                        <c:if test="${(cancelledOrder.quantity > 30) }">
                                                            <p class="font-success">In stock</p>
                                                        </c:if>
                                                        <c:if test="${(cancelledOrder.quantity <= 30)  && (cancelledOrder.quantity  > 20)}">
                                                            <p class="font-primary">Low on stock</p>
                                                        </c:if>
                                                        <c:if test="${(cancelledOrder.quantity <= 20)}">
                                                            <p class="font-danger">out of stock</p>
                                                        </c:if>
                                                    </div>
                                                </div>
                                                <a class="btn btn-danger btn-xs" href="#">Cancelled</a><i
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
