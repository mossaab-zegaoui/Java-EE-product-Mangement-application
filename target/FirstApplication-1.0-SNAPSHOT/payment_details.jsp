<%@include file="head.jsp" %>
<%@include file="userSidebar.jsp" %>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Payment Details</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="user_index.jsp"> <i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">Ecommerce</li>
                        <li class="breadcrumb-item active">Payment Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid credit-card">
        <div class="row">
            <div class="col-xxl-4 col-lg-6 box-col-6 debit-card">
                <div class="card">
                    <div class="card-header py-4">
                        <h5>Debit card </h5>
                    </div>
                    <div class="card-body">
                        <form class="theme-form e-commerce-form row">
                            <div class="mb-3 col-12 p-r-0">
                                <label>Card holder name</label>
                                <input class="form-control" type="text" placeholder="***************" name="card_full_name">
                            </div>
                            <div class="mb-3 col-12">
                                <label>Card number</label>
                                <input class="form-control" type="text" placeholder="***************" name="card_number">
                            </div>
                            <div class="col-12">
                                <label class="col-form-label p-b-20">Expiration Date</label>
                            </div>
                            <div class="mb-3 col-6 p-r-0">
                                <input class="form-control" type="text" placeholder="mm/dd" name="">
                            </div>
                            <div class="mb-3 col-6">
                                <input class="form-control" type="text" placeholder="CVC">
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary btn-block" type="button" title="">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="scripts.jsp" %>