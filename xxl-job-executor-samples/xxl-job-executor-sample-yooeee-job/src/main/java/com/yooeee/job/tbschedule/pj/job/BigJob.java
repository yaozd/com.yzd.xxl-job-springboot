package com.yooeee.job.tbschedule.pj.job;

import com.xxl.job.core.log.XxlJobLogger;
import com.yooeee.job.tbschedule.config._BaseJob;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/***
 *
 *
 * Created by yzd on 2018/8/28 17:55.
 */
@Slf4j
@Component
public class BigJob extends _BaseJob {

    public boolean cancelOrder(){
        //return true;
        throw new IllegalStateException("演示模拟程序异常了！");
    }

    public void cancelGoodsOrder(){
        //打点信息：
        logInfo(log,"step-01:invoking cancelGoodsOrder");
        logInfo(log,"step-02:query db");
        logInfo(log,"step-03:ok");
    }
}
