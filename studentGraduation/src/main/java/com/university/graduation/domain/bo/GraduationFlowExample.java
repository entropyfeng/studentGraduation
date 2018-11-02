package com.university.graduation.domain.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GraduationFlowExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GraduationFlowExample() {
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

        public Criteria andGraduationFlowIdIsNull() {
            addCriterion("graduation_flow_id is null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdIsNotNull() {
            addCriterion("graduation_flow_id is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdEqualTo(Integer value) {
            addCriterion("graduation_flow_id =", value, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdNotEqualTo(Integer value) {
            addCriterion("graduation_flow_id <>", value, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdGreaterThan(Integer value) {
            addCriterion("graduation_flow_id >", value, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_id >=", value, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdLessThan(Integer value) {
            addCriterion("graduation_flow_id <", value, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdLessThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_id <=", value, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdIn(List<Integer> values) {
            addCriterion("graduation_flow_id in", values, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdNotIn(List<Integer> values) {
            addCriterion("graduation_flow_id not in", values, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_id between", value1, value2, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowIdNotBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_id not between", value1, value2, "graduationFlowId");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameIsNull() {
            addCriterion("graduation_flow_name is null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameIsNotNull() {
            addCriterion("graduation_flow_name is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameEqualTo(String value) {
            addCriterion("graduation_flow_name =", value, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameNotEqualTo(String value) {
            addCriterion("graduation_flow_name <>", value, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameGreaterThan(String value) {
            addCriterion("graduation_flow_name >", value, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameGreaterThanOrEqualTo(String value) {
            addCriterion("graduation_flow_name >=", value, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameLessThan(String value) {
            addCriterion("graduation_flow_name <", value, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameLessThanOrEqualTo(String value) {
            addCriterion("graduation_flow_name <=", value, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameLike(String value) {
            addCriterion("graduation_flow_name like", value, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameNotLike(String value) {
            addCriterion("graduation_flow_name not like", value, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameIn(List<String> values) {
            addCriterion("graduation_flow_name in", values, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameNotIn(List<String> values) {
            addCriterion("graduation_flow_name not in", values, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameBetween(String value1, String value2) {
            addCriterion("graduation_flow_name between", value1, value2, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowNameNotBetween(String value1, String value2) {
            addCriterion("graduation_flow_name not between", value1, value2, "graduationFlowName");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusIsNull() {
            addCriterion("graduation_flow_enable_status is null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusIsNotNull() {
            addCriterion("graduation_flow_enable_status is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusEqualTo(Integer value) {
            addCriterion("graduation_flow_enable_status =", value, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusNotEqualTo(Integer value) {
            addCriterion("graduation_flow_enable_status <>", value, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusGreaterThan(Integer value) {
            addCriterion("graduation_flow_enable_status >", value, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_enable_status >=", value, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusLessThan(Integer value) {
            addCriterion("graduation_flow_enable_status <", value, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusLessThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_enable_status <=", value, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusIn(List<Integer> values) {
            addCriterion("graduation_flow_enable_status in", values, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusNotIn(List<Integer> values) {
            addCriterion("graduation_flow_enable_status not in", values, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_enable_status between", value1, value2, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEnableStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_enable_status not between", value1, value2, "graduationFlowEnableStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearIsNull() {
            addCriterion("graduation_flow_year is null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearIsNotNull() {
            addCriterion("graduation_flow_year is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearEqualTo(Integer value) {
            addCriterion("graduation_flow_year =", value, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearNotEqualTo(Integer value) {
            addCriterion("graduation_flow_year <>", value, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearGreaterThan(Integer value) {
            addCriterion("graduation_flow_year >", value, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearGreaterThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_year >=", value, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearLessThan(Integer value) {
            addCriterion("graduation_flow_year <", value, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearLessThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_year <=", value, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearIn(List<Integer> values) {
            addCriterion("graduation_flow_year in", values, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearNotIn(List<Integer> values) {
            addCriterion("graduation_flow_year not in", values, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_year between", value1, value2, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowYearNotBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_year not between", value1, value2, "graduationFlowYear");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeIsNull() {
            addCriterion("graduation_flow_begin_time is null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeIsNotNull() {
            addCriterion("graduation_flow_begin_time is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeEqualTo(Date value) {
            addCriterion("graduation_flow_begin_time =", value, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeNotEqualTo(Date value) {
            addCriterion("graduation_flow_begin_time <>", value, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeGreaterThan(Date value) {
            addCriterion("graduation_flow_begin_time >", value, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("graduation_flow_begin_time >=", value, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeLessThan(Date value) {
            addCriterion("graduation_flow_begin_time <", value, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeLessThanOrEqualTo(Date value) {
            addCriterion("graduation_flow_begin_time <=", value, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeIn(List<Date> values) {
            addCriterion("graduation_flow_begin_time in", values, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeNotIn(List<Date> values) {
            addCriterion("graduation_flow_begin_time not in", values, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeBetween(Date value1, Date value2) {
            addCriterion("graduation_flow_begin_time between", value1, value2, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowBeginTimeNotBetween(Date value1, Date value2) {
            addCriterion("graduation_flow_begin_time not between", value1, value2, "graduationFlowBeginTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeIsNull() {
            addCriterion("graduation_flow_end_time is null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeIsNotNull() {
            addCriterion("graduation_flow_end_time is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeEqualTo(Date value) {
            addCriterion("graduation_flow_end_time =", value, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeNotEqualTo(Date value) {
            addCriterion("graduation_flow_end_time <>", value, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeGreaterThan(Date value) {
            addCriterion("graduation_flow_end_time >", value, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("graduation_flow_end_time >=", value, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeLessThan(Date value) {
            addCriterion("graduation_flow_end_time <", value, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeLessThanOrEqualTo(Date value) {
            addCriterion("graduation_flow_end_time <=", value, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeIn(List<Date> values) {
            addCriterion("graduation_flow_end_time in", values, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeNotIn(List<Date> values) {
            addCriterion("graduation_flow_end_time not in", values, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeBetween(Date value1, Date value2) {
            addCriterion("graduation_flow_end_time between", value1, value2, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowEndTimeNotBetween(Date value1, Date value2) {
            addCriterion("graduation_flow_end_time not between", value1, value2, "graduationFlowEndTime");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumIsNull() {
            addCriterion("graduation_flow_student_num is null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumIsNotNull() {
            addCriterion("graduation_flow_student_num is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumEqualTo(Integer value) {
            addCriterion("graduation_flow_student_num =", value, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumNotEqualTo(Integer value) {
            addCriterion("graduation_flow_student_num <>", value, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumGreaterThan(Integer value) {
            addCriterion("graduation_flow_student_num >", value, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_student_num >=", value, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumLessThan(Integer value) {
            addCriterion("graduation_flow_student_num <", value, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumLessThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_student_num <=", value, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumIn(List<Integer> values) {
            addCriterion("graduation_flow_student_num in", values, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumNotIn(List<Integer> values) {
            addCriterion("graduation_flow_student_num not in", values, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_student_num between", value1, value2, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowStudentNumNotBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_student_num not between", value1, value2, "graduationFlowStudentNum");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusIsNull() {
            addCriterion("graduation_flow_set_status is null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusIsNotNull() {
            addCriterion("graduation_flow_set_status is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusEqualTo(Integer value) {
            addCriterion("graduation_flow_set_status =", value, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusNotEqualTo(Integer value) {
            addCriterion("graduation_flow_set_status <>", value, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusGreaterThan(Integer value) {
            addCriterion("graduation_flow_set_status >", value, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_set_status >=", value, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusLessThan(Integer value) {
            addCriterion("graduation_flow_set_status <", value, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusLessThanOrEqualTo(Integer value) {
            addCriterion("graduation_flow_set_status <=", value, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusIn(List<Integer> values) {
            addCriterion("graduation_flow_set_status in", values, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusNotIn(List<Integer> values) {
            addCriterion("graduation_flow_set_status not in", values, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_set_status between", value1, value2, "graduationFlowSetStatus");
            return (Criteria) this;
        }

        public Criteria andGraduationFlowSetStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("graduation_flow_set_status not between", value1, value2, "graduationFlowSetStatus");
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