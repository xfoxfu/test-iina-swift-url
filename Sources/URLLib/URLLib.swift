import Foundation

func parseUrl(urlStr: String) -> URL? {
    var urlComponents = URLComponents(string: urlStr)
    if urlComponents == nil {
        guard let pUrlStr = urlStr.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) else { return nil }
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
