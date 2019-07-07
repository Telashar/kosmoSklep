package com.sda.kosmetykiLol.kosmoSklep.Entities.Checkout;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import com.sda.kosmetykiLol.kosmoSklep.Entities.Users.User;
import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class Checkout {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @ManyToOne
    User user;

    @ManyToOne
    Product product;



}
