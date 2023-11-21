package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.XianluyudingEntity;
import com.entity.view.XianluyudingView;

import com.service.XianluyudingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 线路预订
 * 后端接口
 * @author 
 * @email 
 * @date 2021-04-21 20:39:37
 */
@RestController
@RequestMapping("/xianluyuding")
public class XianluyudingController {
    @Autowired
    private XianluyudingService xianluyudingService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XianluyudingEntity xianluyuding,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			xianluyuding.setYonghuming((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XianluyudingEntity> ew = new EntityWrapper<XianluyudingEntity>();
		PageUtils page = xianluyudingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xianluyuding), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XianluyudingEntity xianluyuding, 
		HttpServletRequest request){
        EntityWrapper<XianluyudingEntity> ew = new EntityWrapper<XianluyudingEntity>();
		PageUtils page = xianluyudingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xianluyuding), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XianluyudingEntity xianluyuding){
       	EntityWrapper<XianluyudingEntity> ew = new EntityWrapper<XianluyudingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xianluyuding, "xianluyuding")); 
        return R.ok().put("data", xianluyudingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XianluyudingEntity xianluyuding){
        EntityWrapper< XianluyudingEntity> ew = new EntityWrapper< XianluyudingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xianluyuding, "xianluyuding")); 
		XianluyudingView xianluyudingView =  xianluyudingService.selectView(ew);
		return R.ok("查询线路预订成功").put("data", xianluyudingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XianluyudingEntity xianluyuding = xianluyudingService.selectById(id);
        return R.ok().put("data", xianluyuding);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XianluyudingEntity xianluyuding = xianluyudingService.selectById(id);
        return R.ok().put("data", xianluyuding);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XianluyudingEntity xianluyuding, HttpServletRequest request){
    	xianluyuding.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xianluyuding);
        xianluyudingService.insert(xianluyuding);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XianluyudingEntity xianluyuding, HttpServletRequest request){
    	xianluyuding.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xianluyuding);
        xianluyudingService.insert(xianluyuding);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody XianluyudingEntity xianluyuding, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xianluyuding);
        xianluyudingService.updateById(xianluyuding);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xianluyudingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<XianluyudingEntity> wrapper = new EntityWrapper<XianluyudingEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("yonghuming", (String)request.getSession().getAttribute("username"));
		}

		int count = xianluyudingService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
