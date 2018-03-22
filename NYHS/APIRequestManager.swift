//
//  APIRequestManager.swift
//  NYHS
//
//  Created by Thinley Dorjee on 2/4/18.
//  Copyright © 2018 thinleydeveloper.com. All rights reserved.
//

import Foundation

class APIRequestManager {
    
    static let manager = APIRequestManager()
    private init() {}
    
    func getData(endPoint: String, callback: @escaping (Data?) -> Void) {
        guard let myURL = URL(string: endPoint) else { return }
        let session = URLSession(configuration: URLSessionConfiguration.default)
        session.dataTask(with: myURL) { (data: Data?, response: URLResponse?, error: Error?) in
            if error != nil {
                print("Error durring session: \(String(describing: error))")
            }
            guard let validData = data else { return }
            callback(validData)
            }.resume()
    }
}
