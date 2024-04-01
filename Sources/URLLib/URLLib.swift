import Foundation

func parseUrl(urlStr: String) -> URL? {
    var urlComponents = URLComponents(string: urlStr)
    if urlComponents == nil {
        print("default handling failed, try percent encoding for \(urlStr)")
        guard let pUrlStr = urlStr.addingPercentEncoding(withAllowedCharacters: .urlAllowed) else { 
          print("percent encoding failed")
          return nil
        }
        print("percent-encoded: \(pUrlStr)")
        urlComponents = URLComponents(string: pUrlStr)
    }
    return urlComponents?.url
}

extension CharacterSet {
  static let urlAllowed: CharacterSet = {
    var set = CharacterSet.urlHostAllowed
      .union(.urlUserAllowed)
      .union(.urlPasswordAllowed)
      .union(.urlPathAllowed)
      .union(.urlQueryAllowed)
      .union(.urlFragmentAllowed)
    set.insert(charactersIn: "%")
    return set
  }()
}
