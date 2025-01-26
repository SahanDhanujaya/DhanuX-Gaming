package lk.ijse.dhanux_gaming.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.dhanux_gaming.bo.BOFactory;
import lk.ijse.dhanux_gaming.bo.custom.ProductBO;
import lk.ijse.dhanux_gaming.config.FactoryConfiguration;
import lk.ijse.dhanux_gaming.dto.ProductDto;

import java.io.IOException;
import java.net.http.HttpClient;
import java.util.List;

@WebServlet(name = "ProductList" ,value = "/product-list")
public class ProductList extends HttpServlet {
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory(BOFactory.BOType.PRODUCT);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
