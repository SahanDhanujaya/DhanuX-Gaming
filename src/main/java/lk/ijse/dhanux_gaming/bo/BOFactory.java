package lk.ijse.dhanux_gaming.bo;

import lk.ijse.dhanux_gaming.bo.custom.impl.CategoryBOImpl;
import lk.ijse.dhanux_gaming.bo.custom.impl.ProductBOImpl;
import lk.ijse.dhanux_gaming.bo.custom.impl.UserBOImpl;

public class BOFactory {
    private static BOFactory boFactory;
    private BOFactory(){}
    public enum BOType{
        USER,PRODUCT,CATEGORY
    }
    public static SuperBO getBoFactory(BOType boType){
        switch (boType){
            case USER:
                return new UserBOImpl();
            case PRODUCT:
                return new ProductBOImpl();
            case CATEGORY:
                return new CategoryBOImpl();
            default:
                return null;
        }
    }
}
