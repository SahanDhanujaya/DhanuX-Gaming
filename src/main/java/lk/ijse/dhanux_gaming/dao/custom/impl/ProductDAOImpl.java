package lk.ijse.dhanux_gaming.dao.custom.impl;

import lk.ijse.dhanux_gaming.config.FactoryConfiguration;
import lk.ijse.dhanux_gaming.dao.custom.ProductDAO;
import lk.ijse.dhanux_gaming.entity.Product;
import lk.ijse.dhanux_gaming.entity.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ProductDAOImpl implements ProductDAO {
    @Override
    public boolean save(Product product) {
        Session session = FactoryConfiguration.getInstance().getSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(new Product(product.getProductId(), product.getProductName(), product.getDescription(), product.getPrice(), product.getQty(),product.getCategoryName(),null,null, product.getProfilePicture()));
            transaction.commit();
            return true;
        } catch(Exception e){
            transaction.rollback();
            return false;
        }finally {
            session.close();
        }
    }

    @Override
    public List<Product> getList() {
        Session session = null;
        Transaction transaction = null;
        try {
            session = FactoryConfiguration.getInstance().getSession();
            transaction = session.beginTransaction();
            List<Product> fromProduct = session.createQuery("FROM Product", Product.class).getResultList();
            transaction.commit();
            return fromProduct;
        }catch (Exception e){
            transaction.rollback();
        }finally {
            session.close();
        }
        return null;
    }
}
