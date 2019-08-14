package com.infiniteskill.mvc.services;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.validation.Valid;

import com.infiniteskill.mvc.dto.ProjectDto;
import com.infiniteskill.mvc.dto.ResourceDto;

public class ResourceService {
	
	private List<ResourceDto> resources = new LinkedList<>();
	
	public ResourceService() {
		ResourceDto javaResource = this.createResource("Java Resource", "Java", new BigDecimal(100));
		javaResource.setResourceId(1L);
		ResourceDto javaScriptResource = this.createResource("Java Script Resource", "JAVA SCRIPT", new BigDecimal(150));
		javaScriptResource.setResourceId(2L);
		ResourceDto htmlResource = this.createResource("Html Resource", "HTML", new BigDecimal(50));
		htmlResource.setResourceId(3L);
		
		this.resources.addAll(Arrays.asList(javaResource,htmlResource,javaScriptResource));
	}
	
	public List<ResourceDto> findAll(){
		return this.resources;
	}
	private ResourceDto createResource(String title,String type, BigDecimal cost) {
		ResourceDto resource = new ResourceDto();
		resource.setName(title);
		resource.setType(type);
		resource.setCost(cost);
		return resource;
	}

	public ResourceDto findById(Long resourceId) {
		return this.resources.stream().filter(obj -> resourceId.equals(obj.getResourceId())).findAny().orElse(null);
		
	}

	public void save(@Valid ResourceDto resource) {
		this.resources.add(resource);
	}

}
