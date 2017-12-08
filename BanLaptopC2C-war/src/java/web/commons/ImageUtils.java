/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.commons;

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
        img = Scalr.resize(img, Scalr.Method.ULTRA_QUALITY, Mode.FIT_EXACT, newW, newH);
        ImageIO.write(img, "png", file);
    }
}
