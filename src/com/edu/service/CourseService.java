package com.edu.service;

import java.util.List;

import com.edu.model.Course;

public interface CourseService {
	/*
	 * 查找所有用户
	 */
	public List<Course> findAllCourse(Course course) throws Exception;

	public List<Course> searchVerCourse()  throws Exception;

	public Course searchCourseById(int id)  throws Exception;

	public void updateCourse(Course course) throws Exception;

	public void addCourse(Course course) throws Exception;

	public void deleteCourse(int id)throws Exception;

}
