package cn.edu.guet.secd.web.vo;

import java.io.Serializable;

/**
 * @author Administrator
 */
public class SpotVo implements Serializable {

    private String spotId;
    private Double score;
    private Integer scoreCss;
    private String spotName;
    private String headPicUrl;
    private Integer totalComment;
    private String textdetail;

    public Integer getTotalComment() {
        return totalComment;
    }

    public void setTotalComment(Integer totalComment) {
        this.totalComment = totalComment;
    }

    public String getTextdetail() {
        return textdetail;
    }

    public void setTextdetail(String textdetail) {
        this.textdetail = textdetail;
    }

    public String getSpotId() {
        return spotId;
    }

    public void setSpotId(String spotId) {
        this.spotId = spotId;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public Integer getScoreCss() {
        return scoreCss;
    }

    public void setScoreCss(Integer scoreCss) {
        this.scoreCss = scoreCss;
    }

    public String getSpotName() {
        return spotName;
    }

    public void setSpotName(String spotName) {
        this.spotName = spotName;
    }

    public String getHeadPicUrl() {
        return headPicUrl;
    }

    public void setHeadPicUrl(String headPicUrl) {
        this.headPicUrl = headPicUrl;
    }

    public SpotVo() {
    }
}
