package com.mo.prdsales.service;

import com.mo.prdsales.domain.ProductSalesDetails;

import java.util.List;

/**
 * Created by kunalp on 16/1/2015.
 */
public interface IProductSalesService {
    List<ProductSalesDetails> getSalesReport();
}
