//
//  PostVIPBadge.swift
//  WeiboDemo
//
//  Created by chenc's Mac on 2023/11/1.
//

import SwiftUI

struct PostVIPBadge: View {
    let vip : Bool
    
    var body: some View {
        if vip {
            Text("V")
                .bold()//字体加粗
                .font(.system(size: 11))
                .foregroundColor(.yellow)
                .frame(width: 15, height: 15)
                .background(Color.red)
                .clipShape(Circle())
                .overlay {
                    RoundedRectangle(cornerRadius: 7.5)
                        .stroke(Color.white, lineWidth: 1)
                }
        }
    }
}

struct PostVIPBadge_Previews: PreviewProvider {
    static var previews: some View {
        PostVIPBadge(vip: true)
    }
}
