//
//  ContentView.swift
//  EmergencyAlert
//
//  Created by 손정훈 on 2020/07/05.
//  Copyright © 2020 Jeonghun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var title = ""
    @State var sentence = ""
    func setNotification(){
        let manager = LocalNotificationManager()
        manager.requestPermission()
        manager.addNotification(title: title, body: sentence)
        manager.scheduleNotifications()
    }
    var body: some View {
        Form{
            Section{
                TextField("제목", text: $title)
                
            }
            Section{
                TextField("내용", text: $sentence)
            
            }
            Button(action: { self.setNotification() }) {
                Text("노티 설정")
                    .multilineTextAlignment(.center)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
