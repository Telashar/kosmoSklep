package com.sda.kosmetykiLol.kosmoSklep.Entities.Checkout;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import lombok.Data;

import javax.persistence.*;
import java.util.List;


@Data
public class Checkout {

    //produkty
    Long totalCost;
    List<Product> listOfProducts;
    int numberOfProducts;

    //dane adresowe
//    String firstName;
//    String lastName;
//    String address1;
//    String address2;
//    String city;
//    String postalCode;
//    String state;
//    String country;



}
