//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ files:[String]) -> [String] {
    if files.isEmpty {
        return []
    }
    var list = [(index: Int, name: String, num: String)]()
    for (idx, file) in files.enumerated() {
        var name = file
        var tmp = ""
        var num = ""
        while !name.isEmpty {
            while !name.isEmpty && !name.first!.isNumber {
                let a = name.removeFirst()
                tmp += String(a)
            }
            while !name.isEmpty && name.first!.isNumber {
                let a = name.removeFirst()
                num += String(a)
            }
            list.append((idx, tmp, num))
            break
        }
    }
    let sortedList = list.sorted {
        if $0.name.lowercased() == $1.name.lowercased() {
            return $0.num < $1.num
        }
        return $0.name.lowercased() < $1.name.lowercased()
    }
    var answer = [String]()
    for item in sortedList {
        answer.append(files[item.index])
    }
    return answer
}
