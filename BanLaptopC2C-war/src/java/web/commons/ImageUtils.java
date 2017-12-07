/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.commons;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import javax.imageio.ImageIO;
import org.imgscalr.Scalr;
import org.imgscalr.Scalr.Mode;

/**
 *
 * @author Winson Mac
 */
public class ImageUtils {

    public static void resizeAndTransferTo(InputStream inputImage, int newW, int newH, File file) throws IOException {
        BufferedImage img = ImageIO.read(inputImage);     
        Mode mode = (double) newW / (double) newH >= (double) img.getWidth() / (double) img.getHeight() ? Scalr.Mode.FIT_TO_WIDTH
                : Scalr.Mode.FIT_TO_HEIGHT;
        img = Scalr.resize(img, Scalr.Method.ULTRA_QUALITY, mode, newW, newH);
        int x = 0;
        int y = 0;
        if (mode == Scalr.Mode.FIT_TO_WIDTH) {
            y = (img.getHeight() - newH) / 2;
        } else if (mode == Scalr.Mode.FIT_TO_HEIGHT) {
            x = (img.getWidth() - newW) / 2;
        }
        img = Scalr.crop(img, x, y, newW, newH);
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        ImageIO.write(img, "gif", os);
        InputStream is = new ByteArrayInputStream(os.toByteArray());
        Files.copy(is, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
    }
}
