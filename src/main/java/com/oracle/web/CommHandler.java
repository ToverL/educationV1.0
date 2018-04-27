package com.oracle.web;
import com.oracle.service.CommService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommHandler {

    @Autowired
    CommService commService;

    @RequestMapping(value = "/getStates/{type}/{stateId}",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getState(@PathVariable("type") Integer type,@PathVariable("stateId") Integer stateId){
        System.out.println("访问到我了getState/"+type+"/"+stateId);
        String str=commService.getState(type,stateId);
        return str;
    }


    @RequestMapping(value = "/getTeachers/{teacherId}",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getTeachers(@PathVariable("teacherId") Integer teacherId){
        String str=commService.getTeacher(teacherId);
        return str;
    }



    @RequestMapping(value = "/getGuides/{type}/{guideId}",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String getGuides(@PathVariable("type") Integer type,@PathVariable("guideId") Integer guideId){
        String str=commService.getGuides(type,guideId);
        return str;
    }

}
