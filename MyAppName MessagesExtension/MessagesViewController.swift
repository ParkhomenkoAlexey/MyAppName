//
//  MessagesViewController.swift
//  MyAppName MessagesExtension
//
//  Created by Алексей Пархоменко on 20.06.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    var browserViewController: NatureStickerBrowserViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        browserViewController = NatureStickerBrowserViewController(stickerSize: .regular)
        browserViewController.view.frame = self.view.bounds
        
        self.addChild(browserViewController)
        browserViewController.didMove(toParent: self)
        self.view.addSubview(browserViewController.view)
        
        browserViewController.loadStickerData()
        browserViewController.stickerBrowserView.reloadData()
        browserViewController.changeBackgroundColor(color: .systemPink)
    }
}
