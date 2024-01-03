package restiCode;

import static  io.restassured.RestAssured.*;
//import static io.restassured.matcher.RestAssuredMatchers.*;

import org.testng.annotations.Test;

public class RestTest {

	@Test
	void getUser()
	{
		given()
		
		.when()
			.get("https://reqres.in/api/users?page=2")
			
		.then()
			.statusCode(200)
			.log().body();
			
	}
}
