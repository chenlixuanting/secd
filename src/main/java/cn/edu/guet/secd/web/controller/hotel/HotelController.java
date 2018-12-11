package cn.edu.guet.secd.web.controller.hotel;

import cn.edu.guet.secd.web.constant.HotelConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hotel")
public class HotelController {

    @RequestMapping("/index")
    public String indexPage(){
        return HotelConstant.HOTEL_INDEX;
    }

}
