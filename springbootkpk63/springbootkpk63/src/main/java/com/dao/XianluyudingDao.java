package com.dao;

import com.entity.XianluyudingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XianluyudingVO;
import com.entity.view.XianluyudingView;


/**
 * 线路预订
 * 
 * @author 
 * @email 
 * @date 2021-04-21 20:39:37
 */
public interface XianluyudingDao extends BaseMapper<XianluyudingEntity> {
	
	List<XianluyudingVO> selectListVO(@Param("ew") Wrapper<XianluyudingEntity> wrapper);
	
	XianluyudingVO selectVO(@Param("ew") Wrapper<XianluyudingEntity> wrapper);
	
	List<XianluyudingView> selectListView(@Param("ew") Wrapper<XianluyudingEntity> wrapper);

	List<XianluyudingView> selectListView(Pagination page,@Param("ew") Wrapper<XianluyudingEntity> wrapper);
	
	XianluyudingView selectView(@Param("ew") Wrapper<XianluyudingEntity> wrapper);
	
}
