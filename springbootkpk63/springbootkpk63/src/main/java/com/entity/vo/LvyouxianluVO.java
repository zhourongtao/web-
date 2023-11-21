package com.entity.vo;

import com.entity.LvyouxianluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 旅游线路
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-21 20:39:37
 */
public class LvyouxianluVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 线路分类
	 */
	
	private String xianlufenlei;
		
	/**
	 * 封面图
	 */
	
	private String fengmiantu;
		
	/**
	 * 景点名称
	 */
	
	private String jingdianmingcheng;
		
	/**
	 * 起点
	 */
	
	private String qidian;
		
	/**
	 * 途经
	 */
	
	private String tujing;
		
	/**
	 * 终点
	 */
	
	private String zhongdian;
		
	/**
	 * 交通方式
	 */
	
	private String jiaotongfangshi;
		
	/**
	 * 出行时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date chuxingshijian;
		
	/**
	 * 线路费用
	 */
	
	private Integer xianlufeiyong;
		
	/**
	 * 费用包含
	 */
	
	private String feiyongbaohan;
		
	/**
	 * 行程路线
	 */
	
	private String xingchengluxian;
				
	
	/**
	 * 设置：线路分类
	 */
	 
	public void setXianlufenlei(String xianlufenlei) {
		this.xianlufenlei = xianlufenlei;
	}
	
	/**
	 * 获取：线路分类
	 */
	public String getXianlufenlei() {
		return xianlufenlei;
	}
				
	
	/**
	 * 设置：封面图
	 */
	 
	public void setFengmiantu(String fengmiantu) {
		this.fengmiantu = fengmiantu;
	}
	
	/**
	 * 获取：封面图
	 */
	public String getFengmiantu() {
		return fengmiantu;
	}
				
	
	/**
	 * 设置：景点名称
	 */
	 
	public void setJingdianmingcheng(String jingdianmingcheng) {
		this.jingdianmingcheng = jingdianmingcheng;
	}
	
	/**
	 * 获取：景点名称
	 */
	public String getJingdianmingcheng() {
		return jingdianmingcheng;
	}
				
	
	/**
	 * 设置：起点
	 */
	 
	public void setQidian(String qidian) {
		this.qidian = qidian;
	}
	
	/**
	 * 获取：起点
	 */
	public String getQidian() {
		return qidian;
	}
				
	
	/**
	 * 设置：途经
	 */
	 
	public void setTujing(String tujing) {
		this.tujing = tujing;
	}
	
	/**
	 * 获取：途经
	 */
	public String getTujing() {
		return tujing;
	}
				
	
	/**
	 * 设置：终点
	 */
	 
	public void setZhongdian(String zhongdian) {
		this.zhongdian = zhongdian;
	}
	
	/**
	 * 获取：终点
	 */
	public String getZhongdian() {
		return zhongdian;
	}
				
	
	/**
	 * 设置：交通方式
	 */
	 
	public void setJiaotongfangshi(String jiaotongfangshi) {
		this.jiaotongfangshi = jiaotongfangshi;
	}
	
	/**
	 * 获取：交通方式
	 */
	public String getJiaotongfangshi() {
		return jiaotongfangshi;
	}
				
	
	/**
	 * 设置：出行时间
	 */
	 
	public void setChuxingshijian(Date chuxingshijian) {
		this.chuxingshijian = chuxingshijian;
	}
	
	/**
	 * 获取：出行时间
	 */
	public Date getChuxingshijian() {
		return chuxingshijian;
	}
				
	
	/**
	 * 设置：线路费用
	 */
	 
	public void setXianlufeiyong(Integer xianlufeiyong) {
		this.xianlufeiyong = xianlufeiyong;
	}
	
	/**
	 * 获取：线路费用
	 */
	public Integer getXianlufeiyong() {
		return xianlufeiyong;
	}
				
	
	/**
	 * 设置：费用包含
	 */
	 
	public void setFeiyongbaohan(String feiyongbaohan) {
		this.feiyongbaohan = feiyongbaohan;
	}
	
	/**
	 * 获取：费用包含
	 */
	public String getFeiyongbaohan() {
		return feiyongbaohan;
	}
				
	
	/**
	 * 设置：行程路线
	 */
	 
	public void setXingchengluxian(String xingchengluxian) {
		this.xingchengluxian = xingchengluxian;
	}
	
	/**
	 * 获取：行程路线
	 */
	public String getXingchengluxian() {
		return xingchengluxian;
	}
			
}
