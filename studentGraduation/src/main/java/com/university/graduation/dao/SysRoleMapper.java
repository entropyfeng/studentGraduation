package com.university.graduation.dao;

import com.university.graduation.domain.SysRole;
import com.university.graduation.domain.SysRoleExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
 interface SysRoleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int countByExample(SysRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int deleteByExample(SysRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int deleteByPrimaryKey(Integer sysRoleId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int insert(SysRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int insertSelective(SysRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    List<SysRole> selectByExample(SysRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    SysRole selectByPrimaryKey(Integer sysRoleId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int updateByExampleSelective(@Param("record") SysRole record, @Param("example") SysRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int updateByExample(@Param("record") SysRole record, @Param("example") SysRoleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int updateByPrimaryKeySelective(SysRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_role
     *
     * @mbggenerated Tue Oct 02 11:07:40 CST 2018
     */
    int updateByPrimaryKey(SysRole record);
}