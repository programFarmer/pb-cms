package com.puboot.module.admin.service;

import com.puboot.SpringbootApplicationTests;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created with IntelliJ IDEA.
 *
 * @author: linzhaoguan
 * @date: 2019/9/11 1:56 下午
 * @description:
 */
public class UserServiceTest extends SpringbootApplicationTests {

    @Autowired
    private UserService userService;

    @Before
    public void setUp() throws Exception {

    }

    @Test
    public void selectByUsername() {
        System.out.println(userService.selectByUsername("admin"));
    }

    @Test
    public void register() {
    }

    @Test
    public void updateLastLoginTime() {
    }

    @Test
    public void selectUsers() {
    }

    @Test
    public void selectByUserId() {
    }

    @Test
    public void updateByUserId() {
    }

    @Test
    public void updateStatusBatch() {
    }

    @Test
    public void addAssignRole() {
    }

    @Test
    public void updateUserByPrimaryKey() {
    }

    @Test
    public void selectOnlineUsers() {
    }

    @Test
    public void kickout() {
    }
}
