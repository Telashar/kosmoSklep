package com.sda.kosmetykiLol.kosmoSklep.Services;


import com.sda.kosmetykiLol.kosmoSklep.Entities.Checkout.Checkout;
import com.sda.kosmetykiLol.kosmoSklep.Repositories.CheckoutRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CheckoutService {

    private CheckoutRepository checkoutRepository;

    public void addCheckout(Checkout checkout){checkoutRepository.save(checkout);}
    public List<Checkout> findCheckoutsByUser(Long userId){return checkoutRepository.findCheckoutByUser_Id(userId);}

}
