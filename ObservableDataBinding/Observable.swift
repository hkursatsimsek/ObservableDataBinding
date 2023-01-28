//
//  Observable.swift
//  ObservableDataBinding
//
//  Created by Kürşat Şimşek on 26.01.2023.
//

import Foundation

class Observable<T> {
    var value: T? {
        didSet {
            _callback?(value)
        }
    }
    
    private var _callback: ((T?) -> Void)?
    
    func bind(callback: @escaping (T?)-> Void) {
        _callback = callback 
    }
}
