package com.courseDesign.englishWordGame.pojo;

public class User {
    private int id;
    private String name;
    private String pwd;
    private int grandTotalScore;
    private int ranking;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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

    public int getGrandTotalScore() {
        return grandTotalScore;
    }

    public void setGrandTotalScore(int grandTotalScore) {
        this.grandTotalScore = grandTotalScore;
    }

    public int getRanking() {
        return ranking;
    }

    public void setRanking(int ranking) {
        this.ranking = ranking;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pwd='" + pwd + '\'' +
                ", grandTotalScore=" + grandTotalScore +
                ", ranking=" + ranking +
                '}';
    }
}