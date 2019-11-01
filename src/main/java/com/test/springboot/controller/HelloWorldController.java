package com.test.springboot.controller;

import com.fasterxml.jackson.databind.util.JSONPObject;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.net.InetAddress;
import java.net.UnknownHostException;


@RestController
public class HelloWorldController {
   @RequestMapping("/")
   public String sayHello() {
      return "Hello Spring Boot!!";
   }

   @GetMapping(path = "/ping", produces=MediaType.APPLICATION_JSON_VALUE)
   public Map<String, String> ping() {
      HashMap<String, String> map = new HashMap<>();
      try {
         InetAddress ip = InetAddress.getLocalHost();
         String hostname = ip.getHostName();
         map.put("hostname", hostname);
         map.put("ipaddress", ip.toString());
      }catch (Exception ex){
         ex.printStackTrace();
      }
      return map;
   }
}
