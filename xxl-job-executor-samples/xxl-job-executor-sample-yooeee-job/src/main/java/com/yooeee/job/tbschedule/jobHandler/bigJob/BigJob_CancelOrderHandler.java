package com.yooeee.job.tbschedule.jobHandler.bigJob;

import com.xxl.job.core.biz.model.ReturnT;
import com.xxl.job.core.handler.IJobHandler;
import com.xxl.job.core.handler.annotation.JobHandler;
import com.xxl.job.core.log.XxlJobLogger;
import com.yooeee.job.tbschedule.pj.job.BigJob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/***
 *
 *
 * Created by yzd on 2018/8/28 18:02.
 */
@JobHandler(value="BigJob_CancelOrderHandler")
@Component
public class BigJob_CancelOrderHandler extends IJobHandler {
    @Autowired
    BigJob bigJob;
    public ReturnT<String> execute(String s) throws Exception {
        //把具体的打点信息放在job中
        //XxlJobLogger.log("execute BigJob_CancelOrderHandler()");
        bigJob.cancelOrder();
        return SUCCESS;
    }
}
