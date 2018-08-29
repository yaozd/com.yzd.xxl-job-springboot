package com.yooeee.job.tbschedule.jobHandler.qjlianlianJob;

import com.xxl.job.core.biz.model.ReturnT;
import com.xxl.job.core.handler.IJobHandler;
import com.xxl.job.core.handler.annotation.JobHandler;
import com.xxl.job.core.log.XxlJobLogger;
import com.yooeee.job.tbschedule.qjlianlian.job.QJLianlianJob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/***
 *
 *
 * Created by yzd on 2018/8/28 18:03.
 */
@JobHandler(value="QJLianlianJob_ProcessInvestProjectOnLineStatusHandler")
@Component
public class QJLianlianJob_ProcessInvestProjectOnLineStatusHandler extends IJobHandler {
    @Autowired
    QJLianlianJob qjLianlianJob;
    public ReturnT<String> execute(String s) throws Exception {
        //把具体的打点信息放在job中
        //XxlJobLogger.log("execute QJLianlianJob_ClearOvertimeOrderHandler");
        qjLianlianJob.processInvestProjectOnLineStatus();
        return SUCCESS;
    }
}
