package durcframework.test;

import java.util.Set;

import javax.validation.ConstraintViolation;

import junit.framework.TestCase;

import org.durcframework.entity.BaseEntity;
import org.durcframework.util.ValidateUtil;
import org.junit.BeforeClass;
import org.junit.Test;

import durcframework.test.student.entity.Student;

public class HibernateValidateTest extends TestCase {

	private Student stu;

	@BeforeClass
	public void setUp() {
		stu = new Student();
		stu.setId(1);
		stu.setName("");
		stu.setStuNo("1000003210000032100000321000003210000032");
	}

	private BaseEntity getObj() {
		return stu;
	}

	@Test
	public void testValidate() {
		Set<ConstraintViolation<BaseEntity>> set = ValidateUtil
				.validate(getObj());

		for (ConstraintViolation<BaseEntity> c : set) {
			Student s = (Student)c.getRootBean();
			System.out.println(c.getPropertyPath().toString()+"--" + c.getMessage());
		}

		System.out.println(getObj().validate());

	}

}
