package com.example.meal_ordering_system.entity;


public class Notice  {



    private Integer id;

    private String name;

    private String content;

    private String times;

    public Notice() {
    }

    public Notice(Integer id, String name, String content, String times) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.times = times;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTimes() {
        return times;
    }

    public void setTimes(String times) {
        this.times = times;
    }
}