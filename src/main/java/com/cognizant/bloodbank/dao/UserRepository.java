package com.cognizant.bloodbank.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cognizant.bloodbank.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	
	User findByEmail(String email);
	
	boolean existsByEmail(String email);
	
	int countByRoles(String roles);
	
	@Query(value="select *,0 as 'CLAZZ_' from user where user_id in (select donor_id from donor where consent=1 and blood_group = :blood_group) and location=:location",nativeQuery = true)
	List<User> fetchDonorDetails(@Param("blood_group")String blood_group, @Param("location")String location);
	
	@Query(value="select *,0 as 'CLAZZ_' from user where user_id in (select org_id from organisation where a_positive > 0 and a_negative > 0 and b_positive > 0 and b_negative > 0 and ab_positive > 0 and ab_negative > 0 and o_positive > 0 and o_negative > 0) and location=:location and roles=:user_roles",nativeQuery = true)
	List<User> fetchOrganisationDetails(@Param("user_roles")String user_roles, @Param("location")String location);

}
