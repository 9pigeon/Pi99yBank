package com.hana.util;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class DepositUtil {
    public static JSONObject getDeposit(String key) throws IOException, ParseException {
        StringBuilder urlBuilder = new StringBuilder("https://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json");
        urlBuilder.append("?" + URLEncoder.encode("auth","UTF-8")+"="+URLEncoder.encode(key, "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("topFinGrpNo","UTF-8") + "=" + URLEncoder.encode("020000", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8"));

        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");

        int responseCode = conn.getResponseCode();
        if (responseCode >= 200 && responseCode < 300) {
            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = rd.readLine()) != null) {
                sb.append(line);
            }
            rd.close();
            conn.disconnect();

            JSONParser jsonParser = new JSONParser();
            return (JSONObject) jsonParser.parse(sb.toString());
        } else {
            throw new IOException("HTTP error code: " + responseCode);
        }
    }
}
