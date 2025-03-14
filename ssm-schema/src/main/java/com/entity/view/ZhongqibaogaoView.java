package com.entity.view;

import com.entity.ZhongqibaogaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 中期报告
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-11-02 10:24:01
 */
@TableName("zhongqibaogao")
public class ZhongqibaogaoView  extends ZhongqibaogaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhongqibaogaoView(){
	}
 
 	public ZhongqibaogaoView(ZhongqibaogaoEntity zhongqibaogaoEntity){
 	try {
			BeanUtils.copyProperties(this, zhongqibaogaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
