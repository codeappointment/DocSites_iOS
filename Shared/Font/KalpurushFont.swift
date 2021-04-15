//
//  KalpurushFont.swift
//  
//
//  Created by Shahriar Nasim Nafi on 15/1/21.
//


// This is, I think is not needed

import UIKit

public final class KalpurushFont {
    public static let large = loadFont(name: fontName,
                                       size: 30.0)
    public static let medium = loadFont(name: fontName,
                                        size: 25.0)
    public static let small = loadFont(name: fontName,
                                       size: 14.0)
    public static func kalpurush(fontSize: CGFloat) -> UIFont? {
        loadFont(name: fontName, size: fontSize)
    }
    
    private static let fontName = "Kalpurush"
    
    private static func loadFont(name: String,
                                 size: CGFloat) -> UIFont? {
        if let font = UIFont(name: name, size: size) {
            return font }
        let bundle = Bundle(for: KalpurushFont.self)
        
        guard
            let url = bundle.url(forResource: name,
                                 withExtension: "ttf"),
            let fontData = NSData(contentsOf: url),
            let provider = CGDataProvider(data: fontData),
            let cgFont = CGFont(provider),
            let fontName = cgFont.postScriptName as String? else {
            preconditionFailure("Unable to load font named \(name)")
        }
        return UIFont(name: fontName, size: size)
    }
    static let attrs = [
        // NSAttributedString.Key.foregroundColor: UIColor.red,
        NSAttributedString.Key.font: UIFont(name: fontName, size: 24)!
    ]
}
