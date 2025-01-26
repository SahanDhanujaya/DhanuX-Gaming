package lk.ijse.dhanux_gaming.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.dhanux_gaming.bo.BOFactory;
import lk.ijse.dhanux_gaming.bo.custom.ProductBO;
import lk.ijse.dhanux_gaming.dto.ProductDto;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryServlet" , value = "/category")
public class CategoryServlet extends HttpServlet {
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory(BOFactory.BOType.PRODUCT);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ProductDto> productList = productBO.getProductList();
        req.setAttribute("games",productList);
        req.getRequestDispatcher("category.jsp").forward(req,resp);
    }
}
