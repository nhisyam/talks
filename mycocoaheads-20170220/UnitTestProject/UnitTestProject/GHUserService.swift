import Foundation

struct GHUserService {
    let endpoint: String
    init(_ endpoint: String) {
        self.endpoint = endpoint
    }

    func parseJSON(_ data: Data) -> Any? {
        do {
            return try JSONSerialization.jsonObject(with: data, options: .allowFragments)
        } catch {
            print("Invalid data")
        }

        return nil
    }

    func perform(_ completion: @escaping (GHUser?) -> Void) {
        guard let url = URL(string: endpoint) else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, let json = self.parseJSON(data) else { return }
            let user = GHUser(with: json)
            completion(user)
        }
        task.resume()
    }

}















/*
struct GHUserService {
    let endpoint: String
    let session: Session

    init(_ endpoint: String, session: Session = URLSession.shared) {
        self.endpoint = endpoint
        self.session = session
    }

    func parseJSON(_ data: Data) -> Any? {
        do {
            return try JSONSerialization.jsonObject(with: data, options: .allowFragments)
        } catch {
            print("Invalid data")
        }

        return nil
    }

    func perform(_ completion: @escaping (GHUser?) -> Void) {
        guard let url = URL(string: endpoint) else { return }
        let task = session.dataTask(with: url) { (data, response, error) in
            if let error = error as? NSError {
                switch error.code {
                case -1003:
                    completion(nil)
                default: break
                }
            }

            guard let data = data, let json = self.parseJSON(data) else { return }
            let user = GHUser(with: json)
            completion(user)
        }
        task.resume()
    }
}

protocol Session {
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Swift.Void) -> URLSessionDataTask
}

extension Session {
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Swift.Void) -> URLSessionDataTask {
        return self.dataTask(with: url, completionHandler: completionHandler)
    }
}

extension URLSession: Session { }
*/
