//
//  ViewModel.swift
//  ObservableDataBinding
//
//  Created by Kürşat Şimşek on 26.01.2023.
//

import Foundation

class ViewModel {
    
    var onMessageReceived: ((String) -> Void)?
    
    var retreivedMessage: Observable<String> = Observable()
    
    func loadData() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(1)) {
//            self.onMessageReceived?("Hello Bind!")
            
            self.retreivedMessage.value = "Hello Bind!!"
        }
    }
}
