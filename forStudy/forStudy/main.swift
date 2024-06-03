//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    for i in operations {
        let arr = i.components(separatedBy: " ")
        if arr[0] == "I" {
            if queue.isEmpty {
                queue.append(Int(arr[1])!)
            }
            else {
                if queue.last! <= Int(arr[1])! {
                    queue.append(Int(arr[1])!)
                }
                else {
                    for i in 0..<queue.count {
                        if queue[i] >= Int(arr[1])! {
                            queue.insert(Int(arr[1])!, at: i)
                            break
                        }
                    }
                }
            }
        }
        else {
            if queue.isEmpty {
                continue
            }
            else {
                if arr[1] == "-1" {
                    queue.removeFirst()
                }
                else {
                    queue.popLast()
                    }
            }
        }
    }
    if queue.isEmpty {
        return [0,0]
    }
    else {
        return [queue[queue.count-1], queue[0]]
    }
}
