package lk.ijse.dhanux_gaming.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDetailDto {
    private int orderDetailId;
    private double orderPrice;
    private Date date;
}
