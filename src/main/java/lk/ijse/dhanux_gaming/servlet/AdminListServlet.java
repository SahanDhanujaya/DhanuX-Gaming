package lk.ijse.dhanux_gaming.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.dhanux_gaming.bo.BOFactory;
import lk.ijse.dhanux_gaming.bo.custom.UserBO;
import lk.ijse.dhanux_gaming.dto.UserDto;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminListServlet" , value = "/adminList")
public class AdminListServlet extends HttpServlet {
    UserBO userBO = (UserBO) BOFactory.getBoFactory(BOFactory.BOType.USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<UserDto> userList = userBO.getUserList();
        System.out.println(userList);
        req.setAttribute("users",userList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin-page.jsp");
        requestDispatcher.forward(req,resp);
    }
}
