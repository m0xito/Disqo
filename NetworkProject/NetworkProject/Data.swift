//
//  Data.swift
//  NetworkProject
//
//  Created by Movses Aghabekyan on 21.11.21.
//

import Foundation


struct Application: Decodable {
    let appName: String
    let appVersion: String
    let appVendor: String
    let backendAppName: String
    let backendAppVersion: String
    let backendAppVendor: String
    let backendDataFrom: String
}



