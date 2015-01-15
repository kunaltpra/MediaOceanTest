package com.mo.prdsales.dao;

import com.mo.prdsales.domain.ProductSalesDetails;

import java.util.List;

/**
 * Created by kunalp on 16/1/2015.
 */
public interface IProductSalesDao {
    List<ProductSalesDetails> getSalesReport();
}
