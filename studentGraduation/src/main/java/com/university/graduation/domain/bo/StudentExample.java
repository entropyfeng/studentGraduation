package com.university.graduation.domain.bo;

import java.util.ArrayList;
import java.util.List;

public class StudentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StudentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andStudentIdIsNull() {
            addCriterion("student_id is null");
            return (Criteria) this;
        }

        public Criteria andStudentIdIsNotNull() {
            addCriterion("student_id is not null");
            return (Criteria) this;
        }

        public Criteria andStudentIdEqualTo(Integer value) {
            addCriterion("student_id =", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdNotEqualTo(Integer value) {
            addCriterion("student_id <>", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdGreaterThan(Integer value) {
            addCriterion("student_id >", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("student_id >=", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdLessThan(Integer value) {
            addCriterion("student_id <", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdLessThanOrEqualTo(Integer value) {
            addCriterion("student_id <=", value, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdIn(List<Integer> values) {
            addCriterion("student_id in", values, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdNotIn(List<Integer> values) {
            addCriterion("student_id not in", values, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdBetween(Integer value1, Integer value2) {
            addCriterion("student_id between", value1, value2, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("student_id not between", value1, value2, "studentId");
            return (Criteria) this;
        }

        public Criteria andStudentNameIsNull() {
            addCriterion("student_name is null");
            return (Criteria) this;
        }

        public Criteria andStudentNameIsNotNull() {
            addCriterion("student_name is not null");
            return (Criteria) this;
        }

        public Criteria andStudentNameEqualTo(String value) {
            addCriterion("student_name =", value, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameNotEqualTo(String value) {
            addCriterion("student_name <>", value, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameGreaterThan(String value) {
            addCriterion("student_name >", value, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameGreaterThanOrEqualTo(String value) {
            addCriterion("student_name >=", value, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameLessThan(String value) {
            addCriterion("student_name <", value, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameLessThanOrEqualTo(String value) {
            addCriterion("student_name <=", value, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameLike(String value) {
            addCriterion("student_name like", value, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameNotLike(String value) {
            addCriterion("student_name not like", value, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameIn(List<String> values) {
            addCriterion("student_name in", values, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameNotIn(List<String> values) {
            addCriterion("student_name not in", values, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameBetween(String value1, String value2) {
            addCriterion("student_name between", value1, value2, "studentName");
            return (Criteria) this;
        }

        public Criteria andStudentNameNotBetween(String value1, String value2) {
            addCriterion("student_name not between", value1, value2, "studentName");
            return (Criteria) this;
        }

        public Criteria andGraduationYearIsNull() {
            addCriterion("graduation_year is null");
            return (Criteria) this;
        }

        public Criteria andGraduationYearIsNotNull() {
            addCriterion("graduation_year is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationYearEqualTo(Integer value) {
            addCriterion("graduation_year =", value, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearNotEqualTo(Integer value) {
            addCriterion("graduation_year <>", value, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearGreaterThan(Integer value) {
            addCriterion("graduation_year >", value, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearGreaterThanOrEqualTo(Integer value) {
            addCriterion("graduation_year >=", value, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearLessThan(Integer value) {
            addCriterion("graduation_year <", value, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearLessThanOrEqualTo(Integer value) {
            addCriterion("graduation_year <=", value, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearIn(List<Integer> values) {
            addCriterion("graduation_year in", values, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearNotIn(List<Integer> values) {
            addCriterion("graduation_year not in", values, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearBetween(Integer value1, Integer value2) {
            addCriterion("graduation_year between", value1, value2, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andGraduationYearNotBetween(Integer value1, Integer value2) {
            addCriterion("graduation_year not between", value1, value2, "graduationYear");
            return (Criteria) this;
        }

        public Criteria andCollegeIdIsNull() {
            addCriterion("college_id is null");
            return (Criteria) this;
        }

        public Criteria andCollegeIdIsNotNull() {
            addCriterion("college_id is not null");
            return (Criteria) this;
        }

        public Criteria andCollegeIdEqualTo(Integer value) {
            addCriterion("college_id =", value, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdNotEqualTo(Integer value) {
            addCriterion("college_id <>", value, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdGreaterThan(Integer value) {
            addCriterion("college_id >", value, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("college_id >=", value, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdLessThan(Integer value) {
            addCriterion("college_id <", value, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdLessThanOrEqualTo(Integer value) {
            addCriterion("college_id <=", value, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdIn(List<Integer> values) {
            addCriterion("college_id in", values, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdNotIn(List<Integer> values) {
            addCriterion("college_id not in", values, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdBetween(Integer value1, Integer value2) {
            addCriterion("college_id between", value1, value2, "collegeId");
            return (Criteria) this;
        }

        public Criteria andCollegeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("college_id not between", value1, value2, "collegeId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdIsNull() {
            addCriterion("specialty_id is null");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdIsNotNull() {
            addCriterion("specialty_id is not null");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdEqualTo(Integer value) {
            addCriterion("specialty_id =", value, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdNotEqualTo(Integer value) {
            addCriterion("specialty_id <>", value, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdGreaterThan(Integer value) {
            addCriterion("specialty_id >", value, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("specialty_id >=", value, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdLessThan(Integer value) {
            addCriterion("specialty_id <", value, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdLessThanOrEqualTo(Integer value) {
            addCriterion("specialty_id <=", value, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdIn(List<Integer> values) {
            addCriterion("specialty_id in", values, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdNotIn(List<Integer> values) {
            addCriterion("specialty_id not in", values, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdBetween(Integer value1, Integer value2) {
            addCriterion("specialty_id between", value1, value2, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andSpecialtyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("specialty_id not between", value1, value2, "specialtyId");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusIsNull() {
            addCriterion("politics_status is null");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusIsNotNull() {
            addCriterion("politics_status is not null");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusEqualTo(String value) {
            addCriterion("politics_status =", value, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusNotEqualTo(String value) {
            addCriterion("politics_status <>", value, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusGreaterThan(String value) {
            addCriterion("politics_status >", value, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusGreaterThanOrEqualTo(String value) {
            addCriterion("politics_status >=", value, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusLessThan(String value) {
            addCriterion("politics_status <", value, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusLessThanOrEqualTo(String value) {
            addCriterion("politics_status <=", value, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusLike(String value) {
            addCriterion("politics_status like", value, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusNotLike(String value) {
            addCriterion("politics_status not like", value, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusIn(List<String> values) {
            addCriterion("politics_status in", values, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusNotIn(List<String> values) {
            addCriterion("politics_status not in", values, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusBetween(String value1, String value2) {
            addCriterion("politics_status between", value1, value2, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andPoliticsStatusNotBetween(String value1, String value2) {
            addCriterion("politics_status not between", value1, value2, "politicsStatus");
            return (Criteria) this;
        }

        public Criteria andStudentSexIsNull() {
            addCriterion("student_sex is null");
            return (Criteria) this;
        }

        public Criteria andStudentSexIsNotNull() {
            addCriterion("student_sex is not null");
            return (Criteria) this;
        }

        public Criteria andStudentSexEqualTo(Integer value) {
            addCriterion("student_sex =", value, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexNotEqualTo(Integer value) {
            addCriterion("student_sex <>", value, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexGreaterThan(Integer value) {
            addCriterion("student_sex >", value, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexGreaterThanOrEqualTo(Integer value) {
            addCriterion("student_sex >=", value, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexLessThan(Integer value) {
            addCriterion("student_sex <", value, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexLessThanOrEqualTo(Integer value) {
            addCriterion("student_sex <=", value, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexIn(List<Integer> values) {
            addCriterion("student_sex in", values, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexNotIn(List<Integer> values) {
            addCriterion("student_sex not in", values, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexBetween(Integer value1, Integer value2) {
            addCriterion("student_sex between", value1, value2, "studentSex");
            return (Criteria) this;
        }

        public Criteria andStudentSexNotBetween(Integer value1, Integer value2) {
            addCriterion("student_sex not between", value1, value2, "studentSex");
            return (Criteria) this;
        }

        public Criteria andIdCardNumIsNull() {
            addCriterion("id_card_num is null");
            return (Criteria) this;
        }

        public Criteria andIdCardNumIsNotNull() {
            addCriterion("id_card_num is not null");
            return (Criteria) this;
        }

        public Criteria andIdCardNumEqualTo(String value) {
            addCriterion("id_card_num =", value, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumNotEqualTo(String value) {
            addCriterion("id_card_num <>", value, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumGreaterThan(String value) {
            addCriterion("id_card_num >", value, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumGreaterThanOrEqualTo(String value) {
            addCriterion("id_card_num >=", value, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumLessThan(String value) {
            addCriterion("id_card_num <", value, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumLessThanOrEqualTo(String value) {
            addCriterion("id_card_num <=", value, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumLike(String value) {
            addCriterion("id_card_num like", value, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumNotLike(String value) {
            addCriterion("id_card_num not like", value, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumIn(List<String> values) {
            addCriterion("id_card_num in", values, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumNotIn(List<String> values) {
            addCriterion("id_card_num not in", values, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumBetween(String value1, String value2) {
            addCriterion("id_card_num between", value1, value2, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andIdCardNumNotBetween(String value1, String value2) {
            addCriterion("id_card_num not between", value1, value2, "idCardNum");
            return (Criteria) this;
        }

        public Criteria andClassIdIsNull() {
            addCriterion("class_id is null");
            return (Criteria) this;
        }

        public Criteria andClassIdIsNotNull() {
            addCriterion("class_id is not null");
            return (Criteria) this;
        }

        public Criteria andClassIdEqualTo(Integer value) {
            addCriterion("class_id =", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdNotEqualTo(Integer value) {
            addCriterion("class_id <>", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdGreaterThan(Integer value) {
            addCriterion("class_id >", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("class_id >=", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdLessThan(Integer value) {
            addCriterion("class_id <", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdLessThanOrEqualTo(Integer value) {
            addCriterion("class_id <=", value, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdIn(List<Integer> values) {
            addCriterion("class_id in", values, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdNotIn(List<Integer> values) {
            addCriterion("class_id not in", values, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdBetween(Integer value1, Integer value2) {
            addCriterion("class_id between", value1, value2, "classId");
            return (Criteria) this;
        }

        public Criteria andClassIdNotBetween(Integer value1, Integer value2) {
            addCriterion("class_id not between", value1, value2, "classId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}