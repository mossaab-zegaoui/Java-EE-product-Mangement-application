package businessLayer;

import dataLayer.DataLayer;
import models.*;

import java.util.ArrayList;

public class BusinessLayer implements gestionUsersInterface, gestionProduitsInterface {
    static ArrayList<User> users = new ArrayList<User>();
    static ArrayList<Product> products = new ArrayList<Product>();
    DataLayer dataLayer = new DataLayer();

    public BusinessLayer() {
    }

    @Override
    public ArrayList<Product> listAllProducts() {
        this.products = dataLayer.listAllProducts();
        return products;
    }

    public ArrayList<Product> getCartProducts(ArrayList<Cart> cartList) {
        return dataLayer.getCartProducts(cartList);
    }

    @Override
    public Product selectProduct(int id) {
        return dataLayer.selectProduct(id);
    }

    @Override
    public boolean saveProduct(Product product) {
        return dataLayer.saveProduct(product);
    }

    public boolean deleteProduct(int id) {
        return dataLayer.deleteProduct(id);
    }

    @Override
    public void editProduct(Product product) {
        dataLayer.updateProduct(product);
    }

    @Override
    public ArrayList<Product> getProcessingOrders() {
        return dataLayer.getProcessingOrders();
    }

    @Override
    public ArrayList<Product> shippedOrders() {
        return dataLayer.getShippedOrders();
    }

    @Override
    public ArrayList<Product> cancelledOrders() {
        return dataLayer.getcancelledOrders();
    }
    public ArrayList<Product> allUserOrders(int id) {
        return dataLayer.getAllUserOrders(id);
    }

    @Override
    public ArrayList<Category> listAllCategories() {
        return dataLayer.listAllCategories();
    }

    @Override
    public ArrayList<Product> userCompletedOrders(int id) {
        return dataLayer.getUserCompletedOrders(id);
    }
    public ArrayList<Product> userOngoingOrders(int id) {
        return dataLayer.getUserOngoingdOrders(id);
    }



    @Override
    public ArrayList<User> listAllUsers() {
        this.users = dataLayer.listAllUsers();
        return users;
    }

    @Override
    public User selectUser(int id) {
        return dataLayer.selectUser(id);
    }

    public User selectUser(String login) {
        return dataLayer.selectUser(login);
    }

    @Override
    public boolean saveUser(User user) {
        return dataLayer.saveUser(user);
    }

    @Override
    public boolean deleteUser(String login) {
        return dataLayer.deleteUser(login);
    }

    @Override
    public void editUser(User user) {
        dataLayer.updateUser(user);
    }

    @Override
    public void addUserDetails(User user) {
        dataLayer.addUserDetails(user);

    }

    public boolean existLogin(User user) {
        return dataLayer.existLogin(user);
    }

    public boolean isRegistered(User user) {
        return dataLayer.isRegistered(user);
    }

    public boolean isAdmin(User user) {
        return dataLayer.isAdmin(user);
    }

    public void saveOrder(Order order, ArrayList<Product> orderItems) {
        int orderId = dataLayer.saveOrder(order);
        for (Product item : orderItems)
            dataLayer.saveOrderItems(orderId, item);
    }

    public void updateOrderStatus(Order order) {
        dataLayer.updateOrderStatus(order);

    }


}
