package controller;

import businessLayer.BusinessLayer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.User;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "LoginController", value = "/LoginController")
public class LoginController extends HttpServlet {
    BusinessLayer businessLayer = new BusinessLayer();
    ArrayList<User> usersList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "loginPage":
                response.sendRedirect("login.jsp");
                break;
            case "registerPage":
                response.sendRedirect("register.jsp");
                break;
            case "logout":
                logoutUser(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "register":
                saveUser(request, response);
                break;
            case "login":
                loginUser(request, response);
                break;
        }
    }

    private void logoutUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("login.jsp");
    }

    private void loginUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String login = request.getParameter("login");
        String password = request.getParameter("login[password]");
        User user = new User(login, password);
        if (businessLayer.isAdmin(user)) {
            request.getRequestDispatcher("admin_index.jsp").forward(request, response);
        } else if (businessLayer.isRegistered(user)) {
            response.sendRedirect("http://localhost:8080/eCommerceApp_war_exploded/AdminController?action=showProducts");
        } else {
            request.setAttribute("message", "Login or Password is wrong !!!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        session.setAttribute("status", login);
    }


    private void saveUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("login[password]");
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        User user = new User(login, password, email, firstName, lastName);
        System.out.println("login:" + login);
        System.out.println("password: " + password);
        System.out.println("email" + email);
        System.out.println("firstName:" + firstName);
        System.out.println("lastName: " + lastName);
        if (businessLayer.existLogin(user))
            request.setAttribute("message", "Login already exists !!!");
        else {
            businessLayer.saveUser(user);
            request.setAttribute("message", "account had been created");
        }
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }


}
