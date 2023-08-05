<%@include file="head.jsp" %>
<%@include file="userSidebar.jsp" %>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Cart</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Ecommerce</li>
                        <li class="breadcrumb-item active">Cart</li>
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
                        <h5>Cart</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="order-history table-responsive wishlist">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Action</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${cart_products}" var="item">
                                        <tr>
                                            <td><img class="img-fluid img-40" src="images/${item.image}"
                                                     alt="#"></td>
                                            <td>
                                                <div class="product-name"><a href="#">${item.name}</a></div>
                                            </td>
                                            <td>$${item.price}</td>
                                            <td>
                                                <fieldset class="qty-box">
                                                    <div class="input-group" id="card_items" data-site="${item.id}">
                                                        <button class="btn btn-primary btn-square bootstrap-touchspin-down"
                                                                type="button"><i
                                                                class="fa fa-minus"></i></button>
                                                        <input class="text-center form-control" type="text"
                                                               value="${item.quantity}" style="display: block;"
                                                               data-bs-original-title="" title="" id="quantity">
                                                        <button class="btn btn-primary btn-square bootstrap-touchspin-up"
                                                                type="button" data-bs-original-title="" title=""><i
                                                                class="fa fa-plus"></i></button>
                                                    </div>
                                                </fieldset>
                                            </td>
                                            <td><a href="CartController?id=${item.id}&action=remove_item"><i
                                                    data-feather="x-circle"></i></a></td>
                                            <td>$${item.price * item.quantity}</td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <td colspan="4">
                                            <div class="input-group">
                                                <input class="form-control me-2" type="text"
                                                       placeholder="Enter coupan code"><a
                                                    class="btn btn-primary" href="#">Apply</a>
                                            </div>
                                        </td>
                                        <td class="total-amount">
                                            <h6 class="m-0 text-end"><span class="f-w-600">Total Price :</span>
                                            </h6>
                                        </td>
                                        <td><span>$${cart_total} </span></td>
                                    </tr>
                                    <tr>
                                        <td class="text-end" colspan="5"><a
                                                class="btn btn-secondary cart-btn-transform"
                                                href="AdminController?action=showProducts">continue
                                            shopping</a></td>
                                        <td><a class="btn btn-success cart-btn-transform"
                                               href="CartController?action=checkout">check
                                            out</a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Container-fluid Ends-->
                </div>
            </div>
        </div>
    </div>
<%@include file="scripts.jsp" %>