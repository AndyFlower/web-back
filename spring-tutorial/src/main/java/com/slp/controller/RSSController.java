package com.slp.controller;

import com.slp.domain.RSSMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author sanglp
 * @create 2018-01-09 13:10
 * @desc RSSController
 **/
@Controller
public class RSSController {
    @RequestMapping(value="/rssfeed", method = RequestMethod.GET)
    public ModelAndView getFeedInRss() {

        List<RSSMessage> items = new ArrayList<RSSMessage>();

        RSSMessage content  = new RSSMessage();
        content.setTitle("Spring Tutorial");
        content.setUrl("http://www.tutorialspoint/spring");
        content.setSummary("Spring tutorial summary...");
        content.setCreatedDate(new Date());
        items.add(content);

        RSSMessage content2  = new RSSMessage();
        content2.setTitle("Spring MVC");
        content2.setUrl("http://www.tutorialspoint/springmvc");
        content2.setSummary("Spring MVC tutorial summary...");
        content2.setCreatedDate(new Date());
        items.add(content2);

        ModelAndView mav = new ModelAndView();
        mav.setViewName("rssViewer");
        mav.addObject("feedContent", items);

        return mav;
    }
}
