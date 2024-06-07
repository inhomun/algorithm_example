//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    var a1 = [[Int]]()
    for i in banned_id {
        let name = Array(i)
        var answer = [Int]()
        for j in 0..<user_id.count {
            if i.count == user_id[j].count {
                let name2 = Array(user_id[j])
                var cnt = 0
                for k in 0..<user_id[j].count {
                    if name[k] == name2[k] {
                        cnt += 1
                    }
                    else if name[k] == "*" {
                        cnt += 1
                    }
                    else {
                        break
                    }
                    if cnt == user_id[j].count {
                        answer.append(j)
                    }
                }
            }
        }
        a1.append(answer)
    }
    var sol = [[Int]]()
    func dfs(_ arr: [Int],_ step: Int) {

        if step == a1.count {
            let solArr = arr.sorted(by: <)
            sol.append(solArr)
            return
        }
        for i in 0..<a1[step].count {
            if arr.contains(a1[step][i]) {
                continue
            }
            else {
                dfs(arr + [a1[step][i]], step + 1)
            }
        }
        return
    }
    dfs([], 0)
    return Set(sol).count
}
