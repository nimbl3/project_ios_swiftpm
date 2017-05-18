import Foundation
import Alamofire
import ObjectMapper

Alamofire.request("https://api-staging.redplanethotels.com/v1/en/location/?include_hotel=1").responseJSON(queue: nil, options: JSONSerialization.ReadingOptions(rawValue: 0)) { response in
    if response.result.isSuccess ,let response = response.result.value as? [String: Any] {
        print(response)
    }
}
