//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var tmp = [String]()
    var answer = 0
    if cacheSize == 0 {
        return cities.count * 5
    }
    for i in cities {
        var a = i.lowercased()
        if !tmp.contains(a) {
            if tmp.count == cacheSize {
                tmp.removeFirst()
            }
            tmp.append(a)
            answer += 5
        }
        else if tmp.contains(a) {
            tmp.remove(at: tmp.firstIndex(of: a)!)
            tmp.append(a)
            answer += 1
        }
    }
    return answer
}
