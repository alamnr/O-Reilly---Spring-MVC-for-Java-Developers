package com.infiniteskill.mvc.converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import com.infiniteskill.mvc.dto.ResourceDto;
import com.infiniteskill.mvc.services.ResourceService;

public class ResourceConverter implements Converter<String, ResourceDto> {

	@Autowired
	private ResourceService resourceService;
	
	@Override
	public ResourceDto convert(String resourceId) {
		
		return resourceService.findById(new Long(resourceId));
	}

}
