//
/*
 * Copyright © 2017 Teclib. All rights reserved.
 *
 * Routers.swift is part of Glpi
 *
 * Glpi is a subproject of Flyve MDM. Flyve MDM is a mobile
 * device management software.
 *
 * Glpi is Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ------------------------------------------------------------------------------
 * @author    Hector Rondon
 * @date      18/10/17
 * @copyright Copyright © 2017 Teclib. All rights reserved.
 * @license   Apache License, Version 2.0 https://www.apache.org/licenses/LICENSE-2.0
 * @link      https://github.com/flyve-mdm/[name]
 * @link      https://flyve-mdm.com
 * ------------------------------------------------------------------------------
 */
 

import Foundation
import Alamofire

/// Enumerate endpoints methods
public enum Routers: URLRequestConvertible {
    
    ///  GET /initSession
    case initSession(String)
    
    /// get HTTP Method
    var method: Alamofire.HTTPMethod {
        switch self {
        case .initSession:
            return .get
        }
    }
    
    /// build up and return the URL for each endpoint
    var path: String {
        
        switch self {
        case .initSession(_ ) :
            return "/initSession"
        }
    }
    
    /// build up and return the query for each endpoint
    var query: String {
        
        switch self {
        case .initSession(_ ) :
           return  ""
        }
    }
    
    /// build up and return the header for each endpoint
    var header: [String: String] {
        
        switch self {
        case .initSession(let userToken) :
            
            var dictHeader = [String: String]()
            dictHeader["Content-Type"] = "application/json"
            dictHeader["Authorization"] = "user_token \(userToken)"
            
            return dictHeader
        }
    }
    
    /**
     Returns a URL request or throws if an `Error` was encountered
     
     - throws: An `Error` if the underlying `URLRequest` is `nil`.
     - returns: A URL request.
     */
    public func asURLRequest() throws -> URLRequest {

        let url = URL(string: "https://dev.flyve.org/glpi/apirest.php")!
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        urlRequest.httpMethod = method.rawValue
        
        for (key, value) in header {
            urlRequest.setValue(value, forHTTPHeaderField: key)
        }
        
        return urlRequest
    }
}
