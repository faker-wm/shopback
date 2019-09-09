package com.hyxy.dao;

import com.hyxy.entity.Function;
import java.util.List;

public interface FunctionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Function record);

    Function selectByPrimaryKey(Integer id);

    List<Function> selectAll();

    int updateByPrimaryKey(Function record);
}