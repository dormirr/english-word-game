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
            rs.close();
            stmt.close();
            conn.close();
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<User> rankAll(String difficulty) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            String sql = "SELECT *,(SELECT count(DISTINCT " + difficulty + ") FROM 用户 AS b WHERE a." + difficulty + "<b." + difficulty + " AND 用户序号>1)+1 AS 累计积分排名 FROM 用户 AS a WHERE 用户序号>1 ORDER BY 累计积分排名";
            //String sql = "SELECT CASE WHEN @prevRank = " + difficulty + " THEN @rank WHEN @prevRank := " + difficulty + " THEN @rank := @rank+1 END AS 累计积分排名,a.* FROM(SELECT * FROM 用户)a,(SELECT @rank :=0,@prevRank :=NULL)b ORDER BY a." + difficulty + " DESC";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();//执行
            List<User> list = new ArrayList<User>();
            //3.bean对象封装
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("用户序号"));
                user.setName(rs.getString("账号"));
                user.setPwd(rs.getString("密码"));
                user.setSimpleScore(rs.getInt("简单"));
                user.setMediumScore(rs.getInt("中等"));
                user.setHardScore(rs.getInt("困难"));
                user.setRandom(rs.getInt("随机"));
                user.setRanking(rs.getInt("累计积分排名"));
                list.add(user);
            }
            rs.close();
            stmt.close();
            conn.close();
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
                user.setSimpleScore(rs.getInt("简单"));
                user.setMediumScore(rs.getInt("中等"));
                user.setHardScore(rs.getInt("困难"));
                user.setRandom(rs.getInt("随机"));
                list.add(user);
            }
            rs.close();
            stmt.close();
            conn.close();
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
            stmt.close();
            conn.close();
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

    public boolean updateOne(User user) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("UPDATE 用户 SET 密码=? where 用户序号=?");
            stmt.setString(1, user.getPwd());
            stmt.setInt(2, user.getId());
            int result = stmt.executeUpdate();
            stmt.close();
            conn.close();
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

    public boolean updateDifficulty(User user, int difficulty, String Difficulty) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            String sql = "UPDATE 用户 SET " + Difficulty + "=? where 用户序号=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, difficulty);
            stmt.setInt(2, user.getId());
            int result = stmt.executeUpdate();
            stmt.close();
            conn.close();
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
                user.setSimpleScore(rs.getInt("简单"));
                user.setMediumScore(rs.getInt("中等"));
                user.setHardScore(rs.getInt("困难"));
                user.setRandom(rs.getInt("随机"));
            }
            rs.close();
            stmt.close();
            conn.close();
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int selectDifficulty(String uid, String difficulty) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            String sql = "select " + difficulty + " from 用户 where 用户序号=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, Integer.parseInt(uid));
            ResultSet rs = stmt.executeQuery();
            rs.next();
            int count = rs.getInt(1);
            rs.close();
            stmt.close();
            conn.close();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int selectNum() {
        try {
            //2.得到一个连接
            Connection conn = DBUtil.getConn();
            //3.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select count(*) from 用户");
            ResultSet rs = stmt.executeQuery();//执行
            int count;
            //bean对象封装
            rs.next();
            count = rs.getInt(1);
            rs.close();
            stmt.close();
            conn.close();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
