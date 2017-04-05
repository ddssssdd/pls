package com.ruifu.controller.base;

import com.ruifu.model.base.Address;
import com.ruifu.model.base.Department;
import com.ruifu.repository.base.AddressRepository;
import com.ruifu.repository.base.DepartmentRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2017/4/5.
 */
@RestController
@RequestMapping("/base/settings")
public class SettingsController {
    @Autowired
    private AddressRepository addressRepository;
    @RequestMapping("/address/list")
    public Iterable<Address> listAddress(){
        return addressRepository.findAll();
    }
    @RequestMapping("/address/add")
    public Iterable<Address> addAddress(Address item){
        addressRepository.save(item);
        return listAddress();
    }
    @RequestMapping("/address/remove/{item_id}")
    public Iterable<Address> removeAddress(@PathVariable long item_id){
        addressRepository.delete(item_id);
        return listAddress();
    }
    @Autowired
    DepartmentRespository departmentRespository;
    @RequestMapping("/department/list")
    public Iterable<Department> listDepartment(){
        return departmentRespository.findAll();
    }
    @RequestMapping("/department/add")
    public Iterable<Department> addDepartment(Department item){
        departmentRespository.save(item);
        return listDepartment();
    }
    @RequestMapping("/department/remove/{item_id}")
    public Iterable<Department> removeDepartment(@PathVariable long item_id){
        departmentRespository.delete(item_id);
        return listDepartment();
    }

}
