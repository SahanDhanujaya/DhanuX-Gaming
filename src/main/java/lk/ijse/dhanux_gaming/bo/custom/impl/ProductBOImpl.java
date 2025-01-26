package lk.ijse.dhanux_gaming.bo.custom.impl;

import lk.ijse.dhanux_gaming.bo.custom.ProductBO;
import lk.ijse.dhanux_gaming.dao.DAOFactory;
import lk.ijse.dhanux_gaming.dao.custom.ProductDAO;
import lk.ijse.dhanux_gaming.dto.ProductDto;
import lk.ijse.dhanux_gaming.entity.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductBOImpl implements ProductBO {
    ProductDAO productDAO = (ProductDAO) DAOFactory.getDaoFactory(DAOFactory.DAOType.PRODUCT);

    @Override
    public boolean saveProduct(ProductDto productDto) {
        return productDAO.save(new Product(1, productDto.getProductName(), productDto.getDescription(), productDto.getPrice(), productDto.getQty(),productDto.getCategory(), null, null, productDto.getProfilePicture()));
    }

    @Override
    public List<ProductDto> getProductList() {
        List<Product> list = productDAO.getList();
        List<ProductDto> objects = new ArrayList<>();
        for (Product product: list ) {
            System.out.println("productList : "+product.getCategoryName());
            objects.add(new ProductDto(product.getProductName(), product.getDescription(), product.getPrice(), product.getQty(), product.getCategoryName(), product.getProfilePicture()));
        }
        return objects;
    }
}
