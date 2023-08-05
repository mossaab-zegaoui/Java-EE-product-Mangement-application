<%@include file="head.jsp" %>
<%@include file="userSidebar.jsp" %>
<div class="page-body checkout">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Checkout</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"> <i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Ecommerce</li>
                        <li class="breadcrumb-item active">Checkout</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <h5>Billing Details</h5>
            </div>
            <form action="CartController" method="post">
                <input type="hidden" name="id" value="${user.id}">
                <input type="hidden" name="action" value="place_order">
                <div class="card-body">
                    <div class="row">
                        <div class="col-xl-6 col-sm-12">
                            <div class="row">
                                <div class="mb-3 col-sm-6">
                                    <label for="inputEmail4">First Name</label>
                                    <input class="form-control" id="inputEmail4" type="text" name="firstName"
                                           value="${user.firstName}" required>
                                </div>
                                <div class="mb-3 col-sm-6">
                                    <label for="inputPassword4">Last Name</label>
                                    <input class="form-control" id="inputPassword4" type="text" name="lastName"
                                           value="${user.lastName}" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-sm-6">
                                    <label for="inputEmail5">Phone</label>
                                    <input class="form-control" id="inputEmail5" type="text" name="phone"
                                           value="${user.phone}" required>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="inputState">Country</label>
                                <input class="form-control" id="inputState" name="country" type="text"
                                       value="${user.country}" required>
                            </div>
                            <div class="mb-3">
                                <label for="inputAddress5">Address</label>
                                <input class="form-control" id="inputAddress5" type="text" name="address"
                                       value="${user.address}" required>
                            </div>
                            <div class="mb-3">
                                <label for="inputCity">Email</label>
                                <input class="form-control" id="inputCity" type="email" name="email"
                                       value="${user.email}" required>
                            </div>
                            <div class="mb-3">
                                <label for="inputAddress6">Postal Code</label>
                                <input class="form-control" id="inputAddress6" type="text" name="postalCode"
                                       value="${user.postalCode}" required>
                            </div>
                            <div class="mb-3">
                                <div class="form-check">
                                    <input class="form-check-input" id="gridCheck" type="checkbox">
                                    <label class="form-check-label" for="gridCheck">Check me out</label>
                                </div>
                            </div>

                        </div>
                        <div class="col-xl-6 col-sm-12">
                            <div class="checkout-details">
                                <div class="order-box">
                                    <div class="title-box">
                                        <div class="checkbox-title">
                                            <h4>Product </h4><span>Total</span>
                                        </div>
                                    </div>
                                    <ul class="qty">
                                        <c:forEach items="${cart_products}" var="item">
                                            <li>${item.name} * ${item.quantity}
                                                <span>$${item.price * item.quantity}</span></li>
                                        </c:forEach>
                                    </ul>

                                    <ul class="sub-total total">
                                        <li>Total <span class="count">${sessionScope.cart_total}</span></li>
                                    </ul>
                                    <div class="animate-chk">
                                        <div class="row">
                                            <div class="col">
                                                <label class="d-block" for="edo-ani">
                                                    <input class="radio_animated" id="edo-ani" type="radio"
                                                           name="rdo-ani" checked="" data-original-title=""
                                                           title="">Check Payments
                                                </label>
                                                <label class="d-block" for="edo-ani1">
                                                    <input class="radio_animated" id="edo-ani1" type="radio"
                                                           name="rdo-ani" data-original-title="" title="">Cash On
                                                    Delivery
                                                </label>
                                                <label class="d-block" for="edo-ani2">
                                                    <input class="radio_animated" id="edo-ani2" type="radio"
                                                           name="rdo-ani" checked="" data-original-title=""
                                                           title="">PayPal<img class="img-paypal"
                                                                               src="assets/images/checkout/paypal.png"
                                                                               alt="">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="order-place" style="position: relative">
                                        <a class="btn btn-primary"
                                           href="http://localhost:8080/eCommerceApp_war_exploded/AdminController?action=showProducts">Continue
                                            shopping </a>
                                        <button class="btn btn-primary" type="submit"
                                                style="position: absolute; right: 0">Place
                                            Order
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>
<%@include file="scripts.jsp" %>
