package com.courseDesign.englishWordGame.dao;

import com.courseDesign.englishWordGame.pojo.Notes;
import com.courseDesign.englishWordGame.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NotesDao {
    //根据用户名查询对象
    public List<Notes> selectAll() {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select * from 记录");
            ResultSet rs = stmt.executeQuery();//执行
            List<Notes> list = new ArrayList<Notes>();
            //3.bean对象封装
            while (rs.next()) {
                Notes user = new Notes();
                user.setUid(rs.getInt("用户序号"));
                user.setWid(rs.getInt("单词序号"));
                user.setFrequency(rs.getInt("次数"));
                list.add(user);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean insertOne(Notes user) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("insert into 记录(用户序号,单词序号,次数) values(?,?,?)");
            stmt.setInt(1, user.getUid());
            stmt.setInt(2, user.getWid());
            stmt.setInt(3, 0);
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

    public boolean updateOne(Notes user,int frequency) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("UPDATE 记录 SET 次数=? where 用户序号=? and 单词序号=?");
            stmt.setInt(1, frequency);
            stmt.setInt(2, user.getUid());
            stmt.setInt(3, user.getWid());
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

    public Notes selectUserById(String uid) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select * from 记录 where 用户序号=?");
            stmt.setInt(1, Integer.parseInt(uid));
            ResultSet rs = stmt.executeQuery();
            Notes user = null;
            while (rs.next()) {
                user = new Notes();
                user.setUid(rs.getInt("用户序号"));
                user.setWid(rs.getInt("单词序号"));
                user.setFrequency(rs.getInt("次数"));
            }
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Notes selectNotes(String uid,String wid) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select * from 记录 where 用户序号=? and 单词序号=?");
            stmt.setInt(1, Integer.parseInt(uid));
            stmt.setInt(2, Integer.parseInt(wid));
            ResultSet rs = stmt.executeQuery();
            Notes user = null;
            while (rs.next()) {
                user = new Notes();
                user.setUid(rs.getInt("用户序号"));
                user.setWid(rs.getInt("单词序号"));
                user.setFrequency(rs.getInt("次数"));
            }
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
