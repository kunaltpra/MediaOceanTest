package com.mo.prdsales.dao;

import com.mo.prdsales.domain.ProductSalesDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by kunalp on 16/1/2015.
 */
@Repository(value = "productSalesDao")
public class ProductSalesDaoImpl implements IProductSalesDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<ProductSalesDetails> getSalesReport() {
        final String sql = "select p.productname as 'Product Name', count(p.productname) as 'Total Sold', sum(s.saleamount) as 'Total Amount' from producttable p, salesentry s where p.productid=s.productid group by p.productname";


        List<ProductSalesDetails> psdList = new ArrayList<ProductSalesDetails>();

        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);

//        System.out.println("printing results.....");
//        System.out.println(rows);
        for (Map row : rows) {
            ProductSalesDetails psd = new ProductSalesDetails();
            psd.setProductName((String) (row.get("Product Name")));
            psd.setTotalSold((Long) row.get("Total Sold"));
            psd.setTotalAmount((Double) row.get("Total Amount"));
            psdList.add(psd);
        }

        return psdList;
    }
}
