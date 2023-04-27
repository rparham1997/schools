
import Foundation

class NetworkManager {
    
    var urlString = "https://data.cityofnewyork.us/resource/s3k6-pzi2.json"
    
    func createUrl(from url: String) -> URL? {
        return URL(string: url)
    }
    
    func createRequest(with url: URL) -> URLRequest {
        
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        return request
    }
    
    func callService(completionHandler: @escaping (Data?) -> Void) {
        guard let url = createUrl(from: urlString) else {
            print("Failed to create a url object.")
            completionHandler(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: createRequest(with: url)) { ( data, _, error) in
            guard error == nil else {
                print("There was an error.")
                completionHandler(nil)
                return
            }
            
            guard let data = data else {
                print("There was no data returned.")
                completionHandler(nil)
                return
            }
            completionHandler(data)
        }
        
        task.resume()
    }
    
    
}
