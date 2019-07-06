package com.sda.kosmetykiLol.kosmoSklep.Repositories;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Checkout.Checkout;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CheckoutRepository extends JpaRepository<Long, Checkout> {
}
