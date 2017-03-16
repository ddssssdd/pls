package com.ruifu.controller.event;

import com.ruifu.model.event.Event;
import com.ruifu.model.event.EventDetail;
import com.ruifu.repository.event.EventDetailRepository;
import com.ruifu.repository.event.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Administrator on 2017/3/16.
 */
@RestController
@RequestMapping("/event")
public class EventController {
    @Autowired
    private EventRepository eventRepository;
    @Autowired
    private EventDetailRepository eventDetailRepository;

    @RequestMapping("/list")
    public Iterable<Event> list(){
        return eventRepository.findAll();
    }
    @RequestMapping("/details/{event_id}")
    public Iterable<EventDetail> details(@PathVariable int event_id){
        return eventDetailRepository.findAllByEventId(event_id);
    }
    @PostMapping("/add")
    public Iterable<Event> addEvent(Event event){
        eventRepository.save(event);
        return eventRepository.findAll();
    }
    @PostMapping("/addDetail")
    public Iterable<EventDetail> addEventDetail(EventDetail detail){
        eventDetailRepository.save(detail);
        return eventDetailRepository.findAllByEventId(detail.getEventId());
    }
}
