package com.courseDesign.englishWordGame.dao;

import com.courseDesign.englishWordGame.pojo.Word;
import com.courseDesign.englishWordGame.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 提供word表的增删改查
 */
public class WordDao {
    //根据单词查询对象
    public List<Word> selectAll() {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select * from 单词");
            ResultSet rs = stmt.executeQuery();//执行
            List<Word> list = new ArrayList<Word>();
            //3.bean对象封装
            while (rs.next()) {
                Word word = new Word();
                word.setId(rs.getInt("单词序号"));
                word.setWord(rs.getString("英文"));
                word.setChinese(rs.getString("中文"));
                word.setDifficulty(rs.getString("难度"));
                list.add(word);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Word> selectOne(String difficulty) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();

            //2.得到操作数据库对象
            List<Word> list = new ArrayList<Word>();
            System.out.println(difficulty);
            if ("随机".equals(difficulty)) {
                PreparedStatement stmt = conn.prepareStatement("SELECT * FROM 单词 ORDER BY rand() LIMIT 1;");
                ResultSet rs = stmt.executeQuery();//执行
                //3.bean对象封装
                while (rs.next()) {
                    Word word = new Word();
                    word.setId(rs.getInt("单词序号"));
                    word.setWord(rs.getString("英文"));
                    word.setChinese(rs.getString("中文"));
                    word.setDifficulty(rs.getString("难度"));
                    list.add(word);
                }
            } else {
                PreparedStatement stmt = conn.prepareStatement("SELECT * FROM 单词 where 难度=? ORDER BY rand() LIMIT 1;");
                stmt.setString(1, difficulty);
                ResultSet rs = stmt.executeQuery();//执行
                //3.bean对象封装
                while (rs.next()) {
                    Word word = new Word();
                    word.setId(rs.getInt("单词序号"));
                    word.setWord(rs.getString("英文"));
                    word.setChinese(rs.getString("中文"));
                    word.setDifficulty(rs.getString("难度"));
                    list.add(word);
                }
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    public List<Word> selectThree() {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM 单词 ORDER BY rand() LIMIT 3;");
            ResultSet rs = stmt.executeQuery();//执行
            List<Word> list = new ArrayList<Word>();
            //3.bean对象封装
            while (rs.next()) {
                Word word = new Word();
                word.setId(rs.getInt("单词序号"));
                word.setWord(rs.getString("英文"));
                word.setChinese(rs.getString("中文"));
                word.setDifficulty(rs.getString("难度"));
                list.add(word);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean insertOne(Word word) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("insert into 单词(英文,中文,难度) values(?,?,?)");
            stmt.setString(1, word.getWord());
            stmt.setString(2, word.getChinese());
            stmt.setString(3, word.getDifficulty());
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

    public boolean deleteOne(String id) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM 单词 WHERE 单词序号 = ?");
            stmt.setInt(1, Integer.parseInt(id));
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

    public boolean updateOne(Word word) {
        try {
            //得到一个连接
            Connection conn = DBUtil.getConn();

            //得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("UPDATE 单词 SET 中文=?,英文=?,难度=? where 单词序号=?");
            stmt.setString(1, word.getChinese());
            stmt.setString(2, word.getWord());
            stmt.setString(3, word.getDifficulty());
            stmt.setInt(4, word.getId());
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


    public Word selectUserById(String uid) {
        try {
            //1.得到一个连接
            Connection conn = DBUtil.getConn();
            //2.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select * from 单词 where 单词序号=?");
            stmt.setInt(1, Integer.parseInt(uid));
            ResultSet rs = stmt.executeQuery();
            Word word = null;
            while (rs.next()) {
                word = new Word();
                word.setId(rs.getInt("单词序号"));
                word.setWord(rs.getString("英文"));
                word.setChinese(rs.getString("中文"));
                word.setDifficulty(rs.getString("难度"));
            }
            return word;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Word> selectLike(String str) {
        try {
            //2.得到一个连接
            Connection conn = DBUtil.getConn();
            //3.得到操作数据库对象
            //模糊查询前15条；
            String sql = "select * from 单词 where 1 and CONCAT(英文,中文) like '%" + str + "%'" + "limit " + "15";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();//执行
            List<Word> list = new ArrayList<Word>();
            //bean对象封装
            while (rs.next()) {
                Word word = new Word();
                word.setId(rs.getInt("单词序号"));
                word.setWord(rs.getString("英文"));
                word.setChinese(rs.getString("中文"));
                word.setDifficulty(rs.getString("难度"));
                list.add(word);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int selectNum() {
        try {
            //2.得到一个连接
            Connection conn = DBUtil.getConn();
            //3.得到操作数据库对象
            PreparedStatement stmt = conn.prepareStatement("select count(*) from 单词");
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

