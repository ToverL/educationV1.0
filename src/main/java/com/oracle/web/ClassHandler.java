package com.oracle.web;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.oracle.service.ClassService;
import com.oracle.vo.TbClass;
import com.oracle.vo.Tclass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping(value = "/class")
public class ClassHandler {

    @Autowired
    ClassService classService;

    @RequestMapping(value = "/{path}")
    public String Path(@PathVariable("path") String path){
        System.out.println("访问到");
        return "class/"+path;
    }

    @RequestMapping(value = "/saveClass")
    public String SaveClass(TbClass tbClass){
        System.out.println("保存班级数据:\n"+tbClass);
        classService.SaveClass(tbClass);
        return "forward:../main.jsp";
    }

    @RequestMapping("/getAll/{page}")
    public String getAll(@PathVariable("page")Integer page,Model model) {
        PageHelper.startPage(page,10);
        List<Tclass> list=classService.getAll();
        PageInfo<Tclass> pageInfo=new PageInfo<Tclass>(list);
        model.addAttribute("pageInfo", pageInfo);
        return "class/listClass";
    }

    @RequestMapping("/getAll/getClassById")
    public String getClassById(int classId,Map<String,Object> map){
        map.put("c", classService.getClassById(classId));
        map.put("endDate", new Date());
        return "class/viewEndClass";
    }

    //结课
    @RequestMapping("/endClass")
    public String endClass(String enddate,int classid){
        DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
        Date date= null;
        try {
            date = format.parse(enddate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        TbClass tbClass=new TbClass();
        tbClass.setClassid(classid);
        tbClass.setEnddate(date);
        System.out.println("结课了");
        System.out.println(tbClass);
        classService.endClass(tbClass);
        return "redirect:getAll/1";
    }
}
