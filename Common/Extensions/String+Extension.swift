//
//  String+Extension.swift
//  Low Profile
//
//  Created by Nindi Gill on 8/8/20.
//

import Foundation

extension String {

    static let homepage: String = "https://github.com/ninxsoft/LowProfile"
    static let payloadsURL: String = "https://raw.githubusercontent.com/ninxsoft/LowProfile/main/Common/Payloads.yaml"
    static let releasesURL: String = "https://github.com/ninxsoft/LowProfile/releases"
    static let latestReleaseURL: String = "https://api.github.com/repos/ninxsoft/LowProfile/releases/latest"
    static let documentationPrefix: String = "https://developer.apple.com/documentation/devicemanagement/"

    static func ~= (lhs: String, rhs: String) -> Bool {
        guard let regex: NSRegularExpression = try? NSRegularExpression(pattern: rhs) else {
            return false
        }

        let range: NSRange = NSRange(location: 0, length: lhs.utf16.count)
        return regex.firstMatch(in: lhs, options: [], range: range) != nil
    }

    func surroundingOccurrences(of string: String, with separator: String) -> String {
        self.replacingOccurrences(of: string, with: separator + string + separator)
    }
}
