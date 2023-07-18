//
//  LoaderView.swift
//  LoaderView
//
//  Created by Alex on 18/07/2023.
//

import Foundation
import UIKit
import SwiftUI

struct LoaderView: UIViewRepresentable {
    @Binding var animate: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityView = UIActivityIndicatorView(style: .large)
        activityView.hidesWhenStopped = false
        activityView.color = .blue
        activityView.startAnimating()
        return activityView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if animate {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
    
    typealias UIViewType = UIActivityIndicatorView
    
    
}
