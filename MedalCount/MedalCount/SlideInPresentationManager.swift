//
//  SlideInPresentationManager.swift
//  MedalCount
//
//  Created by Mao on 07/11/2016.
//  Copyright © 2016 Ron Kliffer. All rights reserved.
//

import UIKit

class SlideInPresentationManager: NSObject {
  var direction = PresentationDirection.left

}

// MARK: - UIViewControllerTransitioningDelegate
extension SlideInPresentationManager: UIViewControllerTransitioningDelegate {
  
  func presentationController(forPresented presented: UIViewController,
                              presenting: UIViewController?,
                              source: UIViewController) -> UIPresentationController? {
    let presentationController = SlideInPresentationController(presentedViewController: presented,
                                                               presenting: presenting,
                                                               direction: direction)
    return presentationController
  }
}

enum PresentationDirection {
  case left
  case top
  case right
  case bottom
}
