package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XianluyudingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XianluyudingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XianluyudingView;


/**
 * 线路预订
 *
 * @author 
 * @email 
 * @date 2021-04-21 20:39:37
 */
public interface XianluyudingService extends IService<XianluyudingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XianluyudingVO> selectListVO(Wrapper<XianluyudingEntity> wrapper);
   	
   	XianluyudingVO selectVO(@Param("ew") Wrapper<XianluyudingEntity> wrapper);
   	
   	List<XianluyudingView> selectListView(Wrapper<XianluyudingEntity> wrapper);
   	
   	XianluyudingView selectView(@Param("ew") Wrapper<XianluyudingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XianluyudingEntity> wrapper);
   	
}

