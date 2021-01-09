//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit
import CoreData

class Restaurant {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    static func writeRestaurantFromBegin() {
        
        let sourceArray: [Restaurant] = [
            Restaurant(name: "大稻埕碼頭", type: "觀光勝地", location: "25.054060, 121.506741", phone: "--", summary: "大稻埕碼頭位於淡水河畔，現今五號水門處（環河北路、民生西路口）。大稻埕的發展歷史，與大稻埕碼頭有著密切的關係，淡水開港通商，外商洋行紛紛到此開設商號，促成大稻埕往後的繁華。現今雖然碼頭功能不復當年，但已轉型為民眾休閒遊憩的去處。\n\n近年來大稻埕碼頭除了迎節慶放煙火之外，沿岸並闢建自行車道，民眾可以悠閒騎單車享受河畔之旅，同時欣賞大稻埕的古意景緻。", image: "DaDaoChen.jpg", isVisited: false),
            Restaurant(name: "台北101", type: "觀光勝地＆購物天堂", location: "臺北市信義區西村里8鄰信義路五段7號", phone: "--", summary: "台北101是世界第十高樓，是全台最大的國際級購物中心，是綠建築，更是台灣的指標。\n台北101觀景台是全台灣最高的觀景台，在388 公尺的高空俯瞰整個台北市，高度不僅是象山的兩倍多，更是唯一可以眺望基隆河谷景觀的景點。", image: "101.jpg", isVisited: false),
            Restaurant(name: "國父紀念館", type: "觀光勝地", location: "110台北市信義區仁愛路四段505號", phone: "--", summary: "國立國父紀念館乃紀念國父孫中山先生之偉大人格及革命行誼並發揚其思想學說為宗旨，並以推廣社會教育、促進文化建設為目標，為兼具博物館、表演廳內涵及推展全民終身教育的多功能綜合型社教機構；亦為舉辦學術文教藝術活動，提供國人涵養文化藝術、吸收新知及旅遊休憩的全方位文化藝術中心。", image: "GuoFu.jpg", isVisited: false),
            Restaurant(name: "國立故宮博物院", type: "藝文特區", location: "111台北市士林區至善路二段221號", phone: "--", summary: "國立故宮博物院收藏有全世界最多的無價中華藝術寶藏，其收藏品的年代幾乎涵蓋了整個五千年的中國歷史，包含知名的「翠玉白菜」。\n與法國羅浮宮、英國大英博物館、美國大都會博物館、俄羅斯隱士館並稱為全世界五大博物館之一的故宮博物院，累積了從新石器時代到清末的文物將近70萬件，由於展品的質精量多，因此除了固定展示品外，館方不定期依專題展覽輪流展出。", image: "NationalPalace.jpg", isVisited: false),
            Restaurant(name: "中正紀念堂", type: "觀光勝地", location: "100台北市中正區中山南路21號", phone: "--", summary: "中正紀念堂是為紀念已故前中華民國總統蔣中正而興建的建築，位於臺北市中正區，也是眾多紀念蔣中正的建築中規模最大者，落成以來成為臺北市及臺灣在國際上最著名地標與觀光景點之一。", image: "chiang kai-shek memorial hall.jpg", isVisited: false),
            Restaurant(name: "史密斯華倫斯基牛排館 Smith & Wollensky Taipei", type: "特選美食", location: "110台北市信義區松智路17號47F", phone: "02 2345 5647", summary: "Smith & Wollensky是美國最受歡迎的經典美式牛排餐廳，擁有多個私人包廂，提供顧客最頂級的乾式熟成牛排與各式優質海鮮。\nSmith & Wollensky Taipei位於信義區微風南山47樓，台北101 與信義區美景盡收眼底。 除了賓至如歸的服務，頂級的酒藏飲品與夜間酒吧的Jazz band表演，都將帶給您最難忘的體驗。", image: "SmithAndWollensky.jpg", isVisited: false),
            Restaurant(name: "鼎泰豐", type: "特選美食", location: "台北市信義路二段194號 (捷運東門站5號出口)", phone: "02 2321 8928", summary: "鼎泰豐是臺灣一家以麵食產銷為主的連鎖餐廳，以小籠包聞名。\n1958年開設於臺北市信義路，最初爲流行而於1970年代起兼賣小籠包，從此發跡。\n1996年，鼎泰豐拓展了日本市場，在日本迅速掀起一股小籠包熱，自此廣獲好評，曾爲《紐約時報》推薦爲「世界十大美食餐廳」之一。", image: "Din Tai Fung.jpeg", isVisited: false),
            Restaurant(name: "林東芳牛肉麵", type: "特選美食", location: "台北市中山區八德路二段322號", phone: "02 2752 2556", summary: "到台北絕不能錯過的美味，榮登2018米其林畢比登推薦清單！享受充滿獨特中藥香氣的湯頭以及精心熬煮的牛肉牛筋，保證一吃就上癮！", image: "LinDongFun.jpg", isVisited: false),
            Restaurant(name: "淡水老街", type: "觀光勝地", location: "新北市淡水區中正路、重建街、清水街一帶", phone: "--", summary: "「淡水老街」不僅早已是全台知名熱門景點，同時也吸引不少外國人慕名而來。這裡街道兩旁林立熱鬧商店，有濃濃古早味的餅舖、雜貨店，也有賣潮流服飾、玩具，當然還有最吸引人的人氣美食如阿給、魚丸，另外還有古蹟可參觀，怎麼玩都不會膩。", image: "Tamsui.jpg", isVisited: false),
            Restaurant(name: "臺北市立美術館", type: "藝文特區", location: "台北市中山區中山北路三段181號", phone: "--", summary: "臺北市立美術館，簡稱北美館，位於台灣臺北市，成立於1983年12月24日，是臺灣第一座現當代美術館。", image: "Taipei Fine Arts Museum.jpg", isVisited: false),
            Restaurant(name: "台北當代藝術館", type: "藝文特區", location: "台北市大同區長安西路39號", phone: "--", summary: "台北當代藝術館是台灣首座以「當代藝術」定位的美術館，身為臺北市文化新標的，台北當代藝術館自許推動多元風貌的藝術創作與展覽、著眼於激發民眾的新觀點和新思維，提供當代城市發展源源不絕的創意與活力。", image: "MOCA Taipei.jpg", isVisited: false),
            Restaurant(name: "寧夏夜市", type: "觀光夜市", location: "台北市大同區寧夏路", phone: "--", summary: "2015年，台北市政府舉辦「臺北夜市之最」投票選舉，寧夏夜市於夜市主題中奪得「最好逛夜市」、「最美味夜市」、「最有魅力夜市」、「最環保夜市」及「最友善夜市」冠軍，是來到台北一定要逛逛的夜市。", image: "NingSha.jpg", isVisited: false),
            Restaurant(name: "士林夜市", type: "觀光夜市", location: "台北市士林區大東路", phone: "--", summary: "士林夜市為臺北市最具規模的夜市之一，以陽明戲院及慈誠宮為中心，包含了文林路、大東路、大南路等熱鬧街市集結而成，其中士林市場早在西元1910年即已興建，以各種傳統小吃聞名國內外，許多觀光客皆慕名而來，像是大餅包小餅、石頭火鍋或是士林大香腸等，更是已經成為美食地標，無人不曉。", image: "ShiLin.jpg", isVisited: false),
            Restaurant(name: "饒河夜市", type: "觀光夜市", location: "台北市松山區饒河街", phone: "--", summary: "饒河街夜市全長約六百公尺，位於撫遠街與松山火車站前的入口處，各設有一座燈火璀璨的牌樓，由牌樓處開始進入夜市區。饒河街夜市之一大特色，以定期舉辦傳統技藝表演而聞名。兩側商店及騎樓下的攤販不計其數，因此來到此地的人，無論採買服飾、生活用品或吃喝玩樂，絕對能盡其所欲。", image: "RaoHe.jpg", isVisited: false),
            Restaurant(name: "松山文創園區", type: "藝文特區", location: "台北市信義區光復南路133號", phone: "--", summary: "位在台北市信義區的松山文創園區，前身為「台灣省菸酒公賣局松山菸廠」，專門製造捲菸、雪茄等菸草製品。松山菸廠在1998年停止生產、併入台北菸廠後正式走入歷史，並於2001年被列為市定古蹟，幾經整修後才轉型為目前的松山文化創意園區，園區內以文創展演為主，可說是台北市占地最大、最活躍的文化園區。", image: "SmokeArea.jpg", isVisited: false)
        ]
        
        var restaurant: RestaurantMO!
        
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
            for i in 0..<sourceArray.count {
                restaurant = RestaurantMO(context: appDelegate.persistentContainer.viewContext)
                restaurant.name = sourceArray[i].name
                restaurant.type = sourceArray[i].type
                restaurant.location = sourceArray[i].location
                restaurant.phone = sourceArray[i].phone
                restaurant.summary = sourceArray[i].summary
                restaurant.isVisited = false
                restaurant.rating = nil
                restaurant.image = UIImage(named: sourceArray[i].image)!.pngData()
            }
            appDelegate.saveContext() //write once for all new restauranrs
        }
    }
    
}

