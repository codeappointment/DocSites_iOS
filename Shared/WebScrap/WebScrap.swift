//
//  WebScrap.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 18/4/21.
//

import SwiftUI
import SwiftSoup

class WebScrap: ObservableObject {
    @Published var filterContent = ""
    @Published var texts = [String]()
    @Published var urls = [String]()
    
    func clearArray() {
        self.texts.removeAll()
        self.urls.removeAll()
    }
    
    func getData() {
        var begin = 0
        var end = 0
        let website = URL(string:"https://bsmmu.edu.bd/")!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select("a")
            print(element.count)
            for i in begin..<element.count {
                let link = element[i]
                let text = try link.text()
                let url = try link.attr("abs:href")
                if text.contains("Residency/Non-Residency") {
                    begin = i + 1
                }
                if text.contains("Institute") {
                    end = i
                    break
                }
            }
            
            for i in begin..<end {
                let link = element[i]
                let text = try link.text()
                let url = try link.attr( "abs:href")
                self.texts.append(text)
                self.urls.append(url)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func BSMMUTypeOne() {
        clearArray()
        var begin = 0
        var end = 0
        let website = URL(string:"https://bsmmu.edu.bd/")!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select("a")
            print(element.count)
            for i in begin..<element.count {
                let link = element[i]
                let text = try link.text()
                if text.contains("Residency/Non-Residency") {
                    begin = i + 1
                }
                if text.contains("Institute") {
                    end = i
                    break
                }
            }
            
            for i in begin..<end {
                let link = element[i]
                let text = try link.text()
                let url = try link.attr( "abs:href")
                self.texts.append(text)
                self.urls.append(url)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func BSMMUTypeTwo() {
        clearArray()
        var begin = 0
        var end = 0
        let website = URL(string:"https://bsmmu.edu.bd/")!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select("a")
            print(element.count)
            for i in begin..<element.count {
                let link = element[i]
                let text = try link.text()
                if text.contains("Admission") {
                    begin = i + 1
                    end = begin + 4
                    break
                }
            }
            
            for i in begin..<end {
                let link = element[i]
                let text = try link.text()
                let url = try link.attr( "abs:href")
                self.texts.append(text)
                self.urls.append(url)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func BSMMUTag(url: String, tagForText: String, attr: String) {
        clearArray()
        let begin = 0
        let website = URL(string: url)!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select(tagForText)
            print(element.count)
            for i in begin..<element.count {
                let link = element[i]
                let url = try link.attr(attr)
                self.urls.append(url)
                let date = try link.select("h5").text().prefix(2) + " "
                let month = try link.select("h5").text().dropFirst(2) + ": "
                let notice =  try link.select("h6").text()
                let text = date + month + notice
                self.texts.append(String(text))
                
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func CCDExecutableTagTypeOne(url: String, tagForText: String, tagForLink: String, attr: String, begin: Int, end: Int) {
        clearArray()
        let website = URL(string: url)!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select(tagForText)
            print(element.count)
            for i in begin..<end {
                let link = element[i]
                let linkText = try link.text()
                if linkText != "" {
                    let text = try link.text()
                    self.texts.append(text)
                    let url = try link.select(tagForLink).attr(attr)
                    self.urls.append(url)
                }
                
                self.texts.insert("Home page", at: 0)
                self.urls.append("https://www.badas-dlp.org/")
                
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func CCDExecutableTagTypeTwo(url: String, tagForText: String, attr: String, begin: Int, end: Int) {
        clearArray()
        let website = URL(string: url)!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select(tagForText)
            print(element.count)
            for i in begin..<end {
                let link = element[i]
                let text = try link.text()
                let url = "http://www.badas-dlp.org/"
                self.texts.append(text)
                self.urls.append(url)
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func BPSCTag(url: String, tagForText: String,tagForLink: String, attr: String, begin: Int) {
        clearArray()
        let website = URL(string: url)!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select(tagForText)
            print(element.count)
            for i in begin..<element.count {
                let link = element[i]
                let text = try link.text()
                let url = try link.select(tagForLink).attr(attr)
                self.texts.append(text)
                self.urls.append(url)
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func DGHSTagTypeOne(url: String, tagForText: String, attr: String, begin: Int) {
        clearArray()
        let website = URL(string: url)!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select(tagForText)
            print(element.count)
            for i in begin..<element.count {
                let link = element[i]
                let text = try link.text()
                self.texts.append(text)
                let url = try link.select("a").attr(attr)
                self.urls.append(url)
                
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func DGHSTagTypeTwo(url: String, tagForText: String,tagForLink: String, attr: String) {
        clearArray()
        let website = URL(string: url)!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select(tagForText)
            print(element.count)
            for i in element.count - 11..<element.count {
                let link = element[i]
                let text = try link.text()
                self.texts.append(text)
                let url = try link.select(tagForLink).attr(attr)
                self.urls.append(url)
                
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func ServiceConfirmTag(tagForText: String, attr: String) {
        clearArray()
        let website = URL(string: "http://mohfw.gov.bd/index.php?option=com_content&view=article&id=111:bcs-health&catid=38:bcs-health&Itemid=&lang=en")!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let table = try document.select("table")
            let rows = try document.select(tagForText)
            
            for i in 0..<rows.count {
                let link = rows[i]
                if filterContent == "সহকারী অধ্যাপক" {
                    let linkText = try link.text()
                    if linkText.contains(filterContent) || linkText.contains("Per-1:") {
                        let text = try link.outerHtml()
                        let url = try link.select("a").attr(attr)
                        self.texts.append(text)
                        self.urls.append(url)
                    }
                } else {
                    let linkText = try link.text()
                    if linkText.contains(filterContent) {
                        let text = try link.outerHtml()
                        let url = try link.select("a").attr(attr)
                        self.texts.append(text)
                        self.urls.append(url)
                    }
                }
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func CCDParser(url: String, tagForText: String, attr: String, begin: Int) {
        clearArray()
        let website = URL(string: url)!
        guard let html = try? String(contentsOf: website),  let document = try? SwiftSoup.parse(html) else { return }
        do {
            let element = try document.select(tagForText)
            print(element.count)
            for i in begin..<element.count {
                let link = element[i]
                let text = try link.text()
                self.texts.append(text)
                let url = try link.select("a").attr(attr)
                self.urls.append(url)
                
            }
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
