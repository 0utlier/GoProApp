//
//  DAO.swift
//  GoPro
//
//  Created by JD Leonard on 8/26/17.
//  Copyright © 2017 JD Leonard. All rights reserved.
//

import UIKit

class DAO: NSObject {
    
    // MARK: - URL SESSION
    func makeURLSession() {
        let url = URL(string: "")
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            print(String(data: data!, encoding: String.Encoding.utf8))
        }
        
        task.resume()
    }
    
    func goProShutterOn() {
        let url = URL(string: "http://10.5.5.9/bacpac/SH?t=inbinary&p=%01")
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            print(String(data: data!, encoding: String.Encoding.utf8))
        }
        
        task.resume()
    }
    
    
    func goProPowerOff() {
        let url = URL(string: "http://10.5.5.9/bacpac/PW?t=inbinary&p=%00")
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            print(String(data: data!, encoding: String.Encoding.utf8))
        }
        
        task.resume()
    }
    
    
    
    // MARK: - POWER
    
    func powerOn(device:Int) {
//        var url:String
        switch device {
        case 0:
            //this is the call for GoPro ???
            print("device 0 is turned on")
            let url = URL(string: "http://10.5.5.9/bacpac/PW?t=inbinary&p=%01")
        case 1:
            //this is the call for GoPro ???
            print("device 1 is turned on")
        case 2:
            //this is the call for GoPro ???
            print("device 2 is turned on")
        default:
            print("not sure which device is turned on")
        }
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            print(String(data: data!, encoding: String.Encoding.utf8))
        
        
        task.resume()
        
        }
    }
    
    
    
    func powerOff(device:Int) {
        switch device {
        case 0:
            //this is the call for GoPro ???
            print("device 0 is turned off")
        case 1:
            //this is the call for GoPro ???
            print("device 1 is turned off")
        case 2:
            //this is the call for GoPro ???
            print("device 2 is turned off")
        default:
            print("not sure which device is turned off")
        }
    }
    
    
    // MARK: - SHUTTER
    
    func shutterPress(device:Int) {
        switch device {
        case 0:
            //this is the call for GoPro ???
            print("device 0 shutter pressed")
            goProShutterOn()
        case 1:
            //this is the call for GoPro ???
            print("device 1 shutter pressed")
        case 2:
            //this is the call for GoPro ???
            print("device 2 shutter pressed")
        default:
            print("not sure which device is selected for shutter")
        }
    }
    
    // MARK: - CAPTURE MODE
    
    func videoMode(device:Int) {
        print("change to video mode")
    }
    
    func photoMode(device:Int) {
        print("change to photo mode")
    }
    
    func timeLapseMode(device:Int) {
        print("change to time lapse mode")
    }
    
    
    func nightPhotoMode(device:Int) {
        print("change to night photo mode")
    }
    
    
    // MARK: - VIDEO QUALITIES
    
}
