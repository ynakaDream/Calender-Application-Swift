//
//  DateItems.swift
//  HeartManager
//
//  Created by 中西康之 on 2019/05/12.
//  Copyright © 2019 中西康之. All rights reserved.
//

import Foundation

enum DateItems {
    
    enum ThisMonth {
        struct Request {
            
            var year: Int
            var month: Int
            var day: Int
            
            init() {
                let calendar = Calendar(identifier: .gregorian)
                let date = calendar.dateComponents([.year, .month, .day], from: Date())
                year = date.year!
                month = date.month!
                day = date.day!
            }
        }
    }
    
    enum MoveMonth {
        struct Request {
            
            var year: Int
            var month: Int
            
            init(_ monthCounter: Int) {
                let calendar = Calendar(identifier: .gregorian)
                let date = calendar.date(byAdding: .month, value: monthCounter, to: Date())
                let newDate = calendar.dateComponents([.year, .month], from: date!)
                year = newDate.year!
                month = newDate.month!
            }
        }
    }
    
}
