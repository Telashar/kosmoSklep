package com.sda.kosmetykiLol.kosmoSklep.Services;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import com.sda.kosmetykiLol.kosmoSklep.Repositories.KoszykRepository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class KoszykService {

    private KoszykRepository koszykRepository;

    public void addProductToKoszyk(Product product){ koszykRepository.save(product); }
    public void deleteProductKoszyk(Long id){koszykRepository.deleteById(id);}
    public List<Product> viewKoszyk(){return  koszykRepository.findAll();}
    public void flushKoszyk(){koszykRepository.flush();}
    public Long numberInKoszyk(){return koszykRepository.count();}


}
