package com.mo.prdsales;

import com.mo.prdsales.domain.ProductSalesDetails;
import com.mo.prdsales.service.IProductSalesService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.math.BigDecimal;
import java.util.List;

/**
 * Created by kunalp on 16/1/2015.
 */
public class MainClass {

    public static void main(String args[]) throws Exception {
        ApplicationContext context = new ClassPathXmlApplicationContext(
                "classpath:META-INF.spring/applicationContext.xml");

        IProductSalesService productSalesService = context.getBean(IProductSalesService.class);
        List<ProductSalesDetails> productSalesDetailsList = productSalesService.getSalesReport();

        System.out.println("Product Name          Total Sold          Total Amount");
        System.out.println("=======================================================");
        for (ProductSalesDetails psd : productSalesDetailsList){
            System.out.println(psd.getProductName()+"           "+psd.getTotalSold()+"           "
                    +new BigDecimal(psd.getTotalAmount()).setScale(2, BigDecimal.ROUND_HALF_UP));
        }
    }
}
