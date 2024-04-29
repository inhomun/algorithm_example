//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var wait = truck_weights
    var bridge = Array(repeating:0, count: bridge_length)
    var time = 0
    var sum = 0
    while !bridge.isEmpty {
        sum -= bridge.removeFirst()
        time += 1
        
        if !wait.isEmpty {
            if sum + wait.first! <= weight {
                let truck = wait.removeFirst()
                bridge.append(truck)
                sum += truck
            }
            else {
                bridge.append(0)
            }
        }

    }
    return time
}
