package com.android.notification.util;

import android.os.Environment;
import android.util.Log;
import com.android.notification.configure.ConfigureFile;
import com.android.notification.configure.DownApkXmlKey;
import com.google.ads.AdActivity;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.Character.UnicodeBlock;
import java.net.URL;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.regex.Pattern;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import u.aly.bs;

public class Tool {
    static int BUFFERSIZE = 102400;
    private static int LogFlag = 3;
    private static String Tag = "pencilsketch";

    public static byte[] getByteArrayFromStream(InputStream aIs) {
        if (aIs == null) {
            return null;
        }
        byte[] buffer = new byte[BUFFERSIZE];
        int len = 0;
        do {
            int bLen = aIs.read(buffer, len, BUFFERSIZE - len);
            if (bLen == -1) {
                break;
            }
            len += bLen;
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
        } while (len < BUFFERSIZE);
        println("buffer out!!!!!!!!!!!");
        if (len <= 0) {
            return null;
        }
        byte[] result = new byte[len];
        System.arraycopy(buffer, 0, result, 0, len);
        buffer = null;
        return result;
    }

    public static void println(String info) {
        Log.i("wudi0715", info);
    }

    public static Properties loadProperties(String URL) {
        IOException e;
        Throwable th;
        InputStream in = Tool.class.getResourceAsStream(URL);
        Properties prop = null;
        try {
            Properties prop2 = new Properties();
            try {
                prop2.load(in);
                try {
                    in.close();
                    return prop2;
                } catch (IOException ex) {
                    Log.e("InputStream closed exception......", ex.getMessage());
                    return prop2;
                }
            } catch (IOException e2) {
                e = e2;
                prop = prop2;
                try {
                    Log.e("IOException:" + URL + "Not Found......", e.getMessage());
                    try {
                        in.close();
                        return prop;
                    } catch (IOException ex2) {
                        Log.e("InputStream closed exception......", ex2.getMessage());
                        return prop;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        in.close();
                    } catch (IOException ex22) {
                        Log.e("InputStream closed exception......", ex22.getMessage());
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                prop = prop2;
                in.close();
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            Log.e("IOException:" + URL + "Not Found......", e.getMessage());
            in.close();
            return prop;
        }
    }

    public static void SDCardTest() {
        String sDStateString = Environment.getExternalStorageState();
        File myFile;
        if (sDStateString.equals("mounted")) {
            try {
                myFile = new File(new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath())).append(File.separator).append("Android/data/com.android.system/test.properties").toString());
                if (!myFile.exists()) {
                    myFile.createNewFile();
                }
                Properties prop = new Properties();
                prop.load(new FileInputStream(myFile));
                prop.put("t.3", "comlepme ythe one!");
                FileOutputStream outputStream = new FileOutputStream(myFile);
                outputStream.write("Hello, World!".getBytes());
                outputStream.close();
            } catch (Exception e) {
            }
        } else if (sDStateString.endsWith("mounted_ro")) {
            myFile = new File(new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath())).append(File.separator).append("MyFile.txt").toString());
            if (myFile.exists()) {
                try {
                    FileInputStream inputStream = new FileInputStream(myFile);
                    inputStream.read(new byte[1024]);
                    inputStream.close();
                } catch (Exception e2) {
                }
            }
        }
    }

    public static boolean isStrEmpty(Object str) {
        String objString = convertObjectToStr(str);
        if (str == null || objString.trim().length() <= 0) {
            return true;
        }
        return false;
    }

    public static boolean isStrNotEmpty(Object str) {
        String objString = convertObjectToStr(str);
        if (str == null || objString.trim().length() <= 0) {
            return false;
        }
        return true;
    }

    public static String GBK2Unicode(String str) {
        try {
            return new String(str.getBytes("GB2312"), "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            return str;
        }
    }

    public static String Unicode2GBK(String str) {
        try {
            return new String(str.getBytes("ISO-8859-1"), "GB2312");
        } catch (UnsupportedEncodingException e) {
            return str;
        }
    }

    public static String UTF82GBK(String str) {
        try {
            return new String(str.getBytes("UTF-8"), "GB2312");
        } catch (UnsupportedEncodingException e) {
            return str;
        }
    }

    public static String getSysTimeMS() {
        return new SimpleDateFormat("yyyyMMddHHmmssSSSZ").format(new Date());
    }

    public static String getSysTime() {
        return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
    }

    public static String getSysDate() {
        return new SimpleDateFormat("yyyyMMdd").format(new Date());
    }

    public static String getSysDateNew() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    public static String base64Decoder(String ss) {
        return bs.b;
    }

    public static String base64Encoder(String ss) {
        return bs.b;
    }

    public static int checkNum(String num) {
        String strNum = "0123456789";
        if (num == null) {
            return 0;
        }
        try {
            int len = num.length();
            if (len == 0) {
                return 0;
            }
            for (int i = 0; i < len; i++) {
                if (strNum.indexOf(num.charAt(i)) == -1) {
                    return 0;
                }
            }
            return 1;
        } catch (Exception e) {
            return -1;
        }
    }

    public static String getTimeDifference(String time) {
        String re = bs.b;
        String systemTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()).toString();
        SimpleDateFormat dfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            long between = (dfs.parse(time).getTime() - dfs.parse(systemTime).getTime()) / 1000;
            long hour1 = between / 3600;
            if (hour1 > 0) {
                re = new StringBuilder(String.valueOf(re)).append(hour1 < 10 ? "0" + hour1 : Long.valueOf(hour1)).append(":").toString();
            } else {
                re = new StringBuilder(String.valueOf(re)).append("00:").toString();
            }
            long minute1 = (between % 3600) / 60;
            if (minute1 > 0) {
                re = new StringBuilder(String.valueOf(re)).append(minute1 < 10 ? "0" + minute1 : Long.valueOf(minute1)).append(":").toString();
            } else {
                re = new StringBuilder(String.valueOf(re)).append("00:").toString();
            }
            long second1 = between % 60;
            if (second1 <= 0) {
                return new StringBuilder(String.valueOf(re)).append("00").toString();
            }
            return new StringBuilder(String.valueOf(re)).append(second1 < 10 ? "0" + second1 : Long.valueOf(second1)).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return re;
        }
    }

    public static long getTimeDifferenceMs(String time) {
        long between = 0;
        String systemTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()).toString();
        SimpleDateFormat dfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            return (dfs.parse(time).getTime() - dfs.parse(systemTime).getTime()) / 1000;
        } catch (Exception e) {
            e.printStackTrace();
            return between;
        }
    }

    public static java.sql.Date getSqlDateTypeTime(String strDate) {
        Date utilDate = null;
        try {
            utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(strDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return new java.sql.Date(utilDate.getTime());
    }

    public static Date getSqlDateTypeDateAndTime(String strDate) {
        Date utilDate = null;
        try {
            utilDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strDate, new ParsePosition(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return utilDate;
    }

    public static Date getUtilDateTypeTime(String strDate) {
        Date utilDate = null;
        try {
            utilDate = new SimpleDateFormat("yyyy-MM-dd ").parse(strDate, new ParsePosition(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return utilDate;
    }

    public static Date getUtilDateTypeTime2(String strDate) {
        Date utilDate = null;
        try {
            utilDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strDate, new ParsePosition(0));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return utilDate;
    }

    public static String getStringDate(String format, Date strDate) {
        String stringDate = bs.b;
        try {
            if (isStrNotEmpty(strDate)) {
                stringDate = new SimpleDateFormat(format).format(strDate);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringDate;
    }

    public static Date getCurrentTime(String dateformat) {
        SimpleDateFormat sdf = new SimpleDateFormat(dateformat);
        Date currentDate = null;
        try {
            currentDate = sdf.parse(sdf.format(new Date()));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return currentDate;
    }

    public static Date getCurrentMonth(String dateformat, int day) {
        Date now = getCurrentTime(dateformat);
        Calendar c = Calendar.getInstance();
        c.setTime(now);
        c.set(c.get(1), c.get(2), day);
        return c.getTime();
    }

    public static int convertStrToInt(String inputStr) {
        try {
            return Integer.parseInt(inputStr);
        } catch (Exception e) {
            return 0;
        }
    }

    public static float convertStrToFloat(String inputStr) {
        try {
            return Float.parseFloat(inputStr);
        } catch (Exception e) {
            return 0.0f;
        }
    }

    public static double convertStrToDouble(String inputStr) {
        try {
            return Double.parseDouble(inputStr);
        } catch (Exception e) {
            return 0.0d;
        }
    }

    public static String convertStrNull(String objNull) {
        String backStr = bs.b;
        try {
            String objToStr = String.valueOf(objNull);
            if ("null".equals(objToStr)) {
                return bs.b;
            }
            return objToStr;
        } catch (Exception e) {
            return bs.b;
        }
    }

    public static String convertObjectToStr(Object objNull) {
        String backStr = bs.b;
        try {
            String objToStr = String.valueOf(objNull);
            if ("null".equals(objToStr)) {
                return bs.b;
            }
            return objToStr;
        } catch (Exception e) {
            return bs.b;
        }
    }

    public static long convertObjectToLong(Object objNull) {
        try {
            String objToStr = String.valueOf(objNull);
            if ("null".equals(objToStr)) {
                return 0;
            }
            return Long.valueOf(objToStr).longValue();
        } catch (Exception e) {
            return 0;
        }
    }

    public static String generateRondom(int length) {
        String sRand = bs.b;
        Random random = new Random();
        for (int i = 0; i < length; i++) {
            sRand = new StringBuilder(String.valueOf(sRand)).append(random.nextInt(10)).toString();
        }
        return sRand;
    }

    public static String generateRondomChar(int length) {
        String str = bs.b;
        for (int i = 0; i < length; i++) {
            str = new StringBuilder(String.valueOf(str)).append((char) ((int) ((Math.random() * 26.0d) + 97.0d))).toString();
        }
        return str;
    }

    public static String getStringSeq(int length, String str) {
        try {
            if (str.length() < length) {
                int j = length - str.length();
                for (int i = 0; i < j; i++) {
                    str = "0" + str;
                }
            }
            return str;
        } catch (Exception e) {
            return str;
        }
    }

    public static String getTime(String time) {
        long ms = convertObjectToLong(time);
        int mi = 1000 * 60;
        int hh = mi * 60;
        int dd = hh * 24;
        long day = ms / ((long) dd);
        long hour = (ms - (((long) dd) * day)) / ((long) hh);
        long minute = ((ms - (((long) dd) * day)) - (((long) hh) * hour)) / ((long) mi);
        long second = (((ms - (((long) dd) * day)) - (((long) hh) * hour)) - (((long) mi) * minute)) / ((long) 1000);
        long milliSecond = (((ms - (((long) dd) * day)) - (((long) hh) * hour)) - (((long) mi) * minute)) - (((long) 1000) * second);
        StringBuffer sb = new StringBuffer();
        if (day != 0) {
            sb.append(new StringBuilder(String.valueOf(day)).append("d").toString());
        }
        if (hour != 0) {
            sb.append(new StringBuilder(String.valueOf(hour)).append("h").toString());
        }
        if (minute != 0) {
            sb.append(new StringBuilder(String.valueOf(minute)).append(AdActivity.TYPE_PARAM).toString());
        }
        if (second != 0) {
            sb.append(new StringBuilder(String.valueOf(second)).append("s").toString());
        }
        if (milliSecond != 0) {
            sb.append(new StringBuilder(String.valueOf(milliSecond)).append("ss").toString());
        }
        return sb.toString();
    }

    public static Date converStrToUtilDate(String strDate) {
        try {
            return new SimpleDateFormat("yyyyMMdd").parse(strDate);
        } catch (Exception e) {
            return new Date();
        }
    }

    public static boolean isChinese(String str) {
        Pattern pattern = Pattern.compile("[\\u3400-\\u9FBF]+");
        if (str != null && pattern.matcher(str.trim()).find()) {
            return true;
        }
        return false;
    }

    public static Properties getProperties(String fileName) {
        try {
            Properties ps = new Properties();
            InputStream inputFile = Tool.class.getClassLoader().getResourceAsStream(fileName);
            ps.load(inputFile);
            inputFile.close();
            return ps;
        } catch (NullPointerException e) {
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    public static int getStartNoByPageNo(int pageNo, int countNo) {
        return (pageNo - 1) * countNo;
    }

    public static File getClassFile(Class<Tool> clazz) {
        URL path = clazz.getResource(new StringBuilder(String.valueOf(clazz.getName().substring(clazz.getName().lastIndexOf(".") + 1))).append(".classs").toString());
        if (path == null) {
            path = clazz.getResource("/" + clazz.getName().replaceAll("[.]", "/") + ".class");
        }
        return new File(path.getFile());
    }

    public static File getClassPathFile(Class<Tool> clazz) {
        File file = getClassFile(clazz);
        int count = clazz.getName().split("[.]").length;
        for (int i = 0; i < count; i++) {
            file = file.getParentFile();
        }
        if (file.getName().toUpperCase().endsWith(".JAR!")) {
            return file.getParentFile();
        }
        return file;
    }

    public static void main(String[] args) {
        try {
            System.out.println(URLDecoder.decode(getClassPathFile(Tool.class).getAbsolutePath(), "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        System.out.println("pross==" + loadProperties("/pro_config.properties").getProperty("bill_url"));
        getSuffixTableName("2011-09-09");
    }

    public static String ToSBC(String input) {
        char[] c = input.toCharArray();
        for (int i = 0; i < c.length; i++) {
            if (c[i] == ' ') {
                c[i] = '　';
            } else if (c[i] < '') {
                c[i] = (char) (c[i] + 65248);
            }
        }
        return new String(c);
    }

    public static String ToDBC(String input) {
        char[] c = input.toCharArray();
        int i = 0;
        while (i < c.length) {
            if (c[i] == '　') {
                c[i] = ' ';
            } else if (c[i] > '＀' && c[i] < '｟') {
                c[i] = (char) (c[i] - 65248);
            }
            i++;
        }
        return new String(c);
    }

    public static boolean is_Chinese(char c) {
        UnicodeBlock ub = UnicodeBlock.of(c);
        if (ub == UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || ub == UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || ub == UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || ub == UnicodeBlock.GENERAL_PUNCTUATION || ub == UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || ub == UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) {
            return true;
        }
        return false;
    }

    public static boolean is_Chinese(String strName) {
        char[] ch = strName.toCharArray();
        for (char c : ch) {
            if (is_Chinese(c)) {
                return true;
            }
        }
        return false;
    }

    public static String getSixRandomNum() {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < 6; i++) {
            sb.append((int) (Math.random() * 10.0d));
        }
        return sb.toString();
    }

    public static String TrimString(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static Date getCurDateTime() {
        return new Date(System.currentTimeMillis());
    }

    public static String getSuffixTableName(String dynamicTime) {
        String retTime = "_";
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM");
        try {
            if (isStrEmpty(dynamicTime)) {
                return " ";
            }
            if (sf.format(new Date(System.currentTimeMillis())).equals(dynamicTime.substring(0, 7))) {
                return " ";
            }
            return new StringBuilder(String.valueOf(retTime)).append(dynamicTime.substring(0, 4)).append(dynamicTime.substring(5, 7)).toString();
        } catch (Exception e) {
            return new StringBuilder(String.valueOf(retTime)).append(sf.format(new Date(System.currentTimeMillis()))).toString();
        }
    }

    public static void WriteDefaultPropertie(Properties Ps, String key, String value) {
        if (!Ps.containsKey(key) && !isStrEmpty(value)) {
            Ps.setProperty(key, value);
        }
    }

    public static String ReadDownPropertie(Properties Ps, String key) {
        if (Ps.containsKey(key)) {
            return Ps.getProperty(key);
        }
        return null;
    }

    public static void WriteDownPropertie(String file, String key, String value) throws IOException {
        Properties ps = new Properties();
        File tempfile = new File(file);
        if (!tempfile.exists()) {
            tempfile.createNewFile();
        }
        FileInputStream inputfile = new FileInputStream(tempfile);
        ps.load(inputfile);
        ps.setProperty(key, value);
        FileOutputStream outputFile = new FileOutputStream(tempfile);
        inputfile.close();
        outputFile.flush();
        ps.store(outputFile, null);
        outputFile.close();
    }

    public static boolean UpdateDefaultPropertie(Properties Ps, String key, String value) {
        boolean ifupdate = false;
        if (Ps.containsKey(key) && !value.equals(Ps.getProperty(key))) {
            ifupdate = true;
        }
        if (!isStrEmpty(value)) {
            Ps.setProperty(key, value);
        }
        return ifupdate;
    }

    public static String ReadPropertie(String file, String key) {
        String value = new String(bs.b);
        try {
            Properties ps = new Properties();
            File tempfile = new File(file);
            if (!tempfile.exists()) {
                return value;
            }
            FileInputStream inputfile = new FileInputStream(tempfile);
            ps.load(inputfile);
            inputfile.close();
            value = ps.getProperty(key);
            return value;
        } catch (IOException e) {
            e.printStackTrace();
            JWDlogException(DownApkXmlKey.ROOT, "class:Tool  func:ReadPropertie  text:message:", e);
        }
    }

    public static void UpdatePropertie(String file, String key, String value) {
        WritePropertieEx(file, key, value, false);
    }

    public static void WritePropertie(String file, String key, String value) {
        WritePropertieEx(file, key, value, true);
    }

    private static void WritePropertieEx(String file, String key, String value, boolean flag) {
        try {
            boolean ifwrite;
            Properties ps = new Properties();
            File tempfile = new File(file);
            if (!tempfile.exists()) {
                if (flag) {
                    tempfile.createNewFile();
                } else {
                    return;
                }
            }
            FileInputStream inputfile = new FileInputStream(tempfile);
            ps.load(inputfile);
            if (flag) {
                ifwrite = true;
            } else {
                ifwrite = ps.containsKey(key);
            }
            if (ifwrite) {
                ps.setProperty(key, value);
            }
            FileOutputStream outputFile = new FileOutputStream(tempfile);
            ps.store(outputFile, null);
            inputfile.close();
            outputFile.flush();
            outputFile.close();
        } catch (IOException e) {
            e.printStackTrace();
            JWDlogException(DownApkXmlKey.ROOT, "class:Tool  func:WritePropertieEx  text:message:", e);
        }
    }

    public static String MyHttpPostHashMap(String url, HashMap<String, String> paraMap) throws ClientProtocolException, IOException, Exception {
        String retstr = new String(bs.b);
        HttpPost httpPost = new HttpPost(url);
        HttpClient httpclient = new DefaultHttpClient();
        List<NameValuePair> urlParam = new ArrayList();
        for (String hsKey : paraMap.keySet()) {
            JWDlog(DownApkXmlKey.ROOT, "class:Tool  func:MyHttpPostHashMap  text: hsKey:" + hsKey + "   hsvalue:" + ((String) paraMap.get(hsKey)).toString());
            urlParam.add(new BasicNameValuePair(hsKey, ((String) paraMap.get(hsKey)).toString()));
        }
        HttpConnectionParams.setConnectionTimeout(httpclient.getParams(), 2000);
        httpPost.setEntity(new UrlEncodedFormEntity(urlParam, "UTF-8"));
        HttpResponse httpResponse = httpclient.execute(httpPost);
        if (httpResponse.getStatusLine().getStatusCode() == 200) {
            return new StringBuilder(String.valueOf(retstr)).append(EntityUtils.toString(httpResponse.getEntity())).toString();
        }
        return retstr;
    }

    public static String MyHttpRequest(String url) throws ClientProtocolException, IOException {
        String retstr = new String(bs.b);
        HttpGet httpRequest = new HttpGet(url);
        HttpClient httpclient = new DefaultHttpClient();
        HttpParams params = httpclient.getParams();
        HttpConnectionParams.setConnectionTimeout(params, 3000);
        HttpConnectionParams.setSoTimeout(params, 2000);
        HttpResponse httpResponse = httpclient.execute(httpRequest);
        if (httpResponse.getStatusLine().getStatusCode() == 200) {
            return new StringBuilder(String.valueOf(retstr)).append(EntityUtils.toString(httpResponse.getEntity())).toString();
        }
        return retstr;
    }

    public static void JWDlog(String tag, String msg) {
        if (1 == LogFlag || LogFlag == 0) {
            Log.d(Tag, msg);
        }
        if ((2 == LogFlag || LogFlag == 0) && AppUtil.hasSdcard()) {
            try {
                File logfile = new File(ConfigureFile.JWDLogFile);
                if (!logfile.exists()) {
                    AppUtil.CreateDir(ConfigureFile.JWDLogFile);
                    if (!logfile.createNewFile()) {
                        return;
                    }
                }
                FileOutputStream outfile = new FileOutputStream(logfile, true);
                outfile.write(new StringBuilder(String.valueOf(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis())))).append("  ").append(Tag).append("  ").append(msg).append("\n").toString().getBytes());
                outfile.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static int CompareString(String str1, String str2) {
        if (str1 == null && str2 == null) {
            return 0;
        }
        if (str1 != null && str2 == null) {
            return 1;
        }
        if (str1 != null || str2 == null) {
            return str1.compareTo(str2);
        }
        return -1;
    }

    public static void JWDlogException(String tag, String msg, Throwable tr) {
        if (1 == LogFlag || LogFlag == 0) {
            Log.d(Tag, msg, tr);
        }
        if ((2 == LogFlag || LogFlag == 0) && AppUtil.hasSdcard()) {
            try {
                File logfile = new File(ConfigureFile.JWDLogFile);
                if (!logfile.exists()) {
                    AppUtil.CreateDir(ConfigureFile.JWDLogFile);
                    if (!logfile.createNewFile()) {
                        return;
                    }
                }
                FileOutputStream outfile = new FileOutputStream(logfile, true);
                Date date = new Date(System.currentTimeMillis());
                int hour = date.getHours();
                String logStr = new StringBuilder(String.valueOf(new SimpleDateFormat("yyyy-MM-dd  ").format(new Date(System.currentTimeMillis())))).append(hour).append(":").append(date.getMinutes()).append(":").append(date.getSeconds()).append("  ").append(Tag).append("  ").append(msg).toString();
                StackTraceElement[] se = tr.getStackTrace();
                StringBuffer sf = new StringBuffer();
                sf.append(tr.toString()).append("\n");
                for (StackTraceElement stackTraceElement : se) {
                    sf.append(stackTraceElement.toString());
                    sf.append("\n");
                }
                outfile.write(new StringBuilder(String.valueOf(logStr)).append(sf.toString()).toString().getBytes());
                outfile.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static void DeleteFile(String filename) {
        if (!isStrEmpty(filename)) {
            File file = new File(filename.trim());
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static int ChangeStrToInt(String str) {
        if (isStrEmpty(str)) {
            return 0;
        }
        str = str.trim();
        int nI = 0;
        while (nI < str.length()) {
            if (str.charAt(nI) < '0' || str.charAt(nI) > '9') {
                str = "0";
                break;
            }
            nI++;
        }
        return Integer.parseInt(str);
    }

    public static long ChangeStrToLong(String str) {
        if (isStrEmpty(str)) {
            return 0;
        }
        str = str.trim();
        int nI = 0;
        while (nI < str.length()) {
            if (str.charAt(nI) < '0' || str.charAt(nI) > '9') {
                str = "0";
                break;
            }
            nI++;
        }
        return Long.parseLong(str);
    }

    public static boolean IfAPKOk(String apkname) {
        boolean ret = false;
        if (isStrEmpty(apkname)) {
            return 0;
        }
        apkname = apkname.trim();
        if (apkname.length() > 3 && apkname.substring(apkname.length() - 3, apkname.length()).equals("apk")) {
            ret = true;
        }
        return ret;
    }
}
