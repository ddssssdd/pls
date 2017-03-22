package com.ruifu.service.vendor;

import com.ruifu.repository.vendor.AsnDetailRepository;
import com.ruifu.repository.vendor.AsnRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/3/22.
 */
@Component
public class AsnService {
    @Autowired
    private AsnRepository asnRepository;
    @Autowired
    private AsnDetailRepository asnDetailRepository;

}
