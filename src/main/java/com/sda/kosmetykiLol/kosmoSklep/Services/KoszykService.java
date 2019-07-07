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

//    public void deleteProductKoszyk(Long id) {
//        koszykRepository.deleteById(id);
//    }
//
//    //    public List<Product> viewKoszyk(){return  koszykRepository.findAll();}
//    public void flushKoszyk() {
//        koszykRepository.flush();
//    }
//
//    public Long numberInKoszyk() {
//        return koszykRepository.count();
//    }
//
//
//    public List<Product> findAllProducts() {
//        return koszykRepository.findAll();
//    }
//
//    public List<Product> viewKoszyk() {
//        return koszykRepository.findAll();
//    }

}
