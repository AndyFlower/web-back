package com.slp.cache.redis;

/**
 * redis key常量类
 * @author huatingzhou
 *
 */
public class RedisKeyConstants {
	/**
	 * redis 防重复提交锁前缀
	 */
	public static final String REDIS_LOCK = "vpay:redis:lock:";
	/**
	 * 家乐福秒杀活动库存
	 */
	public static final String SECKILL_STOCK_KEYNAME = "vpay:seckill:{issuerId}:stock:";
	/**
	 * 家乐福秒杀活动抢得名额在redis增加记录，用于限制一个用户只能抢购一次，以下是数据的key的前缀
	 */
	public static final String SECKILLED_KEYNAME = "vpay:seckill:{issuerId}:custseq:";
	/**
	 * 家乐福秒杀活动抢得名额在redis增加记录，用于限制一个ip地址只能抢购一次，以下是数据的key的前缀
	 */
	public static final String SECKILLED_IP_KEYNAME = "vpay:seckill:{issuerId}:ip:";
	/**
	 * 家乐福福秒杀活动抢得名额，在redis中增加用户和ip的记录，SECKILL_IP_CUSTSEQ_KEYNAME用于关联用户和ip
	 */
	public static final String SECKILL_IP_CUSTSEQ_KEYNAME = "vpay:seckill:{issuerId}:ip:custseq:";
	/**
	 * 家乐福电子码团购文件读取并发锁
	 */
	public static final String C4P_BATCH_FLYTICKET_LOCK = "vpay:flyticket:lock:c000:";
	/**
	 * 礼品卡套餐团购订单利息卡信息推送防重复key
	 */
	public static final String INTEREST_GROUP_PUSH_KEYNAME = "vpay:interest:irt:{orderId}";
	/**
	 * 礼品卡套餐团购订单团购订单防重复key
	 */
	public static final String INTEREST_GROUP_PROCESS_KEYNAME = "vpay:interest:cpt:{orderId}";
	/**
	 * vpay系统日切日期的缓存的key
	 */
	public static final String SYSTEM_SETTLE_DATE = "vpay:system:settleDate:";
}
