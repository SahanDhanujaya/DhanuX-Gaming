package lk.ijse.dhanux_gaming.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import lk.ijse.dhanux_gaming.bo.BOFactory;
import lk.ijse.dhanux_gaming.bo.custom.ProductBO;
import lk.ijse.dhanux_gaming.dto.ProductDto;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

@WebServlet(name = "ProductServlet" , value = "/product")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10,      // 10MB
        maxRequestSize = 1024 * 1024 * 50   // 50MB
)
public class ProductServlet extends HttpServlet {

    ProductBO productBO = (ProductBO) BOFactory.getBoFactory(BOFactory.BOType.PRODUCT);
    private static final String UPLOAD_DIR = "product_image"; // Directory to save images

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ProductDto> productList = productBO.getProductList();
        System.out.println(productList.isEmpty());
        req.setAttribute("products", productList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("product.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String product = req.getParameter("product");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        int qty = Integer.parseInt(req.getParameter("qty"));
        String category = req.getParameter("category");
        Part filePart = req.getPart("productImage");


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

            boolean isSaved = productBO.saveProduct(new ProductDto(product, description, price, qty, category, UPLOAD_DIR + "/" + fileName));
            if (isSaved) {
                List<ProductDto> productList = productBO.getProductList();
                System.out.println(productList.isEmpty());
                req.setAttribute("products", productList);
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("product.jsp");
                requestDispatcher.forward(req, resp);
            } else {
                resp.sendRedirect("product.jsp?message=Product unsaved!!");
            }
        }
    }
}
