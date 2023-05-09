//
//  WordPressXMLParserDelegate.swift
//  LifeguardTimes
//
//  Created by Jonathan Steele on 7/29/19.
//  Copyright © 2019 Jonathan Steele. All rights reserved.
//

import Foundation

class WordPressXMLParser: NSObject, XMLParserDelegate {
    var list: [Feed] = []
    private var currentElement = ""
    private var currentEnclosure: String?
    private var foundCharacter = ""
    private var currentItem: Feed?
    
    private static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E, d MMM yyyy HH:mm:ss zzz"
        return dateFormatter
    }()
    
    func parseXML(data: Data) {
        let parser = XMLParser(data: data)
        parser.delegate = self
        parser.parse()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        currentElement = elementName
        
        if currentElement == "item" {
            currentItem = Feed()
        } else if currentElement == "enclosure" {
            currentEnclosure = attributeDict["url"]
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if currentElement == "title" ||
            currentElement == "pubDate" ||
            currentElement == "link" ||
            currentElement == "content:encoded" ||
            currentElement == "description" {
            foundCharacter += string.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        switch elementName {
        case "item":
            if let item = currentItem {
                list.append(item)
            }
            break
        case "enclosure":
            currentItem?.image = currentEnclosure
            break
        case "title":
            currentItem?.title = foundCharacter
            break
        case "pubDate":
            currentItem?.date = Self.dateFormatter.date(from: foundCharacter)
            break
        case "link":
            currentItem?.link = foundCharacter
            break
        case "content:encoded":
            currentItem?.content = foundCharacter
            break
        case "description":
            currentItem?.description = foundCharacter
        default:
            break
        }
        foundCharacter = ""
    }

}
