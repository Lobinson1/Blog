package cjx.manager.serviceImpl;

import cjx.manager.dao.UserDao;
import cjx.manager.entity.User;
import cjx.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/7/19
 */
@Service
public class UserServiceImpl implements UserService {

	private final UserDao userDao;

	@Autowired
	public UserServiceImpl(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User getUser(String username) {
		return userDao.getUser(username);
	}

	@Override
	public int countUser() {
		return userDao.countUser();
	}

	@Override
	public void insertUser(User user) {
		userDao.insert(user);
	}

	@Override
	public boolean checkLoginInfo(String username, String password) {
		User u = new User();
		u.setUsername(username);
		u.setPassword(password);
		return userDao.selectCount(u) == 1;
	}

	@Override
	public boolean checkUsername(String username) {
		return userDao.isExist(username);
	}

	@Override
	public void updateUser(User user) {
		userDao.updateByPrimaryKey(user);
	}
}