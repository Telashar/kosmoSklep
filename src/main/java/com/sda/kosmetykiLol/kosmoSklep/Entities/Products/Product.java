package com.sda.kosmetykiLol.kosmoSklep.Entities.Products;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
public class Product {


    @Id
    @GeneratedValue
    private Long id;

    private Long price;
    private String name;
    private String description;
    private int available; //w magazynie//


}
