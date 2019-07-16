package mapper;



import org.apache.ibatis.annotations.Mapper;

import entity.User;
@Mapper
public interface UserMapper {
	void save(User user);
}
