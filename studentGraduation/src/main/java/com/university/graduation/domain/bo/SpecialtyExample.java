package com.university.graduation.domain.bo;

import java.util.ArrayList;
import java.util.List;

public class SpecialtyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SpecialtyExample() {
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

        public Criteria andSpecialtyNameIsNull() {
            addCriterion("specialty_name is null");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameIsNotNull() {
            addCriterion("specialty_name is not null");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameEqualTo(String value) {
            addCriterion("specialty_name =", value, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameNotEqualTo(String value) {
            addCriterion("specialty_name <>", value, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameGreaterThan(String value) {
            addCriterion("specialty_name >", value, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameGreaterThanOrEqualTo(String value) {
            addCriterion("specialty_name >=", value, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameLessThan(String value) {
            addCriterion("specialty_name <", value, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameLessThanOrEqualTo(String value) {
            addCriterion("specialty_name <=", value, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameLike(String value) {
            addCriterion("specialty_name like", value, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameNotLike(String value) {
            addCriterion("specialty_name not like", value, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameIn(List<String> values) {
            addCriterion("specialty_name in", values, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameNotIn(List<String> values) {
            addCriterion("specialty_name not in", values, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameBetween(String value1, String value2) {
            addCriterion("specialty_name between", value1, value2, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andSpecialtyNameNotBetween(String value1, String value2) {
            addCriterion("specialty_name not between", value1, value2, "specialtyName");
            return (Criteria) this;
        }

        public Criteria andExtraInformationIsNull() {
            addCriterion("extra_information is null");
            return (Criteria) this;
        }

        public Criteria andExtraInformationIsNotNull() {
            addCriterion("extra_information is not null");
            return (Criteria) this;
        }

        public Criteria andExtraInformationEqualTo(String value) {
            addCriterion("extra_information =", value, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationNotEqualTo(String value) {
            addCriterion("extra_information <>", value, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationGreaterThan(String value) {
            addCriterion("extra_information >", value, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationGreaterThanOrEqualTo(String value) {
            addCriterion("extra_information >=", value, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationLessThan(String value) {
            addCriterion("extra_information <", value, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationLessThanOrEqualTo(String value) {
            addCriterion("extra_information <=", value, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationLike(String value) {
            addCriterion("extra_information like", value, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationNotLike(String value) {
            addCriterion("extra_information not like", value, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationIn(List<String> values) {
            addCriterion("extra_information in", values, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationNotIn(List<String> values) {
            addCriterion("extra_information not in", values, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationBetween(String value1, String value2) {
            addCriterion("extra_information between", value1, value2, "extraInformation");
            return (Criteria) this;
        }

        public Criteria andExtraInformationNotBetween(String value1, String value2) {
            addCriterion("extra_information not between", value1, value2, "extraInformation");
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