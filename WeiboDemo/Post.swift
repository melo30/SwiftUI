//
//  Post.swift
//  WeiboDemo
//
//  Created by chenc's Mac on 2023/11/1.
//  和Recources文件夹中的PostListDatajson文件对应，注意该结构体中的属性只能比json文件中的少，不能多，否则解析失败

import SwiftUI

struct PostList : Codable {
    var list : [Post]
}

//Data model
struct Post : Codable {// Post遵循Codable协议(可编码/可解码)
    let id : Int
    let avatar : String //头像，图片名称
    let vip : Bool //true,false
    let name : String //名称
    let date : String //日期
    var isFollowed : Bool //是否关注
    let text : String //内容
    let images : [String] //图片名称数组
    var commentCount : Int //评论数
    var isLiked : Bool //是否点赞
}

//用一个常量来接收函数，方便外部调用
let postList = loadPostListData("PostListData_recommend_1.json")

/// 根据文件名找到json解析成模型
/// - Parameter fileName: 文件名
/// - Returns:  模型数据源
func loadPostListData(_ fileName:String) -> PostList {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("can not find \(fileName) in main bundle")
    }
    
    guard let data = try? Data(contentsOf: url) else {
        fatalError("can not load \(url)")
    }
    
    guard let list = try? JSONDecoder().decode(PostList.self, from: data) else {
        fatalError("can not parse post list json data")
    }
    
    return list
    
}
