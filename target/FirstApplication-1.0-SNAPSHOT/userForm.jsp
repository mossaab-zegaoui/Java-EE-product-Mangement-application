<%@include file="head.jsp" %>
<%@include file="admin_sidebar.jsp" %>
<div class="page-body">
    <div class="container-fluid">
        <div class="page-title">
            <div class="row">
                <div class="col-6">
                </div>
                <div class="col-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href=""> <i data-feather="home"></i></a>
                        </li>
                        <li class="breadcrumb-item active">Edit</li>
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
                        <c:if test="${user != null}">
                            <h5>Edit user</h5>
                        </c:if>
                        <c:if test="${user == null}">
                            <h3>Add new user </h3>
                        </c:if>
                    </div>
                    <div class="card-body">
                        <c:if test="${user != null}">
                        <form action="AdminController" method="post" id="form">
                            <input type="hidden" name="action" value="updateUser">
                            </c:if>
                            <c:if test="${user == null}">
                            <form action="AdminController" method="post">
                                <input type="hidden" name="action" value="insertUser">
                                </c:if>
                                <div class="row">
                                    <div class="col">
                                        <div class="mb-3 row">
                                            <input type="hidden" value="<c:out value='${user.id}' />"
                                                   class="form-control"
                                                   placeholder="************* " name="id">
                                            <label class="col-sm-3 col-form-label">Login</label>
                                            <div class="col-sm-9">
                                                <input type="text" value="<c:out value='${user.login}' />"
                                                       class="form-control"
                                                       placeholder="************* " name="login">
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label class="col-sm-3 col-form-label">Password</label>
                                            <div class="col-sm-9">
                                                <input value="<c:out value='${user.password}' />"
                                                       class="form-control" type="password"
                                                       placeholder="************* "
                                                       name="password">
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label class="col-sm-3 col-form-label">Email</label>
                                            <div class="col-sm-9">
                                                <input type="email"
                                                       value="<c:out value='${user.email}' />"
                                                       class="form-control"
                                                       placeholder="************* "
                                                       name="email">
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label class="col-sm-3 col-form-label">first name</label>
                                            <div class="col-sm-9">
                                                <input value="<c:out value='${user.firstName}' />"
                                                       class="form-control" type="text"
                                                       placeholder="************* " name="firstName">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label class="col-sm-3 col-form-label">last name</label>
                                        <div class="col-sm-9">
                                            <input type="text"
                                                   value="<c:out value='${user.lastName}' />"
                                                   class="form-control"
                                                   placeholder="************* "
                                                   name="lastName">
                                        </div>
                                    </div>

                                    <div class="card-footer text-end">
                                        <c:if test="${user == null}">
                                            <button type="submit" class="btn btn-success">add
                                                user
                                            </button>
                                        </c:if>
                                        <c:if test="${user != null}">
                                            <button type="submit" class="btn btn-primary">update
                                                user
                                            </button>
                                        </c:if>
                                        <a href="AdminController?action=listUsers">Cancel</a>
                                    </div>
                                </div>
                            </form>
                    </div>
                </div>
            </div>
            <c:if test="${user != null}">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title mb-0">Orders</h4>
                            <div class="card-options"><a class="card-options-collapse" href="#"
                                                         data-bs-toggle="card-collapse"><i
                                    class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#"
                                                                        data-bs-toggle="card-remove"><i
                                    class="fe fe-x"></i></a></div>
                        </div>
                        <div class="table-responsive add-project">
                            <table class="table card-table table-vcenter text-nowrap">
                                <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>items</th>
                                    <th>Price</th>
                                    <th>Status</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userOrders}" var="order">
                                    <tr>
                                        <td>${order.created_at}</td>
                                        <td><a class="text-inherit" href="#">${order.name}</a></td>
                                        <td>$ ${order.price}</td>
                                        <form action="AdminController" method="post">
                                            <input name="user_id" type="hidden" value="${user.id}">
                                            <input name="action" value="update_order_status" type="hidden">
                                            <input name="id" value="${order.id}" type="hidden">
                                            <td><span class="status-icon bg-success"></span>
                                                <select class="form-select" name="status">
                                                    <option>${order.status}</option>
                                                    <option>completed</option>
                                                    <option>cancelled</option>
                                                    <option>pending</option>
                                                </select>
                                            </td>
                                            <td class="text-end">
                                                <button class="btn btn-transparent btn-sm" type="submit">
                                                    <i class="fa fa-link"></i>update
                                                </button>
                                            </td>
                                        </form>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</div>
<%@include file="scripts.jsp" %>