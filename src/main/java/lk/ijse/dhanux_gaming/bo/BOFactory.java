package lk.ijse.dhanux_gaming.bo;

import lk.ijse.dhanux_gaming.bo.custom.impl.UserBOImpl;

public class BOFactory {
    private static BOFactory boFactory;
    private BOFactory(){}
    public enum BOType{
        USER
    }
    public static SuperBO getBoFactory(BOType boType){
        switch (boType){
            case USER:
                return new UserBOImpl();
            default:
                return null;
        }
    }
}
