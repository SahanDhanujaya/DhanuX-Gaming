package lk.ijse.dhanux_gaming.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.dhanux_gaming.bo.BOFactory;
import lk.ijse.dhanux_gaming.bo.custom.UserBO;
import lk.ijse.dhanux_gaming.dto.UserDto;

import java.io.IOException;

@WebServlet(name = "CustomerSaveServlet", value = "/customer-save")
public class CustomerSaveServlet extends HttpServlet {
    UserBO userBO = (UserBO) BOFactory.getBoFactory(BOFactory.BOType.USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        userBO.saveUser(new UserDto(name,"any",email,"customer",071234567,password,"profile"));
        resp.sendRedirect("registerPage.jsp?message="+name +"Register Successfully");
    }
}
