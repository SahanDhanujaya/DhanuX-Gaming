package lk.ijse.dhanux_gaming.dao;

import lk.ijse.dhanux_gaming.dao.custom.impl.UserDAOImpl;

public class DAOFactory {
    private static DAOFactory daoFactory;
    private DAOFactory(){}
    public enum DAOType{
        USER
    }
    public static SuperDAO getDaoFactory(DAOType daoType){
        switch (daoType){
            case USER:
                return new UserDAOImpl();
            default:
                return null;
        }
    }
}
