
import Foundation
import UIKit
import SwiftyJSON

struct Book {
    let title: String
    let subTitle: String
    let description: String
    let publishedDate: String
    let pageCount: Int
    let imageLink: URL
    var authors = [String]()
    let textSnipets: String
    let identifier: String
    
    init(_ json: JSON) {
        title = json["items"][0]["volumeInfo"]["title"].string ?? ""
        subTitle = json["items"][0]["volumeInfo"]["subtitle"].string ?? ""
        description = json["items"][0]["volumeInfo"]["description"].string ?? ""
        publishedDate = json["items"][0]["volumeInfo"]["publishedDate"].string ?? ""
        pageCount = json["items"][0]["volumeInfo"]["pageCount"].int ?? 0
        imageLink = json["items"][0]["volumeInfo"]["imageLinks"]["smallThumbnail"].url!
        
        for (_, value) in json["items"][0]["volumeInfo"]["authors"] {
            self.authors.append(value.string!)
        }
        
        textSnipets = json["items"][0]["searchInfo"]["textSnippet"].string ?? ""
        identifier = json["items"][0]["volumeInfo"]["identifer"][1]["identifier"].string ?? ""
    }
}