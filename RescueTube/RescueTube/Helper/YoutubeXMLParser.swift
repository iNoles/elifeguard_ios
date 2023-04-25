//
//  YoutubeXMLParser.swift
//  RescueTube
//
//  Created by TECH1 on 4/20/23.
//

import Foundation

class YoutubeXMLParser : NSObject, XMLParserDelegate {
    var list: [Playlist] = []
    var eName = String()
    var postTitle = String()
    var postLink = String()
    var postDate = String()
    var postThumbNail = String()
    var postID = String()
    
    func parseXML(data: Data) {
        let parser = XMLParser(data: data)
        parser.delegate = self
        parser.parse()
    }

    // MARK: - XMLParserDelegate methods
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?,
                qualifiedName qName: String?, attributes attributeDict: [String: String]) {
        eName = elementName
        if elementName == "entry" {
            postTitle = String()
            postDate = String()
        } else if elementName == "media:thumbnail" {
            postThumbNail = attributeDict["url"]!
        } else if elementName == "link" {
            postLink = attributeDict["href"]!
        }
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        let data = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        if !data.isEmpty {
            if eName == "title" {
                postTitle += data
            } else if eName == "published" {
                postDate += data
            } else if eName == "yt:videoId" {
                postID += data
            }
        }
    }

    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?,
                qualifiedName qName: String?) {
        if elementName == "entry" {
            var playlist = Playlist()
            playlist.title = postTitle
            playlist.link = postLink
            playlist.id = postID

            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            let date = dateFormatter.date(from: postDate)
            dateFormatter.dateFormat = "EEEE, MMM d, yyyy h:mm a"
            playlist.date = dateFormatter.string(from: date!)

            playlist.thumbNail = postThumbNail
            list.append(playlist)
        }
    }
}
