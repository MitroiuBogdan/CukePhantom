package com.yllu.cucumber_pw;

import io.cucumber.spring.CucumberContextConfiguration;
import org.springframework.boot.test.context.SpringBootTest;


@CucumberContextConfiguration
@SpringBootTest(classes = CucumberPwApplication.class)
public class CucumberSpringConfiguration {
}
