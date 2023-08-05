<%@include file="head.jsp" %>
<%@include file="userSidebar.jsp" %>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <a href="AdminController?action=showProducts" class="btn btn-light btn-square">View all products</a>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="user_index.jsp"> <i data-feather="home"></i></a></li>
                        <li class="breadcrumb-item">ECommerce</li>
                        <li class="breadcrumb-item active">Product</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid product-wrapper">
        <div class="product-grid">
            <div class="feature-products">
                <div class="row">
                    <div class="col-md-6 mb-10" style="margin-bottom: 20px">
                    </div>
                </div>
                <div class="product-wrapper-grid">
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 xl-4">
                            <div class="card">
                                <div class="product-box">
                                    <div class="product-img"><img class="img-fluid" style="height: 300px; width: 100%"
                                                                  src="images/shoes.jpg" alt="">

                                    </div>
                                    <div class="modal fade" id="exampleModalCenter1" tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="exampleModalCenter1" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="product-box row">
                                                        <div class="product-img col-lg-6">
                                                            <img class="img-fluid" src="images/shoes.jpg" alt="">
                                                        </div>
                                                        <div class="product-details col-lg-6 text-start">
                                                            <h4>PRODUCT 1</h4>
                                                            <div class="product-price">$ 49.99
                                                                <del>$350.00</del>
                                                            </div>
                                                            <div class="product-view">
                                                                <h6 class="f-w-600">Product Details</h6>
                                                                <p class="mb-0">Sed ut perspiciatis, unde omnis iste
                                                                    natus
                                                                    error sit voluptatem accusantium doloremque
                                                                    laudantium,
                                                                    totam rem aperiam eaque ipsa, quae ab illo.
                                                                </p>
                                                            </div>
                                                            <div class="product-size">
                                                                <ul>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">M
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">L
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">Xl
                                                                        </button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-qnty">
                                                                <h6 class="f-w-600">Quantity</h6>
                                                                <fieldset>
                                                                    <div class="input-group">
                                                                        <input class="touchspin text-center"
                                                                               type="number" value="1" min="1"
                                                                               max="15"
                                                                               name="quantity">
                                                                    </div>
                                                                </fieldset>
                                                                <div class="addcart-btn">

                                                                    <button class="btn btn-primary" type="submit">
                                                                        Add to Cart
                                                                    </button>
                                                                    <button class="btn btn-primary" type="button">
                                                                        View Details
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-details">
                                        <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i></div>
                                        <h4>product 1</h4>
                                        <p>shirts</p>
                                        <div class="product-price">$49.99
                                            <del>$350.00</del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 xl-4">
                            <div class="card">
                                <div class="product-box">
                                    <div class="product-img"><img class="img-fluid" style="height: 300px; width: 100%"
                                                                  src="images/T-shirt.jpg" alt="">

                                    </div>
                                    <div class="modal fade" id="exampleModalCenter5" tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="exampleModalCenter5" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="product-box row">
                                                        <div class="product-img col-lg-6">
                                                            <img class="img-fluid" src="images/furniture-1.jpg" alt="">
                                                        </div>
                                                        <div class="product-details col-lg-6 text-start">
                                                            <h4>PRODUCT 1</h4>
                                                            <div class="product-price">$ 49.99
                                                                <del>$350.00</del>
                                                            </div>
                                                            <div class="product-view">
                                                                <h6 class="f-w-600">Product Details</h6>
                                                                <p class="mb-0">Sed ut perspiciatis, unde omnis iste
                                                                    natus
                                                                    error sit voluptatem accusantium doloremque
                                                                    laudantium,
                                                                    totam rem aperiam eaque ipsa, quae ab illo.
                                                                </p>
                                                            </div>
                                                            <div class="product-size">
                                                                <ul>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">M
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">L
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">Xl
                                                                        </button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-qnty">
                                                                <h6 class="f-w-600">Quantity</h6>
                                                                <fieldset>
                                                                    <div class="input-group">
                                                                        <input class="touchspin text-center"
                                                                               type="number" value="1" min="1"
                                                                               max="15"
                                                                               name="quantity">
                                                                    </div>
                                                                </fieldset>
                                                                <div class="addcart-btn">

                                                                    <button class="btn btn-primary" type="submit">
                                                                        Add to Cart
                                                                    </button>
                                                                    <button class="btn btn-primary" type="button">
                                                                        View Details
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-details">
                                        <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i></div>
                                        <h4>product 1</h4>
                                        <p>shirts</p>
                                        <div class="product-price">$49.99
                                            <del>$350.00</del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 xl-4">
                            <div class="card">
                                <div class="product-box">
                                    <div class="product-img">
                                        <div class="ribbon ribbon-success ribbon-right">50%</div>
                                        <img class="img-fluid" style="height: 300px; width: 100%"
                                             src="images/furniture-2.jpg" alt="">

                                    </div>
                                    <div class="modal fade" id="exampleModalCenter6" tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="exampleModalCenter6" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="product-box row">
                                                        <div class="product-img col-lg-6">
                                                            <div class="ribbon ribbon-danger">Sale</div>
                                                            <img class="img-fluid" src="images/furniture-2.jpg.jpg" alt="">
                                                        </div>
                                                        <div class="product-details col-lg-6 text-start">
                                                            <h4>PRODUCT 1</h4>
                                                            <div class="product-price">$ 49.99
                                                                <del>$350.00</del>
                                                            </div>
                                                            <div class="product-view">
                                                                <h6 class="f-w-600">Product Details</h6>
                                                                <p class="mb-0">Sed ut perspiciatis, unde omnis iste
                                                                    natus
                                                                    error sit voluptatem accusantium doloremque
                                                                    laudantium,
                                                                    totam rem aperiam eaque ipsa, quae ab illo.
                                                                </p>
                                                            </div>
                                                            <div class="product-size">
                                                                <ul>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">M
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">L
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">Xl
                                                                        </button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-qnty">
                                                                <h6 class="f-w-600">Quantity</h6>
                                                                <fieldset>
                                                                    <div class="input-group">
                                                                        <input class="touchspin text-center"
                                                                               type="number" value="1" min="1"
                                                                               max="15"
                                                                               name="quantity">
                                                                    </div>
                                                                </fieldset>
                                                                <div class="addcart-btn">

                                                                    <button class="btn btn-primary" type="submit">
                                                                        Add to Cart
                                                                    </button>
                                                                    <button class="btn btn-primary" type="button">
                                                                        View Details
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-details">
                                        <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i></div>
                                        <h4>product 1</h4>
                                        <p>shirts</p>
                                        <div class="product-price">$49.99
                                            <del>$350.00</del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 xl-4">
                            <div class="card">
                                <div class="product-box">
                                    <div class="product-img">
                                        <div class="ribbon ribbon-success ribbon-right">50%</div>
                                        <img class="img-fluid" style="height: 300px; width: 100%"
                                             src="images/jewelry.jpg" alt="">

                                    </div>
                                    <div class="modal fade" id="exampleModalCenter4" tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="exampleModalCenter4" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="product-box row">
                                                        <div class="product-img col-lg-6">
                                                            <img class="img-fluid" src="images/jewelry.jpg" alt="">
                                                        </div>
                                                        <div class="product-details col-lg-6 text-start">
                                                            <h4>PRODUCT 1</h4>
                                                            <div class="product-price">$ 49.99
                                                                <del>$350.00</del>
                                                            </div>
                                                            <div class="product-view">
                                                                <h6 class="f-w-600">Product Details</h6>
                                                                <p class="mb-0">Sed ut perspiciatis, unde omnis iste
                                                                    natus
                                                                    error sit voluptatem accusantium doloremque
                                                                    laudantium,
                                                                    totam rem aperiam eaque ipsa, quae ab illo.
                                                                </p>
                                                            </div>
                                                            <div class="product-size">
                                                                <ul>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">M
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">L
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">Xl
                                                                        </button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-qnty">
                                                                <h6 class="f-w-600">Quantity</h6>
                                                                <fieldset>
                                                                    <div class="input-group">
                                                                        <input class="touchspin text-center"
                                                                               type="number" value="1" min="1"
                                                                               max="15"
                                                                               name="quantity">
                                                                    </div>
                                                                </fieldset>
                                                                <div class="addcart-btn">

                                                                    <button class="btn btn-primary" type="submit">
                                                                        Add to Cart
                                                                    </button>
                                                                    <button class="btn btn-primary" type="button">
                                                                        View Details
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-details">
                                        <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i></div>
                                        <h4>product 1</h4>
                                        <p>shirts</p>
                                        <div class="product-price">$49.99
                                            <del>$350.00</del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 xl-4">
                            <div class="card">
                                <div class="product-box">
                                    <div class="product-img">
                                        <div class="ribbon ribbon-success ribbon-right">30%</div>
                                        <img class="img-fluid" style="height: 300px; width: 100%"
                                             src="images/furniture-3.jpg" alt="">

                                    </div>
                                    <div class="modal fade" id="exampleModalCenter2" tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="exampleModalCenter2" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="product-box row">
                                                        <div class="product-img col-lg-6">
                                                            <div class="ribbon ribbon-clip ribbon-warning">Hot</div>
                                                            <img class="img-fluid" src="images/furniture-3.jpg" alt="">
                                                        </div>
                                                        <div class="product-details col-lg-6 text-start">
                                                            <h4>PRODUCT 1</h4>
                                                            <div class="product-price">$ 49.99
                                                                <del>$350.00</del>
                                                            </div>
                                                            <div class="product-view">
                                                                <h6 class="f-w-600">Product Details</h6>
                                                                <p class="mb-0">Sed ut perspiciatis, unde omnis iste
                                                                    natus
                                                                    error sit voluptatem accusantium doloremque
                                                                    laudantium,
                                                                    totam rem aperiam eaque ipsa, quae ab illo.
                                                                </p>
                                                            </div>
                                                            <div class="product-size">
                                                                <ul>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">M
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">L
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">Xl
                                                                        </button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-qnty">
                                                                <h6 class="f-w-600">Quantity</h6>
                                                                <fieldset>
                                                                    <div class="input-group">
                                                                        <input class="touchspin text-center"
                                                                               type="number" value="1" min="1"
                                                                               max="15"
                                                                               name="quantity">
                                                                    </div>
                                                                </fieldset>
                                                                <div class="addcart-btn">

                                                                    <button class="btn btn-primary" type="submit">
                                                                        Add to Cart
                                                                    </button>
                                                                    <button class="btn btn-primary" type="button">
                                                                        View Details
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-details">
                                        <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i></div>
                                        <h4>product 1</h4>
                                        <p>shirts</p>
                                        <div class="product-price">$49.99
                                            <del>$350.00</del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 xl-4">
                            <div class="card">
                                <div class="product-box">
                                    <div class="product-img"><img class="img-fluid" style="height: 300px; width: 100%"
                                                                  src="images/clothing-1.jpg" alt="">

                                    </div>
                                    <div class="modal fade" id="exampleModalCenter3" tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="exampleModalCenter3" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="product-box row">
                                                        <div class="product-img col-lg-6">
                                                            <img class="img-fluid" src="images/clothing-1.jpg" alt="">
                                                        </div>
                                                        <div class="product-details col-lg-6 text-start">
                                                            <h4>PRODUCT 1</h4>
                                                            <div class="product-price">$ 49.99
                                                                <del>$350.00</del>
                                                            </div>
                                                            <div class="product-view">
                                                                <h6 class="f-w-600">Product Details</h6>
                                                                <p class="mb-0">Sed ut perspiciatis, unde omnis iste
                                                                    natus
                                                                    error sit voluptatem accusantium doloremque
                                                                    laudantium,
                                                                    totam rem aperiam eaque ipsa, quae ab illo.
                                                                </p>
                                                            </div>
                                                            <div class="product-size">
                                                                <ul>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">M
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">L
                                                                        </button>
                                                                    </li>
                                                                    <li>
                                                                        <button class="btn btn-outline-light"
                                                                                type="button">Xl
                                                                        </button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-qnty">
                                                                <h6 class="f-w-600">Quantity</h6>
                                                                <fieldset>
                                                                    <div class="input-group">
                                                                        <input class="touchspin text-center"
                                                                               type="number" value="1" min="1"
                                                                               max="15"
                                                                               name="quantity">
                                                                    </div>
                                                                </fieldset>
                                                                <div class="addcart-btn">

                                                                    <button class="btn btn-primary" type="submit">
                                                                        Add to Cart
                                                                    </button>
                                                                    <button class="btn btn-primary" type="button">
                                                                        View Details
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-details">
                                        <div class="rating"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i></div>
                                        <h4>product 1</h4>
                                        <p>shirts</p>
                                        <div class="product-price">$49.99
                                            <del>$350.00</del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card offer-box">
                            <div class="card-body p-0">
                                <div class="offer-slider">
                                    <div class="carousel slide" id="carouselExampleCaptions" data-bs-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <div class="selling-slide row">
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="d-flex">
                                                            <div class="left-content">
                                                                <p>Much More Selling product</p>
                                                                <h4 class="f-w-600">Best Selling Product</h4><span class="badge badge-white rounded-pill">78% offer</span><span class="badge badge-dotted rounded-pill ms-2">Coupon Code : 12345</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-4 col-md-12">
                                                        <div class="center-img"><img class="img-fluid" src="assets/images/dashboard-2/offer-shoes-3.png" alt="..."></div>
                                                    </div>
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="d-flex">
                                                            <div class="right-content">
                                                                <p>Money back Guarrantee</p>
                                                                <h4 class="f-w-600">Women Straight Kurta</h4><span class="badge badge-white rounded-pill">$100.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <div class="selling-slide row">
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="d-flex">
                                                            <div class="left-content">
                                                                <p>Money back Guarrantee</p>
                                                                <h4 class="f-w-600">Women Straight Kurta</h4><span class="badge badge-white rounded-pill">$100.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-4 col-md-12">
                                                        <div class="center-img"><img class="img-fluid" src="assets/images/dashboard-2/offer-shoes-3.png" alt="..."></div>
                                                    </div>
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="d-flex">
                                                            <div class="right-content">
                                                                <p>Money back Guarrantee</p>
                                                                <h4 class="f-w-600">Nike Air Shoes</h4><span class="badge badge-white rounded-pill">$120.55</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="carousel-item">
                                                <div class="selling-slide row">
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="d-flex">
                                                            <div class="left-content">
                                                                <p>Maximum Selling product</p>
                                                                <h4 class="f-w-600">Best Selling Product</h4><span class="badge badge-white rounded-pill">50% offer</span><span class="badge badge-dotted rounded-pill ms-2">Coupon Code : 21546</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-4 col-md-12">
                                                        <div class="center-img"><img class="img-fluid" src="assets/images/dashboard-2/offer-shoes-3.png" alt="..."></div>
                                                    </div>
                                                    <div class="col-xl-4 col-md-6">
                                                        <div class="d-flex">
                                                            <div class="right-content">
                                                                <p>Money back Guarrantee</p>
                                                                <h4 class="f-w-600">Nike Air Shoes</h4><span class="badge badge-white rounded-pill">$120.55</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-bs-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>
<%@include file="scripts.jsp" %>