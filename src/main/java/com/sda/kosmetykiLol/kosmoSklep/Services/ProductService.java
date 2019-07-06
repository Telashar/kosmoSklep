package com.sda.kosmetykiLol.kosmoSklep.Services;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import com.sda.kosmetykiLol.kosmoSklep.Repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public Optional<Product> findProductByID(Long id) {
        return productRepository.findById(id);
    }

    public void addProduct(Product product) {
        productRepository.save(product);
    }

    public void deleteProductByID(Long id) {
        productRepository.deleteById(id);
    }

    public Product sellProductByID(Long id) {
        Product product = productRepository.findById(id).get();
        int temp = product.getAvailable() - 1;
        product.setAvailable(temp);
        productRepository.save(product);
        return product;
    }

    public List<Product> findAllProducts() {
        return productRepository.findAll();
    }





}
