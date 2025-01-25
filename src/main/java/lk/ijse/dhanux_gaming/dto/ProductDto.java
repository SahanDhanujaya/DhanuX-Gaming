package lk.ijse.dhanux_gaming.dto;

import lk.ijse.dhanux_gaming.entity.Category;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ProductDto {
    private int productId;
    private String productName;
    private String description;
    private double price;
    private int qty;
    private Category category;
    private String profilePicture;
}
