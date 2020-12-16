//
//  GameInfo.swift
//  CheapSharkAPI
//
//  Created by Jamario Davis on 12/15/20.
//

import Foundation

struct GameInfo: Decodable {
    let title: String
    let normalPrice: String
    let salePrice: String
    let metacriticScore: String
    let thumb: String 
}
