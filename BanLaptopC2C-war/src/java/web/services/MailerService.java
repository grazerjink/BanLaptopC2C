package web.services;

import java.io.UnsupportedEncodingException;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class MailerService {

    @Autowired
    JavaMailSender mailSender;

    public void send(String to, String subject, String body) {
        try {
            /// Viet thu
            MimeMessage mail = mailSender.createMimeMessage();
            
            /// Nguoi giup viet thu
            MimeMessageHelper helper = new MimeMessageHelper(mail, true, "utf-8");
            helper.setFrom("hotro@v2qmall.com", "V2Q MALL Administrator");
            helper.setTo(to);
            helper.setSubject(subject);
            helper.setReplyTo("hotro@v2qmall.com");
            helper.setText(body, true); /// Could send with HTML format

            /// Bo thu vao buu dien va gui di
            mailSender.send(mail);
        } catch (UnsupportedEncodingException | MessagingException | MailException e) {
            throw new RuntimeException(e);
        }

    }
}
