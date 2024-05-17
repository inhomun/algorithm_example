//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ str1:String, _ str2:String) -> Int {
    var tmp1 = ""
    var tmp2 = ""
    var arr1 = [String:Int]()
    var arr2 = [String:Int]()
    var arr = [String]()
    for (x,i) in str1.enumerated() {
        tmp1 += String(i.uppercased())
        if tmp1.count == 2 {
            if tmp1.first!.isLetter && tmp1.last!.isLetter {
                arr1[tmp1, default:0] += 1
                arr.append(tmp1)
            }
            tmp1.removeFirst()
        }
    }
    for (y,i) in str2.enumerated() {
        tmp2 += String(i.uppercased())
        if tmp2.count == 2 {
            if tmp2.first!.isLetter && tmp2.last!.isLetter {
                arr2[tmp2, default:0] += 1
                arr.append(tmp2)
            }
            tmp2.removeFirst()
        }
    }
    var inter = 0
    var union = 0
    if arr.isEmpty {
        return 65536
    }
    for i in Array(Set(arr)) {
        union += max(arr1[i, default: 0], arr2[i, default: 0])
        inter += min(arr1[i, default: 0], arr2[i, default: 0])
    }
    return Int(Double(inter) / Double(union) * 65536)
}
