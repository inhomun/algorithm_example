//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ msg:String) -> [Int] {
    var arr = Array(msg)
    var tmp = String(arr.removeFirst())
    var num = 0
    var value = 27
    var answer = [Int]()
    var dict : [String:Int] = ["A":1,"B":2,"C":3,"D":4,"E":5,"F":6,"G":7,"H":8,"I":9,"J":10,"K":11,"L":12,"M":13,"N":14,"O":15,"P":16,"Q":17,"R":18,"S":19,"T":20,"U":21,"V":22,"W":23,"X":24,"Y":25,"Z":26]
    while !arr.isEmpty {
        let a = arr.removeFirst()
        guard let nums = dict[tmp+String(a)] else {
            dict[tmp+String(a)] = value
            value += 1
            answer.append(dict[tmp]!)
            tmp = String(a)
            continue
        }
        tmp += String(a)
    }
    answer.append(dict[tmp]!)
    return answer
}
