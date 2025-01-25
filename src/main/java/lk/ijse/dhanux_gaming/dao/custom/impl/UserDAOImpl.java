package lk.ijse.dhanux_gaming.dao.custom.impl;
import lk.ijse.dhanux_gaming.config.FactoryConfiguration;
import lk.ijse.dhanux_gaming.dao.custom.UserDAO;
import lk.ijse.dhanux_gaming.entity.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class UserDAOImpl implements UserDAO {

    @Override
    public boolean save(User user) {
        Session session = null;
        Transaction transaction = null;
        try {
           session = FactoryConfiguration.getInstance().getSession();
           transaction = session.beginTransaction();
           session.save(user);
           transaction.commit();
           return true;
        }catch (Exception e){
            transaction.rollback();
            session.close();
            return  false;
        } finally {
            session.close();
        }
    }

    @Override
    public List<User> getList() {
        Session session = null;
        Transaction transaction = null;
        try {
            System.out.println("come to try catch");
            session = FactoryConfiguration.getInstance().getSession();
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM User ", User.class);
            List<User> resultList = query.getResultList();
            transaction.commit();
            session.close();
            return resultList;
        }catch (Exception e){
            transaction.rollback();
            session.close();
        }
        transaction.rollback();
        session.close();
        return null;
    }
}
