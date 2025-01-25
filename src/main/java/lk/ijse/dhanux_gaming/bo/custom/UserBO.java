package lk.ijse.dhanux_gaming.bo.custom;

import lk.ijse.dhanux_gaming.bo.SuperBO;
import lk.ijse.dhanux_gaming.dto.UserDto;

import java.util.List;

public interface UserBO extends SuperBO {
    boolean saveUser(UserDto user);
    List<UserDto> getUserList();
}
