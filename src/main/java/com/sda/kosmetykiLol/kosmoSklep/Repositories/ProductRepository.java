package com.sda.kosmetykiLol.kosmoSklep.Repositories;


import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product,Long> {
}
