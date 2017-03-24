package com.ruifu.controller.base;

import com.ruifu.model.base.Vendor;
import com.ruifu.model.base.VendorContact;
import com.ruifu.model.security.User;
import com.ruifu.repository.base.VendorRepository;
import com.ruifu.repository.security.UserRepository;
import com.ruifu.repository.vendor.VendorContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2017/3/17.
 */
@RestController
@RequestMapping("/base/vendor")
public class VendorController {
    @Autowired
    VendorRepository vendorRepository;

    @Autowired
    VendorContactRepository vendorContactRepository;
    @Autowired
    UserRepository userRepository;

    @RequestMapping("/list")
    public Iterable<Vendor> list()
    {
        return vendorRepository.findAll();
    }

    @RequestMapping("/add")
    public Iterable<Vendor> add(Vendor vendor){
        vendorRepository.save(vendor);
        return vendorRepository.findAll();
    }
    @RequestMapping("/remove/{vendor_id}")
    public Iterable<Vendor> remove(@PathVariable Long vendor_id){
        Vendor vendor = vendorRepository.findOne(vendor_id);
        vendorRepository.delete(vendor);
        return vendorRepository.findAll();
    }

    @RequestMapping("/contacts/{vendor_id}")
    public Iterable<VendorContact> contacts(@PathVariable long vendor_id)
    {
        return vendorContactRepository.findByVendorId(vendor_id);
    }
    @RequestMapping("/contact/add")
    public Iterable<VendorContact> contact_add(VendorContact contact){
        //todo: verify user rules
        User user = new User();
        user.setUsername(contact.getCellphone());
        user.setPassword(contact.getCellphone());
        userRepository.save(user);
        contact.setUserId(user.getId());
        vendorContactRepository.save(contact);

        return contacts(contact.getVendor().getId());
    }
    @RequestMapping("/contact/remove/{contact_id}")
    public Iterable<VendorContact> contact_remove(@PathVariable Long contact_id){

        VendorContact contact = vendorContactRepository.findOne(contact_id);
        if (contact.getUserId()>0){
            long user_id = contact.getUserId();
            int u_id = Integer.parseInt(String.valueOf(user_id));
            User user = userRepository.findOne(u_id);
            if (user!=null){
                userRepository.delete(u_id);
            }
        }
        vendorContactRepository.delete(contact);
        return contacts(contact.getVendor().getId());
    }
    //todo: test

}
