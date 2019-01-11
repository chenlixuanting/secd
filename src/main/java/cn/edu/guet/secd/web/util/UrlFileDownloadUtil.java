package cn.edu.guet.secd.web.util;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;

/**
 * 通过URL下载文件的工具类
 *
 * @author Administrator
 */
public class UrlFileDownloadUtil {

    /**
     * 传入要下载的图片的url列表，将url所对应的图片下载到本地
     *
     * @param urlList
     * @param names
     */
    public static void downloadPictures(List<String> urlList, List<String> names, String baseDir) {
//        String baseDir = "E:\\spider\\";
        URL url = null;

        for (int i = 0; i < urlList.size(); i++) {
            try {
                url = new URL(urlList.get(i));
                DataInputStream dataInputStream = new DataInputStream(url.openStream());
                FileOutputStream fileOutputStream = new FileOutputStream(new File(baseDir + names.get(i)));

                byte[] buffer = new byte[1024 * 50];
                int length;

                while ((length = dataInputStream.read(buffer)) > 0) {
                    fileOutputStream.write(buffer, 0, length);
                }
                System.out.println("已经下载：" + baseDir + names.get(i));
                dataInputStream.close();
                fileOutputStream.close();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * @param urlList
     */
    public static void downloadPictures(List<String> urlList, String baseDir) {
//        String baseDir = "E:\\spider\\";
        URL url = null;

        for (int i = 0; i < urlList.size(); i++) {
            try {
                String[] files = urlList.get(i).split("/");
                String name = files[files.length - 1];
                url = new URL(urlList.get(i));
                DataInputStream dataInputStream = new DataInputStream(url.openStream());
                FileOutputStream fileOutputStream = new FileOutputStream(new File(baseDir + name));

                byte[] buffer = new byte[1024 * 50];
                int length;

                while ((length = dataInputStream.read(buffer)) > 0) {
                    fileOutputStream.write(buffer, 0, length);
                }
                System.out.println("已经下载：" + baseDir + name);
                dataInputStream.close();
                fileOutputStream.close();
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 下载一张图片
     *
     * @param u
     * @param name
     */
    public static void downloadPicture(String u, String name, String baseDir) {
//        String baseDir = "E:\\spider\\";
        URL url = null;

        try {
            url = new URL(u);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());
            FileOutputStream fileOutputStream = new FileOutputStream(new File(baseDir + name));

            byte[] buffer = new byte[1024 * 50];
            int length;

            while ((length = dataInputStream.read(buffer)) > 0) {
                fileOutputStream.write(buffer, 0, length);
            }

            System.out.println("已经下载：" + baseDir + name);
            dataInputStream.close();
            fileOutputStream.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 下载一张图片
     *
     * @param u
     */
    public static void downloadPicture(String u, String baseDir) {
//        String baseDir = "E:\\spider\\";
        URL url = null;
        String[] files = u.split("/");
        String name = files[files.length - 1];

        try {
            url = new URL(u);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());
            FileOutputStream fileOutputStream = new FileOutputStream(new File(baseDir + name));

            byte[] buffer = new byte[1024 * 50];
            int length;

            while ((length = dataInputStream.read(buffer)) > 0) {
                fileOutputStream.write(buffer, 0, length);
            }
            System.out.println("已经下载：" + baseDir + name);
            dataInputStream.close();
            fileOutputStream.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
