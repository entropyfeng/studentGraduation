package com.university.graduation.service;

import org.springframework.stereotype.Service;


public interface ShortMessageService {
    String sendMessage(String phoneNumber);
    boolean checkMessage(String phoneNumber,String message);
}
