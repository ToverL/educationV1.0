package com.oracle.service;

import com.oracle.dao.TbClassMapper;
import com.oracle.vo.TbClass;
import com.oracle.vo.Tclass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ClassService {

    @Autowired
    TbClassMapper classdao;

    @Transactional(readOnly = true)
    public void SaveClass(TbClass tbClass){
        classdao.insert(tbClass);
    }

    @Transactional(readOnly = true)
    public List<Tclass> getAll(){
        return classdao.getAll();
    }

    @Transactional(readOnly = true)
    public Tclass getClassById(int classId){
        return classdao.getClassById(classId);
    }



    @Transactional(readOnly = true)
    public void endClass(TbClass c) {
        System.out.println("结课了：");
        System.out.println(c);
        classdao.endClass(c);

    }
}
