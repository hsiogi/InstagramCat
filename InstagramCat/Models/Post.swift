//
//  Post.swift
//  InstagramCat
//
//  Created by 林品均 on 2022/8/8.
//

import Foundation

struct Post : Codable{
    var user: User
    var liked: Bool
    var likeCount : Int
    var commentCount: Int
    var content: String
    var timestamp: Int64
    var image: String
}

//https://www.mirrormedia.com.tw/assets/images/20220809105154-5b6ea7d08f5c59257194db32f0ae9604-mobile.png
//https://media.vogue.com.tw/photos/62be818fea6b02c122758ec1/master/w_1600,c_limit/2-0940_V.jpg


class Data{

    static func getData() -> Post{
        
        let user = User(thumbNail: "https://news.agentm.tw/wp-content/uploads/%E6%9C%AA%E5%91%BD%E5%90%8D-1-89-750x422.png", account: "bl_flower")
        
        let post = Post(user: user, liked: false, likeCount: 10, commentCount: 20, content: """
2021 年 4 月 16 日夜晚，大批人潮湧現新生南路三段，隊伍一路自女巫店綿延近 200 公尺。距離開演仍有 1 小時，現場超過百位年輕男女情願排隊等待入場的，是一位名為「雲端司機 CLOUDRIVER」的 EP《SUNNY AFTERNOON》同名演唱會。眼看入場時間將至，隊伍越拉越長，最後僅有約莫一半的人數能夠入場感受雲端司機的現場演出。這是自 2020 年新冠肺炎在台爆發以來，女巫店鮮少見過的光景。
                        
「現場女粉絲之激動我前所未見，明明就是一個把臥房拆掉塞滿樂器的臭宅宅，站上舞台之從容，撩人手段之高明，一舉手一投足，雖然偶有稚嫩之處，但想必在歌迷的眼裡，應該可愛的不得了吧。」嘻哈廠牌顏社主理人迪拉口中的「臭宅宅」、歌迷眼中可愛得不得了的「雲端司機」，真實身分是年僅 24 歲、曾以首張專輯《醒著不醉》入圍過第 29 屆金曲獎最佳新人獎的李權哲（Jerry Li）。
""",  timestamp: 1659951005, image: "https://media.vogue.com.tw/photos/62be818fea6b02c122758ec1/master/w_1600,c_limit/2-0940_V.jpg")
        
        return post
    }

}
