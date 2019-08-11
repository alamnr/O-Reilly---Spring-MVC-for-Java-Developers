package com.infiniteskill.mvc.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.infiniteskill.mvc.dto.ProjectDto;

public class ProjectValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return ProjectDto.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		ProjectDto project = (ProjectDto)target;
		if(project.getName().length()<5) {
			errors.rejectValue("name", "project.name.length", "Project Name is too short");
		}

	}

}
