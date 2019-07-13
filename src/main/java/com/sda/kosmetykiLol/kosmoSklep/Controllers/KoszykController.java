package com.sda.kosmetykiLol.kosmoSklep.Controllers;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Checkout.Checkout;
import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import com.sda.kosmetykiLol.kosmoSklep.Services.KoszykService;
import com.sda.kosmetykiLol.kosmoSklep.Services.ProductService;
import lombok.Data;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Data
@Controller
public class KoszykController {

    private final KoszykService koszykService;
    private final ProductService productService;


    @GetMapping("/add/{id}")
    public String addToKoszyk(@PathVariable("id")Long id){

        Product product = productService.findProductByID(id).get();
        koszykService.addProductToKoszyk(product);
        return "redirect:/product/list";
    }

    @GetMapping("/viewkoszyk")
    public String viewKoszyk(Model model){

        List<Product> products = koszykService.findAllProducts();
        model.addAttribute("koszyk", products);
        return "koszyk/viewkoszyk";

    }

    @GetMapping("/delete/{index}")
    public String deleteFromKoszyk(@PathVariable("index")int index){
        koszykService.deleteProductKoszyk(index);
        return "redirect:/viewkoszyk";
    }

    @GetMapping("/finalizekoszyk")
    public String buyKoszyk(Model model){
        Checkout checkout = new Checkout();
        List<Product> zamowienie = koszykService.findAllProducts();
        checkout.setListOfProducts(zamowienie);
        checkout.setNumberOfProducts(koszykService.numberInKoszyk());
        checkout.setTotalCost(koszykService.totalCost());

        model.addAttribute("checkout",checkout);
        return "koszyk/finalizekoszyk";
    }







}
