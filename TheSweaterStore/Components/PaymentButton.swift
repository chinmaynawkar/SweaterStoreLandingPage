//
//  PaymentButton.swift
//  TheSweaterStore
//
//  Created by Chinmay S Nawkar on 16/07/23.
//

import SwiftUI
import PassKit //allows us to use ApplePay in our APP

struct PaymentButton: View {
    var action: () -> Void
    var body: some View {
       Representable(action: action)
            .frame(minWidth: 100, maxWidth: 400)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
    }
}

struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton(action: {})
    }
}

// allow us to build already build Apple Pay Button
extension PaymentButton {
    
    struct Representable: UIViewRepresentable {
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    class Coordinator: NSObject {
        //has two args
        var action: () -> Void
        var button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)
        init(action: @escaping () -> Void) {
            self.action = action
            super.init()
            
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        @objc
        func callback(_ sender: Any){
            action()
        }
    }
   
}
