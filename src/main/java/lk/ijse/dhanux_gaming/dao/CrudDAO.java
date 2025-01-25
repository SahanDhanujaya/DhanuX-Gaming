package lk.ijse.dhanux_gaming.dao;

import lk.ijse.dhanux_gaming.entity.User;

import java.util.List;

public interface CrudDAO<T> extends SuperDAO {
    boolean save(User user);
    List<T> getList();
}
