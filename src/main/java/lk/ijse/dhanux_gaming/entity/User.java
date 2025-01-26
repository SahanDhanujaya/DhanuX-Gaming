package lk.ijse.dhanux_gaming.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private int userId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String address;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String usertype;

    @Column(nullable = false,length = 10)
    private int mobile;

    @Column(nullable = false)
    private String password;

    @OneToOne(mappedBy = "user" ,cascade = CascadeType.ALL ,fetch = FetchType.EAGER)
    @JoinColumn(name = "cartId")
    private Cart cart;

    @Column(nullable = false)
    private String profilePicture;


}
