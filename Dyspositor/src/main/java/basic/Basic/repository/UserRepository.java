package basic.Basic.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import basic.Basic.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

	public User findByEmail(String email);
}