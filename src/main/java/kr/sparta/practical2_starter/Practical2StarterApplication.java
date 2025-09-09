package kr.sparta.practical2_starter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;


@ServletComponentScan
@SpringBootApplication
public class Practical2StarterApplication {

    public static void main(String[] args) {
        SpringApplication.run(Practical2StarterApplication.class, args);
    }

}
