//
//  NetworkResult.swift
//  ServerPractice
//
//  Created by 이정엽 on 2020/11/22.
//

import Foundation
enum NetworkResult<T>{
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
    
}
