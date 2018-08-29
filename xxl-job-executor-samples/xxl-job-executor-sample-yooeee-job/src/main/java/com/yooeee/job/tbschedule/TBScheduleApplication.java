package com.yooeee.job.tbschedule;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import java.util.concurrent.CountDownLatch;

/***
 *
 *
 * Created by yzd on 2018/8/28 17:16.
 */

@SpringBootApplication
public class TBScheduleApplication {

    @Bean
    public CountDownLatch closeLatch() {
        return new CountDownLatch(1);
    }
    public static void main(String[] args) throws InterruptedException {
        ApplicationContext ctx = SpringApplication.run(TBScheduleApplication.class, args);
        CountDownLatch closeLatch = ctx.getBean(CountDownLatch.class);
        closeLatch.await();
    }

}

