package com.sda.kosmetykiLol.kosmoSklep.Controllers;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import com.sda.kosmetykiLol.kosmoSklep.Repositories.ProductRepository;
import com.sda.kosmetykiLol.kosmoSklep.Services.KoszykService;
import com.sda.kosmetykiLol.kosmoSklep.Services.ProductService;
import lombok.Data;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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


//        model.addAttribute("koszyk",koszykService.viewKoszyk());
//
//        return "koszyk";
    }

    @GetMapping("/delete/{id}")
    public String deleteFromKoszyk(@PathVariable("id")Long id){
        koszykService.deleteProductKoszyk(id);
        return "redirect: koszyk";
    }

    @GetMapping("/finalizekoszyk")
    public String buyKoszyk(Model model){

        List<Product> zamowienie = koszykService.viewKoszyk();
        model.addAttribute("zamowienie",zamowienie);
        koszykService.flushKoszyk();
        return "product/checkout";
    }







}
