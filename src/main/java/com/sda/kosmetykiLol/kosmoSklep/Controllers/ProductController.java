package com.sda.kosmetykiLol.kosmoSklep.Controllers;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import com.sda.kosmetykiLol.kosmoSklep.Repositories.ProductRepository;
import com.sda.kosmetykiLol.kosmoSklep.Services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/product")
public class ProductController {

    private final ProductService productService;

    @GetMapping("/create")
    public String addProduct(Model model) {

        model.addAttribute("product", new Product());

        return "product/addproduct";
    }

    @PostMapping("/create")
    public String saveProduct(@ModelAttribute("product") Product product) {

        productService.addProduct(product);

        return "product/list";
    }

}
