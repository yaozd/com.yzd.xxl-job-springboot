package com.yooeee.job.tbschedule.config;

import com.xxl.job.core.log.XxlJobLogger;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;

/***
 *
 *
 * Created by yzd on 2018/8/29 13:31.
 */
public class _BaseJob {
    /***
     * 将日志同时打到slf4j的logger与XxlJobLogger中
     * @param log
     * @param msg
     */
    public void logInfo(Logger log, String msg){
        log.info(msg);
        XxlJobLogger.log(msg);
    }

    /***
     * 将日志同时打到slf4j的logger与XxlJobLogger中
     * @param log
     * @param msg
     */
    public void logError(Logger log,String msg){
        log.error(msg);
        XxlJobLogger.log(msg);
    }
}
