//
//  PlatformImage.swift
//  Low Profile
//
//  Created by Nindi Gill on 6/8/20.
//

import SwiftUI

struct PlatformImage: View {
    var title: String
    private let length: CGFloat = 24
    private var systemName: String {
        switch title {
        case "macOS":
            return "desktopcomputer"
        case "iOS":
            return "iphone"
        case "iPadOS":
            return "ipad.landscape"
        case "tvOS":
            return "appletv.fill"
        case "watchOS":
            return "applewatch"
        default:
            return ""
        }
    }

    var body: some View {
        ScaledSystemImage(systemName: systemName, length: length)
            .foregroundColor(.primary)
    }
}

struct PlatformImage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["macOS", "iOS", "tvOS", "watchOS"], id: \.self) { title in
                PlatformImage(title: title)
            }
        }
    }
}
