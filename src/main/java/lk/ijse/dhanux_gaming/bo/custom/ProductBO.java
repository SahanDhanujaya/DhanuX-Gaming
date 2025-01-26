package lk.ijse.dhanux_gaming.bo.custom;

import lk.ijse.dhanux_gaming.bo.SuperBO;
import lk.ijse.dhanux_gaming.dto.ProductDto;

import java.util.List;

public interface ProductBO extends SuperBO {
    boolean saveProduct(ProductDto productDto);
    List<ProductDto> getProductList();
}
