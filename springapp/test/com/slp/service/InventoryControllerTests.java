package com.slp.service;

import com.slp.controller.InventoryController;
import com.slp.domain.Product;
import com.slp.repository.InMemoryProductDao;
import junit.framework.TestCase;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Map;

/**
 * @author sanglp
 * @create 2018-01-04 10:43
 * @desc InventoryControllerTests
 **/
public class InventoryControllerTests extends TestCase {
    public void testHandleRequestView() throws Exception{
        InventoryController controller = new InventoryController();
        SimpleProductManager spm = new SimpleProductManager();
        spm.setProductDao(new InMemoryProductDao(new ArrayList<Product>()));
        controller.setProductManager(spm);
        //controller.setProductManager(new SimpleProductManager());
        ModelAndView modelAndView = controller.handleRequest(null, null);
        assertEquals("hello", modelAndView.getViewName());
        assertNotNull(modelAndView.getModel());
        Map modelMap = (Map) modelAndView.getModel().get("model");
        String nowValue = (String) modelMap.get("now");
        assertNotNull(nowValue);
    }
}
