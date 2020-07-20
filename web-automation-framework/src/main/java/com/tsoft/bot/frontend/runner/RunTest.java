package com.tsoft.bot.frontend.runner;

import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import org.testng.annotations.Test;


@CucumberOptions(
		features={"src//main//resources//features"},
		glue={"com.tsoft.bot.frontend.steps.consultaLineas","com.tsoft.bot.frontend.steps.reporteria","com.tsoft.bot.frontend.helpers"},
		plugin = {"pretty", "html:target/cucumber"},
		tags = {" @ConsultaReporteriaReglasActivas"},
		monochrome = true
	)

@Test
public class RunTest extends AbstractTestNGCucumberTests{

}
