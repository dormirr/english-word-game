package com.courseDesign.englishWordGame.pojo;

public class Notes {
    private int id;
    private int uid;
    private int wid;
    private int frequency;
    private int trequency;
    private String word;
    private String chinese;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public int getFrequency() {
        return frequency;
    }

    public void setFrequency(int frequency) {
        this.frequency = frequency;
    }

    public int getTrequency() {
        return trequency;
    }

    public void setTrequency(int trequency) {
        this.trequency = trequency;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public String getChinese() {
        return chinese;
    }

    public void setChinese(String chinese) {
        this.chinese = chinese;
    }

    @Override
    public String toString() {
        return "Notes{" +
                "id=" + id +
                ", uid=" + uid +
                ", wid=" + wid +
                ", frequency=" + frequency +
                ", trequency=" + trequency +
                ", word='" + word + '\'' +
                ", chinese='" + chinese + '\'' +
                '}';
    }
}
