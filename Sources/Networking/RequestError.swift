//
//  Created by Jakub Turek on 11.05.2017.
//  Copyright © 2017 EL Passion. All rights reserved.
//

import Foundation

enum RequestError: Error {

    case deserializationError(reason: String)
    case apiError(statusCode: Int)
    case deallocatedClientError
    case throttling

}
