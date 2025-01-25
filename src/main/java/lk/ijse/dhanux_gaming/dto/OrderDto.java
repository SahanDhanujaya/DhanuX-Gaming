package lk.ijse.dhanux_gaming.dto;

import jakarta.persistence.*;
import lk.ijse.dhanux_gaming.entity.OrderDetail;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class OrderDto {
    private int orderId;
    private String orderType;
    private Date date;
}
