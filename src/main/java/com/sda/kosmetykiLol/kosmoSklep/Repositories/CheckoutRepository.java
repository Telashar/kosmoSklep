package com.sda.kosmetykiLol.kosmoSklep.Repositories;

        import com.sda.kosmetykiLol.kosmoSklep.Entities.Checkout.Checkout;
        import org.springframework.data.jpa.repository.JpaRepository;

        import java.util.List;


public interface CheckoutRepository extends JpaRepository<Checkout,Long> {

    List<Checkout> findCheckoutByUser_Id(Long id);

}
