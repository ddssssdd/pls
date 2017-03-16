package com.ruifu.repository.event;

import com.ruifu.model.event.EventDetail;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Administrator on 2017/3/16.
 */
public interface EventDetailRepository extends CrudRepository<EventDetail,Integer> {
    Iterable<EventDetail> findAllByEventId(int eventId);
}
