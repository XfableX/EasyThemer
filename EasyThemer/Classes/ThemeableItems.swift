//
//  ThemeableItems.swift
//  EasyThemer
//
//  Created by William Taylor on 08/25/2018.
//  Copyright (c) 2018 William Taylor. All rights reserved.
//

public struct ThemeAccess<Type> {
    public var primary: Type?
    public var secondary: Type?
    public var other = [String: Type]()
    public init() {
        
    }
}
public protocol Theme {
    var view: ThemeAccess<ViewConfig> { get }
    var button: ThemeAccess<ButtonConfig> { get }
    var navigationBar: ThemeAccess<NavigationBarConfig> { get }
    var tabBar: ThemeAccess<TabBarConfig> { get }
    var label: ThemeAccess<LabelConfig> { get }
}
public protocol ViewConfig {
    var backgroundColor: UIColor? { get }
    var alpha: CGFloat? { get }
    var tintColor: UIColor? { get }
    var clipsToBounds: Bool? { get }
    var cornerRadius: CGFloat? { get }
}
public protocol ButtonConfig: ViewConfig {
    var titleColor: UIColor? { get }
}
public protocol NavigationBarConfig: ViewConfig {
    var backIndicatorImage: UIImage? { get }
    var barStyle: UIBarStyle? { get }
    var barTintColor: UIColor? { get }
    var shadowImage: UIImage? { get }
    var isTranslucent: Bool? { get }
    var backgroundImage: UIImage? { get }
    var titleTextAttributes: [NSAttributedStringKey : Any]? { get }
    var largeTitleTextAttributes: [NSAttributedStringKey : Any]? { get }
    var prefersLargeTitles: Bool? { get }
}
public protocol TabBarConfig: ViewConfig {
    var barStyle: UIBarStyle? { get }
    var isTranslucent: Bool? { get }
    var barTintColor: UIColor? { get }
    var unselectedItemTintColor: UIColor? { get }
    var backgroundImage: UIImage? { get }
    var shadowImage: UIImage? { get }
    var selectionIndicatorImage: UIImage? { get }
}
public protocol LabelConfig: ViewConfig {
    var font: UIFont? { get }
    var textColor: UIColor? { get }
}
