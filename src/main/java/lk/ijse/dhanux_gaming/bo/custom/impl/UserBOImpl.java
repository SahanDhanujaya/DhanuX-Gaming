package lk.ijse.dhanux_gaming.bo.custom.impl;

import lk.ijse.dhanux_gaming.bo.custom.UserBO;
import lk.ijse.dhanux_gaming.dao.DAOFactory;
import lk.ijse.dhanux_gaming.dao.custom.UserDAO;
import lk.ijse.dhanux_gaming.dto.UserDto;
import lk.ijse.dhanux_gaming.entity.User;

import java.util.ArrayList;
import java.util.List;

public class UserBOImpl implements UserBO {
    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory(DAOFactory.DAOType.USER);
    @Override
    public boolean saveUser(UserDto user) {
        return userDAO.save(new User(1, user.getName(), user.getAddress(), user.getEmail(), user.getUserType(), user.getMobile(),user.getPassword(), null,user.getProfilePicture()));
    }

    @Override
    public List<UserDto> getUserList() {
        List<User> users = userDAO.getList();
        List<UserDto> userDtos = new ArrayList<>();
        for (User user: users) {
            userDtos.add(new UserDto(user.getName(),user.getAddress(),user.getEmail(),user.getUsertype(),user.getMobile(),user.getPassword(),user.getProfilePicture()));
        }
        return userDtos;
    }

    @Override
    public UserDto checkcCredintials(String email, String password) {
        User user = userDAO.checkCredintials(email, password);
        return new UserDto(user.getName(), user.getAddress(), user.getEmail(), user.getUsertype(), user.getMobile(), user.getPassword(), user.getProfilePicture());
    }
}
