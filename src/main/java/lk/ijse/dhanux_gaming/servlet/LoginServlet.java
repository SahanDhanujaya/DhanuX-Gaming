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

@WebServlet(name = "LoginServlet" , value = "/login")
public class LoginServlet extends HttpServlet {
    UserBO userBO = (UserBO) BOFactory.getBoFactory(BOFactory.BOType.USER);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserDto userDto = userBO.checkcCredintials(email, password);
        if (userDto != null){
            resp.setStatus(HttpServletResponse.SC_ACCEPTED);
            resp.sendRedirect("index.jsp?message="+userDto.getEmail());
        } else {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.sendRedirect("index.jsp?message=null");
        }

    }
}
