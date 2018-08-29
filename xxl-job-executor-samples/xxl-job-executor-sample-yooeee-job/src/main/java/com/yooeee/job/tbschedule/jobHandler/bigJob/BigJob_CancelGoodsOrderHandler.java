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
 * Created by yzd on 2018/8/28 18:01.
 */
@JobHandler(value="BigJob_CancelGoodsOrderHandler")
@Component
public class BigJob_CancelGoodsOrderHandler extends IJobHandler {
    @Autowired
    BigJob bigJob;
    public ReturnT<String> execute(String s) throws Exception {
        //实现开发中 XxlJobLogger.log("execute BigJob_CancelGoodsOrderHandler()");可以不添加。
        //把具体的打点信息放在job中：都写在bigJob.cancelGoodsOrder();中
        //XxlJobLogger.log("execute BigJob_CancelGoodsOrderHandler()");
        bigJob.cancelGoodsOrder();
        return SUCCESS;
    }
}
