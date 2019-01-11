package com.courseDesign.englishWordGame.dao;

import com.courseDesign.englishWordGame.pojo.User;
import com.courseDesign.englishWordGame.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * 提供user表的增删改查
 */
public class UserDao {
    //根据用户名查询对象
    public User selectOne(String name) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select * from 用户 where 账号=?");
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();//执行
            User user = null;

            //3.bean对象封装
            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("用户序号"));
                user.setName(rs.getString("账号"));
                user.setPwd(rs.getString("密码"));
            }
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<User> rankAll() {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("SELECT(@rank := @rank+1) AS 累计积分排名,a.* FROM(SELECT * FROM 用户)a,(SELECT @rank :=0)b ORDER BY a.累计积分 DESC");
            ResultSet rs = stmt.executeQuery();//执行
            List<User> list = new ArrayList<User>();
            //3.bean对象封装
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("用户序号"));
                user.setName(rs.getString("账号"));
                user.setPwd(rs.getString("密码"));
                user.setHighestScore(rs.getInt("单局最高积分"));
                user.setGrandTotalScore(rs.getInt("累计积分"));
                user.setRanking(rs.getInt("累计积分排名"));
                list.add(user);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<User> selectAll() {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select * from 用户");
            ResultSet rs = stmt.executeQuery();//执行
            List<User> list = new ArrayList<User>();
            //3.bean对象封装
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("用户序号"));
                user.setName(rs.getString("账号"));
                user.setPwd(rs.getString("密码"));
                user.setHighestScore(rs.getInt("单局最高积分"));
                user.setGrandTotalScore(rs.getInt("累计积分"));
                user.setRanking(rs.getInt("累计积分排名"));
                list.add(user);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean insertOne(User user) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("insert into 用户(账号,密码) values(?,?)");
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getPwd());
            int result = stmt.executeUpdate();

            if (result != -1) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    /*public boolean deleteOne(String uid) {
        try {
            //2.得到一个连接
            Connection conn = DBUtil.getConn();
            //3.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM EMP WHERE EMPNO = ?");
            stmt.setInt(1, Integer.parseInt(uid));
            int result = stmt.executeUpdate();

            if (result > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }*/

    public boolean updateOne(User user) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("UPDATE 用户 SET 密码=?where 用户序号=?");
            stmt.setString(1, user.getPwd());
            stmt.setInt(2, user.getId());
            int result = stmt.executeUpdate();
            if (result > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    public User selectUserById(String uid) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select * from 用户 where 用户序号=?");
            stmt.setInt(1, Integer.parseInt(uid));
            ResultSet rs = stmt.executeQuery();
            User user = null;
            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("用户序号"));
                user.setName(rs.getString("账号"));
                user.setPwd(rs.getString("密码"));
                user.setHighestScore(rs.getInt("单局最高积分"));
                user.setGrandTotalScore(rs.getInt("累计积分"));
                user.setRanking(rs.getInt("累计积分排名"));
            }
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /*public List<User> selectLike(String str, String strr) {
        try {
            //2.得到一个连接
            Connection conn = DBUtil.getConn();
            //3.得到操作数据库对象
            //模糊查询前strr条；
            String sql = "select * from EMP where 1 and CONCAT(ENAME,DEPTNO) like '%" + str + "%'" + "limit " + strr;
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();//执行
            List<User> list = new ArrayList<User>();
            //bean对象封装
            while (rs.next()) {
                User user = new User();
                user.setEmpno(rs.getInt("EMPNO"));
                user.setEname(rs.getString("ENAME"));
                user.setEpwd(rs.getString("EPWD"));
                user.setDeptno(rs.getString("DEPTNO"));
                user.setJob(rs.getString("JOB"));
                user.setSal(rs.getFloat("SAL"));
                user.setComm(rs.getFloat("COMM"));
                user.setHiredate(rs.getString("HIREDATE"));
                list.add(user);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }*/

    public int selectNum() {
        try {
            //2.得到一个连接
            Connection conn = DBUtil.getConn();
            //3.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select count(*) from 用户");
            ResultSet rs = stmt.executeQuery();//执行
            int count;
            //bean对象封装
            while (rs.next()) {
                count = rs.getInt(1);
                return count;
            }
            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
