package lk.ijse.dhanux_gaming.dao;

import lk.ijse.dhanux_gaming.entity.User;

import java.util.List;

public interface CrudDAO<T> extends SuperDAO {
    boolean save(T obj);
    List<T> getList();
}
