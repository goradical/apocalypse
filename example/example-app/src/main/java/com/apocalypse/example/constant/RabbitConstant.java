package com.apocalypse.example.constant;

/**
 * @author <a href="kaihuijing@gmail.com">jingkaihui</a>
 * @Description
 * @date 2019/6/10
 */
public class RabbitConstant {

    /**
     * 用来测试RabbitMQ事务的队列
     */
    public static final String QUEUE_TRANSACTIONAL = "transactional";

    /**
     * 用来测试RabbitMQ生产者确认
     */
    public static final String QUEUE_PRODUCER_CONFIRM = "producer_confirm";

    public static final String QUEUE_ONE_TO_ONE = "one_to_one";

    public static final String QUEUE_ONE_TO_MANY = "one_to_many";

    public static final String QUEUE_MANY_TO_MANY = "many_to_many";

    /**
     * 模拟下单后，发送扣减库存消息，增加会员积分消息
     */
    public static final String FANOUT_EXCHANGE_ORDER = "order";

    /**
     * 库存队列
     */
    public static final String QUEUE_STOCK = "stock";

    /**
     * 积分队列
     */
    public static final String QUEUE_POINT = "point";

    /**
     * 模拟报警，对不同级别日志进行分发
     */
    public static final String TOPIC_EXCHANGE_LOG = "log";

    /**
     * WARN 消息
     */
    public static final String QUEUE_LOG_WARN = "log_warn";

    /**
     * WARN 消息绑定的路由key
     */
    public static final String ROUTING_KEY_LOG_WARN = "log.#";

    /**
     * ERROR 消息
     */
    public static final String QUEUE_LOG_ERROR = "log_error";

    /**
     * ERROR 消息绑定的路由key
     */
    public static final String ROUTING_KEY_LOG_ERROR = "log.error";

    /**
     * 发送到该队列的message会在一段时间后过期进入到delay_process_queue
     * 每个message可以控制自己的失效时间
     */
    public static final String DELAY_QUEUE_PER_MESSAGE_TTL_NAME = "delay_queue_per_message_ttl";

    /**
     * 发送到该队列的message会在一段时间后过期进入到delay_process_queue
     * 队列里所有的message都有统一的失效时间
     */
    public static final String DELAY_QUEUE_PER_QUEUE_TTL_NAME = "delay_queue_per_queue_ttl";
    public static final int QUEUE_EXPIRATION = 4000;

    /**
     * message失效后进入的队列，也就是实际的消费队列
     */
    public static final String DELAY_PROCESS_QUEUE_NAME = "delay_process_queue";

    /**
     * 实际消费队列的exchange
     */
    public static final String DELAY_EXCHANGE_NAME = "delay_exchange";

    /**
     * 路由到delay_queue_per_queue_ttl（统一失效时间的队列）的exchange（用于队列延迟重试）
     */
    public static final String PER_QUEUE_TTL_EXCHANGE_NAME = "per_queue_ttl_exchange";
}
