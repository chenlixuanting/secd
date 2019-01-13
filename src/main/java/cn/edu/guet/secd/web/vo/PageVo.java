package cn.edu.guet.secd.web.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Administrator
 */
public class PageVo implements Serializable {

    private int start;
    private int end;
    private long total;

    private int currentPage;
    private int firstPage;
    private int finalPage;

    private String previousPageUrl;
    private String nextPageUrl;

    private List<Integer> containPage = new ArrayList<Integer>();

    public String getPreviousPageUrl() {
        return previousPageUrl;
    }

    public void setPreviousPageUrl(String previousPageUrl) {
        this.previousPageUrl = previousPageUrl;
    }

    public String getNextPageUrl() {
        return nextPageUrl;
    }

    public void setNextPageUrl(String nextPageUrl) {
        this.nextPageUrl = nextPageUrl;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getFirstPage() {
        return firstPage;
    }

    public void setFirstPage(int firstPage) {
        this.firstPage = firstPage;
    }

    public int getFinalPage() {
        return finalPage;
    }

    public void setFinalPage(int finalPage) {
        this.finalPage = finalPage;
    }

    public List<Integer> getContainPage() {
        return containPage;
    }

    public void setContainPage(List<Integer> containPage) {
        this.containPage = containPage;
    }

    @Override
    public String toString() {
        return "PageVo{" +
                "start=" + start +
                ", end=" + end +
                ", total=" + total +
                ", currentPage=" + currentPage +
                ", firstPage=" + firstPage +
                ", finalPage=" + finalPage +
                ", containPage=" + containPage +
                '}';
    }

    public PageVo() {
    }
}
