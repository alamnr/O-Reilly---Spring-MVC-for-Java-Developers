package com.infiniteskill.mvc.dto;

import java.math.BigDecimal;

public class ProjectDto {
	
	private Long projectId;
	
	private String name;
	
	private String description;
	
	private String sponsor;
	
	private BigDecimal authorizedHours;
	
	private BigDecimal authorizedFunds;
	
	private String year;
	
	private boolean special;
	
	private String type;

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		System.out.println("Spring MVC Data Binding");
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSponsor() {
		return sponsor;
	}

	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}

	public BigDecimal getAuthorizedHours() {
		return authorizedHours;
	}

	public void setAuthorizedHours(BigDecimal authorizedHours) {
		this.authorizedHours = authorizedHours;
	}

	public BigDecimal getAuthorizedFunds() {
		return authorizedFunds;
	}

	public void setAuthorizedFunds(BigDecimal authorizedFunds) {
		this.authorizedFunds = authorizedFunds;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public boolean isSpecial() {
		return special;
	}

	public void setSpecial(boolean special) {
		this.special = special;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "ProjectDto [projectId=" + projectId + ", name=" + name + ", description=" + description + ", sponsor="
				+ sponsor + ", authorizedHours=" + authorizedHours + ", authorizedFunds=" + authorizedFunds + ", year="
				+ year + ", special=" + special + ", type=" + type + "]";
	}
	
	
	
	

}
