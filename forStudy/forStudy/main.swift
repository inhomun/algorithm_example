//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer = ""
    let pos = [1: [0, 0], 2: [0, 1], 3: [0, 2],
               4: [1, 0], 5: [1, 1], 6: [1, 2],
               7: [2, 0], 8: [2, 1], 9: [2, 2],
               0: [3, 1]]
    var lPos = [3, 0], rPos = [3, 2]
    func getDistance(_ PosA: [Int],_ PosB: [Int]) -> Int {
        return abs(PosA[0] - PosB[0]) + abs(PosA[1] - PosB[1])
    }
    for i in numbers {
        if i == 1 || i == 4 || i == 7 {
            answer += "L"
            lPos = pos[i]!
        }
        else if i == 3 || i == 6 || i == 9 {
            answer += "R"
            rPos = pos[i]!
        }
        else {
            let lDist = getDistance(lPos, pos[i]!)
            let rDist = getDistance(rPos, pos[i]!)
            if lDist < rDist {
                answer += "L"
                lPos = pos[i]!
            }
            else if rDist < lDist {
                answer += "R"
                rPos = pos[i]!
            }
            else {
                if hand == "right" {
                    answer += "R"
                    rPos = pos[i]!
                }
                else {
                    answer += "L"
                    lPos = pos[i]!
                }
            }
        }
    }
    return answer
}
