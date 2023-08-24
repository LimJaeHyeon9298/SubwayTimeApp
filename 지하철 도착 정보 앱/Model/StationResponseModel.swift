//
//  StationResponseModel.swift
//  지하철 도착 정보 앱
//
//  Created by 임재현 on 2023/08/24.
//

import Foundation

struct StationResponseModel: Decodable {
    var stations: [Station] { searchInfo.row }

    private let searchInfo: SearchInfoBySubwayNameServiceModel

    enum CodingKeys: String, CodingKey {
        case searchInfo = "SearchInfoBySubwayNameService"
    }

    struct SearchInfoBySubwayNameServiceModel: Decodable {
        var row: [Station] = []
    }
}

struct Station: Decodable {
    let stationName: String
    let lineNumber: String

    enum CodingKeys: String, CodingKey {
        case stationName = "STATION_NM"
        case lineNumber = "LINE_NUM"
    }
}

