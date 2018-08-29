package com.yooeee.job.tbschedule.qjlianlian.job;

import com.yooeee.job.tbschedule.config._BaseJob;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/***
 *
 *
 * Created by yzd on 2018/8/28 17:48.
 */
@Slf4j
@Component
public class QJLianlianJob extends _BaseJob {
    public boolean clearOvertimeOrder(){
        logInfo(log,"invoking clearOvertimeOrder()");
        logInfo(log,"演示每10秒执行一次");
        return true;
    }
    public boolean processInvestProjectOnLineStatus(){
        logInfo(log,"invoking processInvestProjectOnLineStatus()");
        return true;
    }
}
