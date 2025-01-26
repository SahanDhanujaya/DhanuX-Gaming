package lk.ijse.dhanux_gaming.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import lk.ijse.dhanux_gaming.bo.BOFactory;
import lk.ijse.dhanux_gaming.bo.custom.UserBO;
import lk.ijse.dhanux_gaming.dto.UserDto;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "AdminServlet" , value = "/admin-page")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10,      // 10MB
        maxRequestSize = 1024 * 1024 * 50   // 50MB
)
public class AdminServlet extends HttpServlet {
    UserBO user = (UserBO) BOFactory.getBoFactory(BOFactory.BOType.USER);
    private static final String UPLOAD_DIR = "uploaded_images"; // Directory to save images

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String email = req.getParameter("email");
        int mobile = Integer.parseInt(req.getParameter("mobile"));
        String userType = req.getParameter("userType");

        Part filePart = req.getPart("image");

        // Get the filename from the uploaded part
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        // Define the upload path (project directory)
        String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;

        // Create the directory if it doesn't exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        // Save the file on the server
        if (fileName != null && !fileName.isEmpty()) {
            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath); // Save the file



                user.saveUser(new UserDto(name, address, email, userType, mobile,"", UPLOAD_DIR + "/" + fileName));

            resp.sendRedirect("admin-page.jsp?message=Customer Saved!!!");
        }
    }

}
