package lk.ijse.dhanux_gaming.dao.custom.impl;

import lk.ijse.dhanux_gaming.bo.custom.CategoryBO;
import lk.ijse.dhanux_gaming.dao.custom.CategoryDAO;
import lk.ijse.dhanux_gaming.entity.Category;

import java.util.List;

public class CategoryDAOImpl implements CategoryDAO {
    @Override
    public boolean save(Category obj) {
        return false;
    }

    @Override
    public List<Category> getList() {
        return null;
    }
}
