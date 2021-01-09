//
//  Event2TableViewController.swift
//  FoodPin
//
//  Created by 林哲豪 on 2021/1/9.
//  Copyright © 2021 NDHU_CSIE. All rights reserved.
//

import UIKit

class Event2TableViewController: UITableViewController {
    
    
    var restaurantNames = ["臺北市孔廟 祭孔大典", "台北杜鵑花季", "新北耶誕城", "台北國際電玩展", "大稻埕情人節", "陽明山花季", "台北燈節", "士林官邸春節花卉展"]
    var restaurantIntro = ["每年教師節，臺北市孔廟都會舉行祭孔釋奠典禮，祭孔的儀式最早可追溯至孔子逝世，而今日所見的釋奠儀式與「至聖先師孔子」的稱呼，則到了清朝才完整底定。臺北市孔廟自1930年由地方仕紳集資建廟完成後，迄今已舉辦超過八十多年祭孔釋奠典禮，近來每年約吸引2,000人次前往觀禮。", "「臺北杜鵑花季」以「市花」為創意發想，結合周邊社區、市集商圈、文化活動、多元教育等面向，於春日花季期間辦理系列活動，營造以花為主題的城市形象。最負盛名的活動便是每年在大安森林公園舉辦的「音樂會」，臺北市邀請民眾帶著所愛的人，一起賞花、聽音樂，感受杜鵑花季的臺北魅力。", "新北市歡樂耶誕城活動，創意地將廣場的竹筍地標化身為全台獨一無二的耶誕樹，並推出耶誕主燈秀，年年結合最新的科技和音樂，每年都有創新和驚喜。除了耶誕主燈秀、周邊美麗裝置燈飾，民眾周周都可以來廣場參與各項精彩活動。除了固定地點舉辦，近年來也固定時間辦理，從11月中下旬起一直持續到隔年元旦。", "台北國際電玩展（縮寫TGS、TpGS）是由台北市電腦商業同業公會舉辦的電子遊戲展覽，是全台唯一以「遊戲產業」為主、兼具B2B與B2C的綜合性展覽。自2003年開辦以來，豐富精采的內容總是吸引世界各地玩家前來朝聖，從幾千人的參觀人潮到現在已成為全國數十萬玩家每年必到的朝聖勝地。", "每年農曆七夕前周末假日於大稻埕碼頭周邊舉辦，為台灣最具代表性的七夕情人節慶活動，除了歌手團體接力演出一首首情歌，並將施放情人煙火秀(或其他創意展演)，現場還有愛情文創市集、胖卡美食、清涼啤酒專區與有趣的體驗活動，歡迎你(妳)帶著情人或家人、朋友一起來大稻埕河岸享受浪漫的時光。", "想去陽明山卻不知道有什麼好玩的嗎？陽明山是許多台北人假日休閒的好去處，一年四季都有不同的美麗風貌，從二到三月的陽明山花季，經四到六月的海芋、繡球花季，到年底的芒草季，都吸引了許多人的到訪打卡。", "臺北燈節是臺北市政府主辦的臺灣元宵節燈節，始於1997年，首屆主燈於仁愛路圓環。自2013年地點則不固定於國父紀念館、地點改在花博公園圓山園區及美術園區。2017年起為活絡台北市西區的發展，地點改在熱鬧的西門町商圈。", "農曆新年假期7天何處去?就是要「走春賞花趣」，感受大自然的氣息，觀賞五彩繽紛的美麗花兒，在藍天白運的陪襯下，讓心花也跟著朵朵開！最適合帶著一家大小的必遊景點，就非士林官邸莫屬，告訴大家一個春遊的好消息!「士林官邸春節花卉展」於春節期間喜氣登場!"]
    var restaurantPic = ["GuoFu", "GuoFu", "GuoFu", "GuoFu", "GuoFu", "GuoFu", "GuoFu", "GuoFu", "GuoFu", "GuoFu", "GuoFu", "GuoFu"]
    
    
    
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myLabel2: UILabel!
    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel2.lineBreakMode = NSLineBreakMode.byWordWrapping

        myLabel2.numberOfLines = 0
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(  _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = restaurantNames[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myLabel.text = restaurantNames[indexPath.row]
        myLabel2.text = restaurantIntro[indexPath.row]
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
