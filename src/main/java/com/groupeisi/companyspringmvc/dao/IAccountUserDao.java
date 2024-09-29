package com.groupeisi.companyspringmvc.dao;

import com.groupeisi.companyspringmvc.entity.AccountUserEntity;

import java.util.Optional;

public interface IAccountUserDao extends Repository<AccountUserEntity>{
	
	Optional<AccountUserEntity> login(String email, String password);
}
