package com.university.graduation.domain.bo;

import java.util.ArrayList;
import java.util.List;

public class GraduationLinkExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GraduationLinkExample() {
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

        public Criteria andGraduationLinkIdIsNull() {
            addCriterion("graduation_link_id is null");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdIsNotNull() {
            addCriterion("graduation_link_id is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdEqualTo(Integer value) {
            addCriterion("graduation_link_id =", value, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdNotEqualTo(Integer value) {
            addCriterion("graduation_link_id <>", value, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdGreaterThan(Integer value) {
            addCriterion("graduation_link_id >", value, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("graduation_link_id >=", value, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdLessThan(Integer value) {
            addCriterion("graduation_link_id <", value, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdLessThanOrEqualTo(Integer value) {
            addCriterion("graduation_link_id <=", value, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdIn(List<Integer> values) {
            addCriterion("graduation_link_id in", values, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdNotIn(List<Integer> values) {
            addCriterion("graduation_link_id not in", values, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdBetween(Integer value1, Integer value2) {
            addCriterion("graduation_link_id between", value1, value2, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkIdNotBetween(Integer value1, Integer value2) {
            addCriterion("graduation_link_id not between", value1, value2, "graduationLinkId");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameIsNull() {
            addCriterion("graduation_link_name is null");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameIsNotNull() {
            addCriterion("graduation_link_name is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameEqualTo(String value) {
            addCriterion("graduation_link_name =", value, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameNotEqualTo(String value) {
            addCriterion("graduation_link_name <>", value, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameGreaterThan(String value) {
            addCriterion("graduation_link_name >", value, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameGreaterThanOrEqualTo(String value) {
            addCriterion("graduation_link_name >=", value, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameLessThan(String value) {
            addCriterion("graduation_link_name <", value, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameLessThanOrEqualTo(String value) {
            addCriterion("graduation_link_name <=", value, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameLike(String value) {
            addCriterion("graduation_link_name like", value, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameNotLike(String value) {
            addCriterion("graduation_link_name not like", value, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameIn(List<String> values) {
            addCriterion("graduation_link_name in", values, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameNotIn(List<String> values) {
            addCriterion("graduation_link_name not in", values, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameBetween(String value1, String value2) {
            addCriterion("graduation_link_name between", value1, value2, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkNameNotBetween(String value1, String value2) {
            addCriterion("graduation_link_name not between", value1, value2, "graduationLinkName");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementIsNull() {
            addCriterion("graduation_link_announcement is null");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementIsNotNull() {
            addCriterion("graduation_link_announcement is not null");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementEqualTo(String value) {
            addCriterion("graduation_link_announcement =", value, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementNotEqualTo(String value) {
            addCriterion("graduation_link_announcement <>", value, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementGreaterThan(String value) {
            addCriterion("graduation_link_announcement >", value, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementGreaterThanOrEqualTo(String value) {
            addCriterion("graduation_link_announcement >=", value, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementLessThan(String value) {
            addCriterion("graduation_link_announcement <", value, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementLessThanOrEqualTo(String value) {
            addCriterion("graduation_link_announcement <=", value, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementLike(String value) {
            addCriterion("graduation_link_announcement like", value, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementNotLike(String value) {
            addCriterion("graduation_link_announcement not like", value, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementIn(List<String> values) {
            addCriterion("graduation_link_announcement in", values, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementNotIn(List<String> values) {
            addCriterion("graduation_link_announcement not in", values, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementBetween(String value1, String value2) {
            addCriterion("graduation_link_announcement between", value1, value2, "graduationLinkAnnouncement");
            return (Criteria) this;
        }

        public Criteria andGraduationLinkAnnouncementNotBetween(String value1, String value2) {
            addCriterion("graduation_link_announcement not between", value1, value2, "graduationLinkAnnouncement");
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