package com.ruifu.repository.event;

import com.ruifu.model.event.Event;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Administrator on 2017/3/16.
 */
public interface EventRepository extends CrudRepository<Event,Integer> {
}
