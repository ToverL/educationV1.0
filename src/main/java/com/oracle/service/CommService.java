package com.oracle.service;

import com.oracle.dao.TbClassMapper;
import com.oracle.dao.TbGuideMapper;
import com.oracle.dao.TbStateMapper;
import com.oracle.dao.TbTeacherMapper;
import com.oracle.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CommService {

    @Autowired
    TbStateMapper statedao;
    @Autowired
    TbClassMapper classdao;
    @Autowired
    TbGuideMapper guidedao;
    @Autowired
    TbTeacherMapper teacherdao;

    @Transactional(readOnly = true)
    public String getState(Integer type,Integer stateId){

        TbStateExample se= new TbStateExample();
        se.createCriteria().andTypeEqualTo(type);
        se.setOrderByClause("stateName");
        List<TbState> list = statedao.selectByExample(se);
        StringBuilder sb= new StringBuilder("");
        for (TbState state:list) {
            if(state.getStateid().equals(stateId)){
                sb.append("<option value="+state.getStateid()+" selected>").append(state.getStatename()).append("</option>");
            }else {
                sb.append("<option value="+state.getStateid()+" >").append(state.getStatename()).append("</option>");
            }
        }
        return sb.toString();
    }


    @Transactional(readOnly = true)
    public String getTeacher(Integer teacherId){

        TbTeacherExample te= new TbTeacherExample();
        te.createCriteria().andStateEqualTo(1);
        te.setOrderByClause("teachertypeid desc");
        List<TbTeacher> list = teacherdao.selectByExample(te);
        StringBuilder sb= new StringBuilder("");
        for (TbTeacher state:list) {
            if(state.getTeacherid().equals(teacherId)){
                sb.append("<option value="+state.getTeacherid()+" selected>").append(state.getName()).append("</option>");
            }else {
                sb.append("<option value="+state.getTeacherid()+" >").append(state.getName()).append("</option>");
            }
        }
        return sb.toString();
    }

    @Transactional(readOnly = true)
    public String getGuides(Integer type,Integer guideId){
        TbGuideExample e= new TbGuideExample();
        e.createCriteria().andTypeEqualTo(type).andStateEqualTo(1);
        e.setOrderByClause("name");
        List<TbGuide> list=guidedao.selectByExample(e);
        StringBuilder sb= new StringBuilder("");
        for (TbGuide state:list) {
            if(state.getGuideid().equals(guideId)){
                sb.append("<option value="+state.getGuideid()+" selected>").append(state.getName()).append("</option>");
            }else {
                sb.append("<option value="+state.getGuideid()+" >").append(state.getName()).append("</option>");
            }
        }
        return sb.toString();
    }






}
