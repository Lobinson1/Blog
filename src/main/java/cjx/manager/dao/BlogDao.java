package cjx.manager.dao;

import cjx.manager.entity.Blog;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/10/16
 */
@Repository
public interface BlogDao extends Mapper<Blog> {
}
