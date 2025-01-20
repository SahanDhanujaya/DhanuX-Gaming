package lk.ijse.dhanux_gaming.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "cart")
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private int cartId;

    @OneToOne(mappedBy = "cart" , cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    private User user;

}
