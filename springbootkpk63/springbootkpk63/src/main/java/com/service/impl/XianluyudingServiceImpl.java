package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XianluyudingDao;
import com.entity.XianluyudingEntity;
import com.service.XianluyudingService;
import com.entity.vo.XianluyudingVO;
import com.entity.view.XianluyudingView;

@Service("xianluyudingService")
public class XianluyudingServiceImpl extends ServiceImpl<XianluyudingDao, XianluyudingEntity> implements XianluyudingService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XianluyudingEntity> page = this.selectPage(
                new Query<XianluyudingEntity>(params).getPage(),
                new EntityWrapper<XianluyudingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XianluyudingEntity> wrapper) {
		  Page<XianluyudingView> page =new Query<XianluyudingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XianluyudingVO> selectListVO(Wrapper<XianluyudingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XianluyudingVO selectVO(Wrapper<XianluyudingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XianluyudingView> selectListView(Wrapper<XianluyudingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XianluyudingView selectView(Wrapper<XianluyudingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
