package br.com.impacta.ibpf.user.repositories;

import br.com.impacta.ibpf.user.entities.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);

}
