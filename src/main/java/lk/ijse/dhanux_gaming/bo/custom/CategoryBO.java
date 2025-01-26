package lk.ijse.dhanux_gaming.bo.custom;

import lk.ijse.dhanux_gaming.bo.SuperBO;
import lk.ijse.dhanux_gaming.dto.CategoryDto;

public interface CategoryBO extends SuperBO {
    boolean save(CategoryDto categoryDto);
}
