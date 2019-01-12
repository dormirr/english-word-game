package com.courseDesign.englishWordGame.pojo;

public class Notes {
    int uid;
    int wid;
    int frequency;
    String word;
    String chinese;

    @Override
    public String toString() {
        return "Notes{" +
                "uid=" + uid +
                ", wid=" + wid +
                ", frequency=" + frequency +
                ", word='" + word + '\'' +
                ", chinese='" + chinese + '\'' +
                '}';
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

}
