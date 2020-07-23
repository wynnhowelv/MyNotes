public static Map<String, Object> getParameter(String contents) {
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            String[] keyValues = contents.split("&");
            for (int i = 0; i < keyValues.length; i++) {
                String key = keyValues[i].substring(0, keyValues[i].indexOf("="));
                String value = keyValues[i].substring(keyValues[i].indexOf("=") + 1);
                map.put(key, value);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

 String queryString = req.getQueryString();

Map<String, Object> map = getParameter(queryString);