package com.infiniteskill.mvc.dto;

import java.math.BigDecimal;
import java.util.Arrays;

public class ResourceDto {
	private Long resourceId;
	private String project;
	private String name;
	private String type;
	private BigDecimal cost;
	private String unitOfMeasure;
	private String[] indicators;
	
	
	
	
	public String[] getIndicators() {
		return indicators;
	}
	public void setIndicators(String[] indicators) {
		this.indicators = indicators;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}
	public Long getResourceId() {
		return resourceId;
	}
	public void setResourceId(Long resourceId) {
		this.resourceId = resourceId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public BigDecimal getCost() {
		return cost;
	}
	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}
	public String getUnitOfMeasure() {
		return unitOfMeasure;
	}
	public void setUnitOfMeasure(String unitOfMeasure) {
		this.unitOfMeasure = unitOfMeasure;
	}
	@Override
	public String toString() {
		return "ResourceDto [resourceId=" + resourceId + ", project=" + project + ", name=" + name + ", type=" + type
				+ ", cost=" + cost + ", unitOfMeasure=" + unitOfMeasure + ", indicators=" + Arrays.toString(indicators)
				+ "]";
	}
	
		

}
