package com.entity.view;

import com.entity.XianluyudingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 线路预订
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-21 20:39:37
 */
@TableName("xianluyuding")
public class XianluyudingView  extends XianluyudingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XianluyudingView(){
	}
 
 	public XianluyudingView(XianluyudingEntity xianluyudingEntity){
 	try {
			BeanUtils.copyProperties(this, xianluyudingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
