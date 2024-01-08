//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    func fact (_ num : Int ) -> Int {
        if num == 0 {
            return 0
        }
        else {
        return num * price + fact(num-1)
        }
    }
    let num = fact(count)
    if num > money {
        return Int64(num - money)
    }
    else {
        return 0
    }
}
