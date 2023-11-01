//
//  ContentView.swift
//  WeiboDemo
//
//  Created by chenc's Mac on 2023/11/1.
//

// 定义：SwiftUI是一个基于Swift语言构建用户界面的框架，所以需要import进来

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

//提供预览者
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
