package cjx.manager.entity;

import javax.annotation.Generated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/10/16
 */
@Table(name = "t_cjx_blog")
public class Blog {

	@Id
	@GeneratedValue(generator = "JDBC")
	private Integer id;
	private String title;
	private String blogAbstract;
	private String content;
	private Date publishTime;
	private String keyword;
	private Integer type;
	private String tips;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBlogAbstract() {
		return blogAbstract;
	}

	public void setBlogAbstract(String blogAbstract) {
		this.blogAbstract = blogAbstract;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getTips() {
		return tips;
	}

	public void setTips(String tips) {
		this.tips = tips;
	}

	@Override
	public String toString() {
		return "Blog{" +
				"id=" + id +
				", title='" + title + '\'' +
				", blogAbstract='" + blogAbstract + '\'' +
				", content='" + content + '\'' +
				", publishTime=" + publishTime +
				", keyword='" + keyword + '\'' +
				", type=" + type +
				", tips='" + tips + '\'' +
				'}';
	}
}
