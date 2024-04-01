import Foundation

func parseUrl(urlStr: String) -> URL? {
    return URLComponents(string: urlStr)?.url
}
