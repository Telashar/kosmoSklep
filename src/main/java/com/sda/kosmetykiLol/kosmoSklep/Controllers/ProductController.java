package com.sda.kosmetykiLol.kosmoSklep.Controllers;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import com.sda.kosmetykiLol.kosmoSklep.Services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/product")
public class ProductController {

    private final ProductService productService;

    @GetMapping("/create")
    public String addProduct(Model model) {

        model.addAttribute("product", new Product());
        return "product/create";
    }

    @PostMapping("/create")
    public String saveProduct(@ModelAttribute("product") Product product) {

        productService.addProduct(product);
        return "redirect:/product/list";
    }

    @GetMapping("/buynow/{id}")
    public String sellProduct(@PathVariable("id") Long id, Model model) {

        Product product = productService.sellProductByID(id);
        model.addAttribute("zamowienie", product);
        return "product/checkout";
    }

    @GetMapping("/delete/{id}")
    public String deleteProductByID(@PathVariable("id") Long id) {

        productService.deleteProductByID(id);
        return "redirect:/product/list";
    }

    @GetMapping("/list")
    public String listAllProducts(Model model) {

        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);
        return "product/list";
    }

    @GetMapping("/edit/{id}")
    public String editProduct(@PathVariable("id")Long id, Model model){
        Product product = productService.findProductByID(id).get();
        model.addAttribute("product",product);

        return "product/edit";
    }

    @PostMapping("/edit/{id}")
    public String saveUsr(@ModelAttribute("product")Product product){
        productService.addProduct(product);

        return "redirect:/product/list";
    }







}
