<%@include file="head.jsp" %>
<%@include file="userSidebar.jsp" %>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                    <h3>Product</h3>
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="product.jsp"> <i data-feather="home"></i></a></li>
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
                    <div class="col-md-6 products-total">
                        <div class="square-product-setting d-inline-block"><a class="icon-grid grid-layout-view"
                                                                              href="#" data-original-title=""
                                                                              title=""><i
                                data-feather="grid"></i></a></div>
                        <div class="square-product-setting d-inline-block"><a
                                class="icon-grid m-0 list-layout-view" href="#" data-original-title="" title=""><i
                                data-feather="list"></i></a></div>
                        <span class="d-none-productlist filter-toggle">
                          Filters<span class="ms-2"><i class="toggle-data"
                                                       data-feather="chevron-down"></i></span></span>
                        <div class="grid-options d-inline-block">
                            <ul>
                                <li><a class="product-2-layout-view" href="#" data-original-title=""
                                       title=""><span class="line-grid line-grid-1 bg-primary"></span><span
                                        class="line-grid line-grid-2 bg-primary"></span></a></li>
                                <li><a class="product-3-layout-view" href="#" data-original-title=""
                                       title=""><span class="line-grid line-grid-3 bg-primary"></span><span
                                        class="line-grid line-grid-4 bg-primary"></span><span
                                        class="line-grid line-grid-5 bg-primary"></span></a></li>
                                <li><a class="product-4-layout-view" href="#" data-original-title=""
                                       title=""><span class="line-grid line-grid-6 bg-primary"></span><span
                                        class="line-grid line-grid-7 bg-primary"></span><span
                                        class="line-grid line-grid-8 bg-primary"></span><span
                                        class="line-grid line-grid-9 bg-primary"></span></a></li>
                                <li><a class="product-6-layout-view" href="#" data-original-title=""
                                       title=""><span class="line-grid line-grid-10 bg-primary"></span><span
                                        class="line-grid line-grid-11 bg-primary"></span><span
                                        class="line-grid line-grid-12 bg-primary"></span><span
                                        class="line-grid line-grid-13 bg-primary"></span><span
                                        class="line-grid line-grid-14 bg-primary"></span><span
                                        class="line-grid line-grid-15 bg-primary"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 text-end"><span
                            class="f-w-600 m-r-5">Showing Products 1 - 24 Of 200 Results</span>
                        <div class="select2-drpdwn-product select-options d-inline-block">
                            <select class="form-control btn-square" name="select">
                                <option value="opt1">Featured</option>
                                <option value="opt2">Lowest Prices</option>
                                <option value="opt3">Highest Prices</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="product-sidebar">
                            <div class="filter-section">
                                <div class="card">
                                    <div class="card-header">
                                        <h6 class="mb-0 f-w-600">Filters<span class="pull-right"><i
                                                class="fa fa-chevron-down toggle-data"></i></span></h6>
                                    </div>
                                    <div class="left-filter">
                                        <div class="card-body filter-cards-view animate-chk">
                                            <div class="product-filter">
                                                <h6 class="f-w-600">Category</h6>
                                                <div class="checkbox-animated mt-0">
                                                    <label class="d-block" for="edo-ani5">
                                                        <input class="radio_animated" id="edo-ani5" type="radio"
                                                               data-original-title="" title="">All categories
                                                    </label>
                                                    <c:forEach items="${categories}" var="category">
                                                        <label class="d-block" for="edo-ani5">
                                                            <input class="radio_animated" id="edo-ani5" type="radio"
                                                                   data-original-title="" title="">${category.name}
                                                        </label>
                                                    </c:forEach>

                                                </div>
                                            </div>
                                            <div class="product-filter">
                                                <h6 class="f-w-600">Brand</h6>
                                                <div class="checkbox-animated mt-0">
                                                    <label class="d-block" for="chk-ani">
                                                        <input class="checkbox_animated" id="chk-ani"
                                                               type="checkbox" data-original-title="" title="">
                                                        Levi's
                                                    </label>
                                                    <label class="d-block" for="chk-ani1">
                                                        <input class="checkbox_animated" id="chk-ani1"
                                                               type="checkbox" data-original-title="" title="">Diesel
                                                    </label>
                                                    <label class="d-block" for="chk-ani2">
                                                        <input class="checkbox_animated" id="chk-ani2"
                                                               type="checkbox" data-original-title="" title="">Lee
                                                    </label>
                                                    <label class="d-block" for="chk-ani3">
                                                        <input class="checkbox_animated" id="chk-ani3"
                                                               type="checkbox" data-original-title="" title="">Hudson
                                                    </label>
                                                    <label class="d-block" for="chk-ani4">
                                                        <input class="checkbox_animated" id="chk-ani4"
                                                               type="checkbox" data-original-title="" title="">Denizen
                                                    </label>
                                                    <label class="d-block" for="chk-ani5">
                                                        <input class="checkbox_animated" id="chk-ani5"
                                                               type="checkbox" data-original-title="" title="">Spykar
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12">
                        <form>
                            <div class="form-group m-0">
                                <input class="form-control" type="search" placeholder="Search.."
                                       data-original-title="" title=""><i class="fa fa-search"></i>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="product-wrapper-grid">
                <div class="row">
                    <c:forEach items="${products}" var="product">
                        <div class="col-xl-3 col-sm-6 xl-4">
                            <div class="card">
                                <div class="product-box">
                                    <div class="product-img"><img class="img-fluid" style="height: 300px; width: 100%"
                                                                  src="images/${product.image}" alt="">
                                        <div class="product-hover">
                                            <ul>
                                                <li>
                                                    <a href="CartController?action=add_item&id=${product.id}"
                                                       class="btn" type="button"> <i
                                                            class="icon-shopping-cart"></i></a>
                                                </li>
                                                <li>
                                                    <button class="btn" type="button" data-bs-toggle="modal"
                                                            data-bs-target="#exampleModalCenter${product.id}"><i
                                                            class="icon-eye"></i></button>
                                                </li>
                                                <li>
                                                    <button class="btn" type="button"><i
                                                            class="icofont icofont-law-alt-2"></i></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="exampleModalCenter${product.id}" tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="exampleModalCenter${product.id}" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="product-box row">
                                                        <div class="product-img col-lg-6">
                                                            <img class="img-fluid" src="images/${product.image}" alt="">
                                                        </div>
                                                        <div class="product-details col-lg-6 text-start">
                                                            <h4>${product.name}</h4>
                                                            <div class="product-price">$${product.price}
                                                                <del>$350.00</del>
                                                            </div>
                                                            <div class="product-view">
                                                                <h6 class="f-w-600">Product Details</h6>
                                                                <p class="mb-0">${product.description}</p>
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
                                                            <form method="post" action="CartController">
                                                                <input type="hidden" name="id" value="${product.id}">
                                                                <input type="hidden" name="action" value="add_item">
                                                                <div class="product-qnty">
                                                                    <h6 class="f-w-600">Quantity</h6>
                                                                    <fieldset>
                                                                        <div class="input-group">
                                                                            <input class="touchspin text-center"
                                                                                   type="number" value="1" min="1"
                                                                                   max="${product.quantity}"
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
                                                            </form>
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
                                        <h4>${product.name}</h4>
                                        <p>${product.category}</p>
                                        <div class="product-price">$${product.price}
                                            <del>$350.00</del>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>
<%@include file="scripts.jsp" %>