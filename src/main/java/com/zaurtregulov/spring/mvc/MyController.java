package com.zaurtregulov.spring.mvc;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {

        model.addAttribute("employee", new Employee());

        return "ask-emp-details-view";
    }

//    @RequestMapping("/showDetail")
//    public String showEmpDetails(){
//        return "show-emp-detail-view";
//    }

//    @RequestMapping("/showDetail")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//        String empName = "Mr. " + request.getParameter("employeeName");
//        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("nameAttribute2", "описание");
//        return "show-emp-detail-view";
//    }

    @RequestMapping("/showDetail")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp,
                                 BindingResult bindingResult) {
        if(bindingResult.hasErrors()){
            return "ask-emp-details-view";
        }
        else return "show-emp-detail-view";
    }
}
