//
//  SceneDelegate.swift
//  Notes
//
//  Created by Дарья Шишмакова on 04.10.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = NotesListViewController()
        self.window = window
        window.makeKeyAndVisible()
    }
}
