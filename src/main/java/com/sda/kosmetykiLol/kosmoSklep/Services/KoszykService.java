package com.sda.kosmetykiLol.kosmoSklep.Services;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;

import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;


@Service
@Scope(scopeName = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
@RequiredArgsConstructor
public class KoszykService {

    private final List<Product> products = new ArrayList<>();


    public void addProductToKoszyk(Product product) {
        products.add(product);
    }

    public void deleteProductKoszyk(Long i) {
        products.remove(i);
    }


    public Long numberInKoszyk() {
        return Long.valueOf(products.size());
    }


    public List<Product> findAllProducts() {
        return products;
    }
}
