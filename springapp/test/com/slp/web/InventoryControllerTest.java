package com.slp.web;

import com.slp.controller.InventoryController;
import com.slp.service.SimpleProductManager;
import junit.framework.TestCase;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * @author sanglp
 * @create 2018-01-03 15:49
 * @desc test
 * Create a test class called 'HelloControllerTests' and make it extend JUnit's test class TestCase. It is a unit test that verifies the view name returned by handleRequest() matches the name of the view we expect: 'hello.jsp'.
 **/
public class InventoryControllerTest extends TestCase {
    public void testHandleRequestView() throws Exception{
        InventoryController controller = new InventoryController();
        controller.setProductManager(new SimpleProductManager());
        ModelAndView modelAndView = controller.handleRequest(null, null);
        assertEquals("hello", modelAndView.getViewName());
        assertNotNull(modelAndView.getModel());
        Map modelMap = (Map) modelAndView.getModel().get("model");
        String nowValue = (String) modelMap.get("now");
        assertNotNull(nowValue);
    }
}
