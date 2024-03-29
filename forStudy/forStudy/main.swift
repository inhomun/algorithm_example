//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id.lowercased()
    let possible = "1234567890abcdefghijklmnopqrstuvwxyz-_."
    var newId = ""
    for i in id {
        if possible.contains(i) {
            newId += "\(i)"
        }
    }
    while newId.contains("..") {
        newId = newId.replacingOccurrences(of: "..", with: ".")
    }
    var charArr: [Character] = []
    charArr = Array(newId)
    if charArr[0] == "." {
        charArr.remove(at: 0)
    }
    if charArr.count == 0 {
        charArr.append("a")
    }
    while charArr.count >= 16 {
        charArr.remove(at: charArr.count-1)
    }
    if charArr[charArr.count-1] == "." {
        charArr.remove(at: charArr.count-1)
    }
    while charArr.count <= 2 {
        charArr.append(charArr[charArr.count-1])
    }
    return String(charArr)
}
