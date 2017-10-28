//
//  GoProH4.swift
//  GoPro
//
//  Created by JD Leonard on 9/4/17.
//  Copyright © 2017 JD Leonard. All rights reserved.
//

import UIKit

class GoProH4: NSObject {
    
/*
This is for listing the calls for the GoPro Hero 4
*/
    
}

// MARK: - POWER

func powerOn(/*unsure*/) {
    let url = URL(string: "http://10.5.5.9/bacpac/PW?t=inbinary&p=%00")
    let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
        print(String(data: data!, encoding: String.Encoding.utf8))
    }
    
    task.resume()
    
    
}

func testExample() {
    print("test")
}

// MARK: - RESOLUTION
// MARK: - FRAME RATE
// MARK: - FOV
