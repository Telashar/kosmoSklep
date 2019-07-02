package com.sda.kosmetykiLol.kosmoSklep.Entities.Users;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
public class User {

//ID
    @Id
    @GeneratedValue
    private Long id;

//dane osobiste
    private String firstName;
    private String lastName;

//zabezpieczenenia konta
    private String password;

//adres
    private String email;
    private String streetAddress1;
    private String streetAddress2;
    private String city;
    private String postalCode;
    private String state;
    private String country;


}
