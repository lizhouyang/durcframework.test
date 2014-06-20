package durcframework.test.student.service;

import org.durcframework.service.CrudService;
import org.springframework.stereotype.Service;

import durcframework.test.student.dao.StudentDao;
import durcframework.test.student.entity.Student;


@Service
public class StudentService extends CrudService<Student, StudentDao> {
}
