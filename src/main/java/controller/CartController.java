package controller;

import businessLayer.BusinessLayer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Cart;
import models.Order;
import models.Product;
import models.User;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CartController", value = "/CartController")
public class CartController extends HttpServlet {
    BusinessLayer businessLayer;
    HttpSession session;

    @Override
    public void init() throws ServletException {
        businessLayer = new BusinessLayer();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "cart_page":
                getCartItems(request, response);
                break;
            case "checkout":
                getCheckoutPage(request, response);
                break;
            case "my_orders":
                getOrders(request, response);
                break;
            case "remove_item":
            removeItem(request,response);
            break;
        }

    }

    private void removeItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        session = request.getSession();
        ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("session_cart");
        for (Cart item:cart_list){
            if(item.getItem().getId() == id){
                cart_list.remove(item);
                break;
            }
        }
        session.setAttribute("session_cart",cart_list);
        response.sendRedirect("http://localhost:8080/eCommerceApp_war_exploded/CartController?action=cart_page");

    }
//  Orders

    private void getOrders(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session = request.getSession();
        String login = (String) session.getAttribute("status");
        if (login == null)
            response.sendRedirect("login.jsp");
        else {
            User user = businessLayer.selectUser(login);
            ArrayList<Product> userCompletedOrders = businessLayer.userCompletedOrders(user.getId());
            ArrayList<Product> userOngoingOrders = businessLayer.userOngoingOrders(user.getId());
            request.setAttribute("completedOders", userCompletedOrders);
            request.setAttribute("ongoingOrders", userOngoingOrders);
            request.getRequestDispatcher("user_orders.jsp").forward(request, response);
        }
    }

    private void getCheckoutPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session = request.getSession();
        String login = (String) session.getAttribute("status");
        if (login == null)
            response.sendRedirect("login.jsp");
        else {
            User user = businessLayer.selectUser(login);
            request.setAttribute("user", user);
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        }
    }

    private void getCartItems(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session = request.getSession();
        ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("session_cart");
        ArrayList<Product> cartProducts = new ArrayList<>();
        if (cart_list != null)
            cartProducts = businessLayer.getCartProducts(cart_list);
        session.setAttribute("cart_products", cartProducts);
        double cartTotal = 0;
        for (Product item : cartProducts) {
            cartTotal += item.getPrice() * item.getQuantity();
        }
        session.setAttribute("cart_total", cartTotal);
        request.getRequestDispatcher("cart.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "add_item":
                addItem(request, response);
                break;
            case "place_order":
                placeOrder(request, response);
                break;
        }
    }

    private void placeOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        addUserDetails(request, response);
        saveOrder(request, response);
        session = request.getSession();
        String login = (String) session.getAttribute("status");
        session.invalidate();
        HttpSession newSession = request.getSession();
        newSession.setAttribute("status", login);
        response.sendRedirect("order_success.jsp");
    }


    private void addUserDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = new User();
        user.setId(Integer.parseInt(request.getParameter("id")));
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setPhone(request.getParameter("phone"));
        user.setCountry(request.getParameter("country"));
        user.setAddress(request.getParameter("address"));
        user.setEmail(request.getParameter("email"));
        user.setPostalCode(request.getParameter("postalCode"));
        businessLayer.addUserDetails(user);
    }

    private void saveOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        session = request.getSession();
        Order order = new Order();
        order.setId(Integer.parseInt(request.getParameter("id")));
        order.setOrderTotalPrice((Double) session.getAttribute("cart_total"));
        ArrayList<Product> orderItems = (ArrayList<Product>) session.getAttribute("cart_products");
        businessLayer.saveOrder(order, orderItems);
    }

    private void addItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Product product = new Product();
        product.setId(id);
        Cart cartItem = new Cart(product, quantity);
        ArrayList<Cart> cartList = new ArrayList<>();
        session = request.getSession();
        ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("session_cart");
        if (cart_list == null) {
            cartList.add(cartItem);
            session.setAttribute("session_cart", cartList);
            response.sendRedirect("http://localhost:8080/eCommerceApp_war_exploded/AdminController?action=showProducts");
        } else {
            cartList = cart_list;
            boolean exist = false;
            for (Cart item : cart_list) {
                if (item.getItem().getId() == id) {
                    exist = true;
                    item.setQuantity(item.getQuantity() + quantity);
                    response.sendRedirect("http://localhost:8080/eCommerceApp_war_exploded/AdminController?action=showProducts");
                }
            }
            if (!exist) {
                cartList.add(cartItem);
                response.sendRedirect("http://localhost:8080/eCommerceApp_war_exploded/AdminController?action=showProducts");
            }
        }
    }
}
