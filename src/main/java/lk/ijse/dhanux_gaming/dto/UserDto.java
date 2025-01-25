package lk.ijse.dhanux_gaming.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserDto {
    private String name;
    private String address;
    private String email;
    private String userType;
    private int mobile;
    private String profilePicture;
}
