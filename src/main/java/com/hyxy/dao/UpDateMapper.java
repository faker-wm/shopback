package com.hyxy.dao;

import com.hyxy.entity.UpDate;
import java.util.List;

public interface UpDateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UpDate record);

    UpDate selectByPrimaryKey(Integer id);

    List<UpDate> selectAll();

    int updateByPrimaryKey(UpDate record);

	void deleteById(Integer id);
}