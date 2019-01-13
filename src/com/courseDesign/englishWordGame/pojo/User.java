package com.courseDesign.englishWordGame.pojo;

public class User {
    private int id;
    private String name;
    private String pwd;
    private int simpleScore;
    private int mediumScore;
    private int hardScore;
    private int random;
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

    public int getSimpleScore() {
        return simpleScore;
    }

    public void setSimpleScore(int simpleScore) {
        this.simpleScore = simpleScore;
    }

    public int getMediumScore() {
        return mediumScore;
    }

    public void setMediumScore(int mediumScore) {
        this.mediumScore = mediumScore;
    }

    public int getHardScore() {
        return hardScore;
    }

    public void setHardScore(int hardScore) {
        this.hardScore = hardScore;
    }

    public int getRandom() {
        return random;
    }

    public void setRandom(int random) {
        this.random = random;
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
                ", simpleScore=" + simpleScore +
                ", mediumScore=" + mediumScore +
                ", hardScore=" + hardScore +
                ", random=" + random +
                ", ranking=" + ranking +
                '}';
    }
}