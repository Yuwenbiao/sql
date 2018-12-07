-- 正在热拍：首页显示3个商品，筛选规则为当前竞拍次数最多的商品，竞拍次数相同时优先显示竞拍剩余时间较短的，竞拍剩余时间相同则随机显示，且显示的商品必须为不同属性/面值的商品（商品券模板ID不同），刷新时间为每5分钟刷新一次，点击更多进入正在热拍界面：按照筛选规则显示所有商品；
-- 新品推荐：首页显示3个商品，筛选规则为当前最新上架的商品，不同属性/面值的商品仅显示一个（商品券模板ID不同），属性/面值相同则优先显示竞拍价较低的，竞拍价相同则显示一口价较低的，竞拍价和一口价均相同则随机显示，刷新时间为每5分钟刷新一次，点击更多进入新品推荐界面：按照筛选规则显示所有商品
SELECT
    *
FROM
    (
        SELECT
        tb.ticket_pic_url,
        TIMESTAMPDIFF(MICROSECOND,now(),a.finish_time)/1000 AS bid_time_left,
        a.current_price,
        a.start_price,
        a.id AS auction_id,
        a.seller_mobile AS seller,
        tb.template_id
    FROM
        auction_commodity a,
        template_base tb,
        ticket t
    WHERE
        a.ticket_number = t.ticket_number
        AND tb.template_id = t.template_id
        AND STATUS = 1
        and a.finish_time > now()
    ORDER BY
            -- a.bid_count DESC,
            -- bid_time_left
        a.start_time desc,
        a.current_price,
        a.fixed_price
        ) temp
GROUP BY
        template_id