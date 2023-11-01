//
//  PostCell.swift
//  WeiboDemo
//
//  Created by chenc's Mac on 2023/11/1.
//

import SwiftUI

struct PostCell: View {
    var body: some View {
        HStack {//HStack：使两个View横向排列
            Image(uiImage: UIImage(named: "8697cf1ely8gashxj3b09j20u00u040v.jpg")!)
            VStack(alignment: .leading, spacing: 5) {//VStack：使两个View纵向排列
                Text("用户昵称")
                    .font(Font.system(size: 16))
                    .foregroundColor(.red)
                    .lineLimit(1)
                Text("2023-11-01 15:59")
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
            }
            
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

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
