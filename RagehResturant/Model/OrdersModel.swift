//
//  OrderModel.swift
//  RagehResturant
//
//  Created by Ahmed on 3/1/20.
//  Copyright © 2020 AhmedDev. All rights reserved.
//

import Foundation

// MARK: - OrderModel
struct OrderModel: Codable {
    let status, error: String?
    let data: [OrderDatum]?
}

// MARK: - Datum
struct OrderDatum: Codable {
    let pID: Int?
    let pPrice: String?

    enum CodingKeys: String, CodingKey {
        case pID = "p_id"
        case pPrice = "p_price"
    }
}
