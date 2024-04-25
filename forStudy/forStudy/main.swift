//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ record:[String]) -> [String] {
    var name = [String: String]()
    var arr = [[String]]()
    var result = [String]()
    var a = record.map{ $0.split(separator: " ") }
    for i in a {
        arr.append([String(i[0]),String(i[1])])
        if i[0] != "Leave" {
            name.updateValue(String(i[2]), forKey: String(i[1]))
        }
    }
    for i in arr {
        if i[0] == "Enter" {
            result.append("\(name[i[1]]!)님이 들어왔습니다.")
        }
        else if i[0] == "Leave" {
            result.append("\(name[i[1]]!)님이 나갔습니다.")
        }
    }
    return result
}
