package com.slp.validator;

import com.slp.domain.Student;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * @author sanglp
 * @create 2018-01-08 13:21
 * @desc 验证实体
 **/
public class StudentValidator implements Validator {

    public boolean supports(Class<?> clazz) {
        return Student.class.isAssignableFrom(clazz);
    }

    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,
                "name", "required.name","Field name is required.");
    }
}
