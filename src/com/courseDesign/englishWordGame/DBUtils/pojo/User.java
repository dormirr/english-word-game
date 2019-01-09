package com.courseDesign.englishWordGame.DBUtils.pojo;

public class User {
    private int id;
    private String name;
    private String pwd;
    private int highestScore;
    private int grandTotalScore;
    private int Ranking;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public int getHighestScore() {
        return highestScore;
    }

    public void setHighestScore(int highestScore) {
        this.highestScore = highestScore;
    }

    public int getGrandTotalScore() {
        return grandTotalScore;
    }

    public void setGrandTotalScore(int grandTotalScore) {
        this.grandTotalScore = grandTotalScore;
    }

    public int getRanking() {
        return Ranking;
    }

    public void setRanking(int ranking) {
        Ranking = ranking;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pwd='" + pwd + '\'' +
                ", highestScore=" + highestScore +
                ", grandTotalScore=" + grandTotalScore +
                ", Ranking=" + Ranking +
                '}';
    }
}