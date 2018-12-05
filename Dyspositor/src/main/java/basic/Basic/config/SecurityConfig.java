package basic.Basic.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@SuppressWarnings("deprecation")
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	private String userQuery = "select email, password, 1 from user where lower(email) = lower(?)";
	private String roleQuery = "select email, role from user where lower(email) = lower(?)";

	@Autowired
	private DataSource dataSource;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().passwordEncoder(NoOpPasswordEncoder.getInstance()).withUser("user")
				.password("user").roles("USER").and().withUser("admin").password("admin").authorities("ADMIN");

		auth.jdbcAuthentication().dataSource(dataSource).usersByUsernameQuery(userQuery)
				.authoritiesByUsernameQuery(roleQuery).passwordEncoder(NoOpPasswordEncoder.getInstance());

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/").permitAll().antMatchers("/h2").access("hasAuthority('ADMIN')")
				.anyRequest().permitAll().and().formLogin().loginPage("/login").defaultSuccessUrl("/", true)
				.failureUrl("/login");
		http.csrf().disable();
		http.headers().frameOptions().disable();
	}
}