package com.mo.prdsales.service;

import com.mo.prdsales.dao.IProductSalesDao;
import com.mo.prdsales.domain.ProductSalesDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kunalp on 16/1/2015.
 */
@Service(value = "productSalesService")
public class ProductSalesServiceImpl implements IProductSalesService {

    @Autowired
    @Qualifier(value = "productSalesDao")
    private IProductSalesDao myProductSalesDao;

    @Override
    public List<ProductSalesDetails> getSalesReport() {
        return myProductSalesDao.getSalesReport();
    }
}
