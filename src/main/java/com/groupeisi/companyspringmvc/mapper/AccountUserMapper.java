package com.groupeisi.companyspringmvc.mapper;

import com.groupeisi.companyspringmvc.dto.AccountUserDto;
import com.groupeisi.companyspringmvc.entity.AccountUserEntity;

import java.util.List;
import java.util.stream.Collectors;


public class AccountUserMapper {
	
	private AccountUserMapper() {
		
	}

	public static AccountUserEntity toAccountUserEntity(AccountUserDto accountUserDto) {
		
		AccountUserEntity accountUserEntity = new AccountUserEntity();
		
		accountUserEntity.setId(accountUserDto.getId());
		accountUserEntity.setEmail(accountUserDto.getEmail());
		accountUserEntity.setPassword(accountUserDto.getPassword());
		accountUserEntity.setState(accountUserDto.isState());
		
		return accountUserEntity;	
	}
	
	public static AccountUserDto toAccountUserDto(AccountUserEntity accountUserEntity) {
		
		AccountUserDto accountUserDto = new AccountUserDto();
		
		accountUserDto.setId(accountUserEntity.getId());
		accountUserDto.setEmail(accountUserEntity.getEmail());
		accountUserDto.setPassword(accountUserEntity.getPassword());
		accountUserDto.setState(accountUserEntity.isState());
		
		return accountUserDto;	
	}
	
	public static List<AccountUserDto> toListAccountUserDto(List<AccountUserEntity> accountUserEntities) {
		return accountUserEntities.stream()
							.map(AccountUserMapper::toAccountUserDto)
							.collect(Collectors.toList());
	}	
}
