package durcframework.test.department.entity;

import java.io.Serializable;

import org.durcframework.entity.BaseEntity;

public class Department extends BaseEntity {

	private Integer id;
	private String departmentName;

	@Override
	public void setPk(Serializable id) {
		this.id = (Integer) id;
	}

	@Override
	public Serializable getPk() {
		return id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

}
