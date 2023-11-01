//
//  PostCell.swift
//  WeiboDemo
//
//  Created by chenc's Mac on 2023/11/1.
//

import SwiftUI

struct PostCell: View {
    let post : Post
    
    var body: some View {
        HStack(spacing:5) {//HStack：使两个View横向排列
            Image(uiImage: UIImage(named: post.avatar)!)
                .resizable()//可以缩放
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())//裁剪为原型
                .overlay() {//叠加一个View,显示VIP标识
                    PostVIPBadge(vip: post.vip)
                        .offset(x:16, y:16)
                }
            
            VStack(alignment: .leading, spacing: 5) {//VStack：使两个View纵向排列
                Text(post.name)
                    .font(Font.system(size: 16))
                    .foregroundColor(.red)
                    .lineLimit(1)
                Text(post.date)
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
            }
            .padding(.leading, 10)//VStack整体的内边距
            
            if !post.isFollowed {
                Spacer()//尽可能多占空间的View，是看不见的
                
                Button(action: {
                    print("Click follow button")
                }) {
                    Text("关注")
                        .font(.system(size: 16))
                        .foregroundColor(.orange)
                        .frame(width: 50, height: 26)
                        .overlay {//叠加一个View画圆角
                            RoundedRectangle(cornerRadius: 13)
                                .stroke(Color.orange, lineWidth: 1)
                        }
                }
            }
            
        }
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
//        PostCell(post: Post(avatar: "8697cf1ely8gashxj3b09j20u00u040v.jpg",
//                            vip: true,
//                            name: "用户昵称",
//                            date: "2023-11-01 15:59",
//                            isFollowed: false))
        
        PostCell(post: postList.list[0])
    }
}
