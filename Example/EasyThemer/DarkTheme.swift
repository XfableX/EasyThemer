//
//  DarkTheme.swift
//  EasyThemer_Example
//
//  Created by William Taylor on 26/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import EasyThemer

class DarkTheme: Theme {
    
    var view: ThemeAccess<ViewConfig> = {
        var themeAccess = ThemeAccess<ViewConfig>()
        themeAccess.primary = primaryView()
        return themeAccess
    }()
    
    var button: ThemeAccess<ButtonConfig> = {
        var themeAccess = ThemeAccess<ButtonConfig>()
        themeAccess.primary = primaryButton()
        return themeAccess
    }()
    
    var navigationBar: ThemeAccess<NavigationBarConfig> = {
        var themeAccess = ThemeAccess<NavigationBarConfig>()
        themeAccess.primary = primaryNavigationBar()
        return themeAccess
    }()
    
    var tabBar: ThemeAccess<TabBarConfig> = {
        var themeAccess = ThemeAccess<TabBarConfig>()
        themeAccess.primary = primaryTabBar()
        return themeAccess
    }()
    
    var label: ThemeAccess<LabelConfig> = {
        var themeAccess = ThemeAccess<LabelConfig>()
        themeAccess.primary = primaryLabel()
        return themeAccess
    }()
    
    struct primaryView: ViewConfig {
        
        var cornerRadius: CGFloat?
        
        var backgroundColor: UIColor? = UIColor.black
        
        var alpha: CGFloat? = 1.0
        
        var tintColor: UIColor?
        
        var clipsToBounds: Bool?
        
    }
    struct primaryButton: ButtonConfig {
        
        var titleColor: UIColor? = UIColor.white
        
        var backgroundColor: UIColor? = UIColor.black
        
        var alpha: CGFloat? = 0.9
        
        var tintColor: UIColor?
        
        var clipsToBounds: Bool?
        
        var cornerRadius: CGFloat?
        
    }
    struct primaryNavigationBar: NavigationBarConfig {
        
        var backIndicatorImage: UIImage?
        
        var barStyle: UIBarStyle? = UIBarStyle.black
        
        var barTintColor: UIColor?
        
        var shadowImage: UIImage?
        
        var tintColor: UIColor? = UIColor.red
        
        var isTranslucent: Bool? = true
        
        var backgroundImage: UIImage?
        
        var titleTextAttributes: [NSAttributedStringKey : Any]?
        
        var largeTitleTextAttributes: [NSAttributedStringKey : Any]?// = [NSAttributedStringKey.font: UIFont(name: "Gill Sans", size: 50)!]
        
        var prefersLargeTitles: Bool? = true
        
        var backgroundColor: UIColor?
        
        var alpha: CGFloat?
        
        var clipsToBounds: Bool?
        
        var cornerRadius: CGFloat?
        
    }
    struct primaryTabBar: TabBarConfig {
        
        var barStyle: UIBarStyle? = UIBarStyle.black
        
        var isTranslucent: Bool? = true
        
        var barTintColor: UIColor?
        
        var tintColor: UIColor?
        
        var unselectedItemTintColor: UIColor? 
        
        var backgroundImage: UIImage?
        
        var shadowImage: UIImage?
        
        var selectionIndicatorImage: UIImage?
        
        var backgroundColor: UIColor?
        
        var alpha: CGFloat?
        
        var clipsToBounds: Bool?
        
        var cornerRadius: CGFloat?
        
    }
    struct primaryLabel: LabelConfig {
        
        var textColor: UIColor? = UIColor.white
        
        var font: UIFont?
        
        var backgroundColor: UIColor? = UIColor.clear
        
        var alpha: CGFloat?
        
        var tintColor: UIColor?
        
        var clipsToBounds: Bool?
        
        var cornerRadius: CGFloat?
        
    }
}
