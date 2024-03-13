//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let date = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let day = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    var temp = 0
    for i in date[0...a-1] {
        temp += i
    }
    temp += b
    return day[temp % 7]
}
