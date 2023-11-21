package com.dao;

import com.entity.XianlufenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XianlufenleiVO;
import com.entity.view.XianlufenleiView;


/**
 * 线路分类
 * 
 * @author 
 * @email 
 * @date 2021-04-21 20:39:37
 */
public interface XianlufenleiDao extends BaseMapper<XianlufenleiEntity> {
	
	List<XianlufenleiVO> selectListVO(@Param("ew") Wrapper<XianlufenleiEntity> wrapper);
	
	XianlufenleiVO selectVO(@Param("ew") Wrapper<XianlufenleiEntity> wrapper);
	
	List<XianlufenleiView> selectListView(@Param("ew") Wrapper<XianlufenleiEntity> wrapper);

	List<XianlufenleiView> selectListView(Pagination page,@Param("ew") Wrapper<XianlufenleiEntity> wrapper);
	
	XianlufenleiView selectView(@Param("ew") Wrapper<XianlufenleiEntity> wrapper);
	
}
