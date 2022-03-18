package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.TimeZone;

@Controller
public class TimeController {
    @GetMapping("/world-clock")
    public String getTimeByTimezone(@RequestParam(name = "city", required = false, defaultValue = "Asia/Ho_Chi_Minh") String city, ModelMap modelMap) {
        // Lấy ra thời gian hiện tại
        Date date = new Date();
        // Lấy ra time zone hiện tại
        TimeZone local = TimeZone.getDefault();
        // Lấy ra time zone của 1 thành phố cụ thể
        TimeZone locale = TimeZone.getTimeZone(city);
        // Tính thời gian hiện tại của thành phố cụ thể
        long loacle_time = date.getTime() + (locale.getRawOffset() - local.getRawOffset());
        // Cài đặt thời gian cho biến date thành thời gian hiện tại cho 1 thành phó cụ thể
        date.setTime(loacle_time);
        // Chuyển dữ liệu và gửi cho view
        modelMap.addAttribute("city",city);
        modelMap.addAttribute("date",date);
        return "index";
    }
}
