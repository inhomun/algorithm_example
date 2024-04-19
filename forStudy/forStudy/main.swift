//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var score = [Character: Int]()
    var answer = ""
    for i in 0..<survey.count {
        let a = Array(survey[i])
        if choices[i] > 4 {
            score[a[1], default:0] += choices[i] - 4
        }
        else {
            score[a[0], default:0] += abs(choices[i] - 4)
        }
    }
    score["R", default:0] >= score["T", default:0] ? answer.append("R") : answer.append("T")
    score["C", default:0] >= score["F", default:0] ? answer.append("C") : answer.append("F")
    score["J", default:0] >= score["M", default:0] ? answer.append("J") : answer.append("M")
    score["A", default:0] >= score["N", default:0] ? answer.append("A") : answer.append("N")

    return answer
}
