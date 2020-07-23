public static void toPng(Bitmap textBitmap, File file) {
    
        // String filename = "/mnt/sdcard/text." + this + ".png";
    
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(file);
            textBitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }