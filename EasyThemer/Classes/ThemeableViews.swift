//
//  ThemableViews.swift
//  EasyThemer
//
//  Created by William Taylor on 25/8/18.
//


class ThemeableView: UIView, ThemeEngineDelegate {
    
    @IBInspectable public var type: String = "primary"
    
    private let arrayIndex: Int
    
    public func set(theme: ViewConfig) {
        let defaults: ViewConfig = getDefaults()
        self.alpha = theme.alpha ?? (defaults.alpha ?? 1.0)
        self.backgroundColor = theme.backgroundColor ?? defaults.backgroundColor
        self.clipsToBounds = theme.clipsToBounds ?? (defaults.clipsToBounds ?? true)
        self.tintColor = theme.tintColor ?? defaults.tintColor
        self.layer.cornerRadius = theme.cornerRadius ?? (defaults.cornerRadius ?? 0.0)
    }
    private func getDefaults() -> ViewConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.defaultTheme.view.primary!
        case "secondary":
            return ThemeEngine.standard.defaultTheme.view.secondary!
        default:
            return ThemeEngine.standard.defaultTheme.view.other[type]!
        }
    }
    private func getTheme() -> ViewConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.currentTheme!.view.primary!
        case "secondary":
            return ThemeEngine.standard.currentTheme!.view.secondary!
        default:
            return ThemeEngine.standard.currentTheme!.view.other[type]!
        }
    }
    internal func themeChanged() {
        set(theme: getTheme())
    }
    public init() {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: CGRect.zero)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    public override init(frame: CGRect) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: frame)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    required init?(coder aDecoder: NSCoder) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(coder: aDecoder)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    func themeReady() {
        set(theme: getTheme())
    }
    deinit {
        ThemeEngine.standard.clients.remove(at: arrayIndex)
    }
}
class ThemeableButton: UIButton, ThemeEngineDelegate {
    
    @IBInspectable public var type: String = "primary"
    
    private let arrayIndex: Int
    
    public func set(theme: ButtonConfig) {
        let defaults: ButtonConfig = getDefaults()
        self.alpha = theme.alpha ?? (defaults.alpha ?? 1.0)
        self.backgroundColor = theme.backgroundColor ?? defaults.backgroundColor
        self.clipsToBounds = theme.clipsToBounds ?? (defaults.clipsToBounds ?? true)
        self.tintColor = theme.tintColor ?? defaults.tintColor
        self.layer.cornerRadius = theme.cornerRadius ?? (defaults.cornerRadius ?? 0.0)
        self.setTitleColor((theme.titleColor ?? defaults.titleColor), for: .normal)
    }
    private func getDefaults() -> ButtonConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.defaultTheme.button.primary!
        case "secondary":
            return ThemeEngine.standard.defaultTheme.button.secondary!
        default:
            return ThemeEngine.standard.defaultTheme.button.other[type]!
        }
    }
    private func getTheme() -> ButtonConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.currentTheme!.button.primary!
        case "secondary":
            return ThemeEngine.standard.currentTheme!.button.secondary!
        default:
            return ThemeEngine.standard.currentTheme!.button.other[type]!
        }
    }
    internal func themeChanged() {
        set(theme: getTheme())
    }
    public init() {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: CGRect.zero)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    public override init(frame: CGRect) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: frame)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    required init?(coder aDecoder: NSCoder) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(coder: aDecoder)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    func themeReady() {
        set(theme: getTheme())
    }
    deinit {
        ThemeEngine.standard.clients.remove(at: arrayIndex)
    }
    
}

class ThemeableNavigationBar: UINavigationBar, ThemeEngineDelegate {
    
    @IBInspectable public var type: String = "primary"
    
    private let arrayIndex: Int
    
    public func set(theme: NavigationBarConfig) {
        let defaults: NavigationBarConfig = getDefaults()
        self.alpha = theme.alpha ?? (defaults.alpha ?? 1.0)
        self.backgroundColor = theme.backgroundColor ?? defaults.backgroundColor
        self.clipsToBounds = theme.clipsToBounds ?? (defaults.clipsToBounds ?? true)
        self.tintColor = theme.tintColor ?? defaults.tintColor
        self.layer.cornerRadius = theme.cornerRadius ?? (defaults.cornerRadius ?? 0.0)
        self.setBackgroundImage((theme.backgroundImage ?? defaults.backgroundImage), for: UIBarMetrics.default)
        self.backIndicatorImage = theme.backIndicatorImage ?? defaults.backIndicatorImage
        self.barStyle = theme.barStyle ?? (defaults.barStyle ?? UIBarStyle.default)
        self.barTintColor = theme.barTintColor ?? defaults.barTintColor
        self.isTranslucent = theme.isTranslucent ?? (defaults.isTranslucent ?? true)
        if #available(iOS 11.0, *) {
            self.largeTitleTextAttributes = theme.largeTitleTextAttributes ?? defaults.largeTitleTextAttributes
            self.prefersLargeTitles = theme.prefersLargeTitles ?? (defaults.prefersLargeTitles ?? false)
        } else {
            print("Unable To Set Large Title Attributes Due To Incompatible iOS")
        }
        self.shadowImage = theme.shadowImage ?? defaults.shadowImage
        self.titleTextAttributes = theme.titleTextAttributes ?? defaults.titleTextAttributes
    }
    private func getDefaults() -> NavigationBarConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.defaultTheme.navigationBar.primary!
        case "secondary":
            return ThemeEngine.standard.defaultTheme.navigationBar.secondary!
        default:
            return ThemeEngine.standard.defaultTheme.navigationBar.other[type]!
        }
    }
    private func getTheme() -> NavigationBarConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.currentTheme!.navigationBar.primary!
        case "secondary":
            return ThemeEngine.standard.currentTheme!.navigationBar.secondary!
        default:
            return ThemeEngine.standard.currentTheme!.navigationBar.other[type]!
        }
    }
    internal func themeChanged() {
        set(theme: getTheme())
    }
    public init() {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: CGRect.zero)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    public override init(frame: CGRect) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: frame)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    required init?(coder aDecoder: NSCoder) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(coder: aDecoder)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    func themeReady() {
        set(theme: getTheme())
    }
    deinit {
        ThemeEngine.standard.clients.remove(at: arrayIndex)
    }
    
}
class ThemeableTabBar: UITabBar, ThemeEngineDelegate {
    
    @IBInspectable public var type: String = "primary"
    
    private let arrayIndex: Int
    
    public func set(theme: TabBarConfig) {
        let defaults: TabBarConfig = getDefaults()
        self.alpha = theme.alpha ?? (defaults.alpha ?? 1.0)
        self.backgroundColor = theme.backgroundColor ?? defaults.backgroundColor
        self.clipsToBounds = theme.clipsToBounds ?? (defaults.clipsToBounds ?? true)
        self.tintColor = theme.tintColor ?? defaults.tintColor
        self.layer.cornerRadius = theme.cornerRadius ?? (defaults.cornerRadius ?? 0.0)
        self.backgroundImage = theme.backgroundImage ?? defaults.backgroundImage
        self.barStyle = theme.barStyle ?? (defaults.barStyle ?? UIBarStyle.default)
        self.barTintColor = theme.barTintColor ?? defaults.barTintColor
        self.isTranslucent = theme.isTranslucent ?? (defaults.isTranslucent ?? true)
        self.selectionIndicatorImage = theme.selectionIndicatorImage ?? defaults.selectionIndicatorImage
        self.shadowImage = theme.shadowImage ?? defaults.shadowImage
        if #available(iOS 10.0, *) {
            self.unselectedItemTintColor = theme.unselectedItemTintColor ?? defaults.unselectedItemTintColor
        } else {
            print("Unable To Set Unselected Item Tint Color Due To Incompatible iOS")
        }
    }
    private func getDefaults() -> TabBarConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.defaultTheme.tabBar.primary!
        case "secondary":
            return ThemeEngine.standard.defaultTheme.tabBar.secondary!
        default:
            return ThemeEngine.standard.defaultTheme.tabBar.other[type]!
        }
    }
    private func getTheme() -> TabBarConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.currentTheme!.tabBar.primary!
        case "secondary":
            return ThemeEngine.standard.currentTheme!.tabBar.secondary!
        default:
            return ThemeEngine.standard.currentTheme!.tabBar.other[type]!
        }
    }
    internal func themeChanged() {
        set(theme: getTheme())
    }
    public init() {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: CGRect.zero)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    public override init(frame: CGRect) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: frame)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    required init?(coder aDecoder: NSCoder) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(coder: aDecoder)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    func themeReady() {
        set(theme: getTheme())
    }
    deinit {
        ThemeEngine.standard.clients.remove(at: arrayIndex)
    }
    
}
class ThemeableLabel: UILabel, ThemeEngineDelegate {
    
    @IBInspectable public var type: String = "primary"
    
    private let arrayIndex: Int
    
    public func set(theme: LabelConfig) {
        let defaults: LabelConfig = getDefaults()
        self.alpha = theme.alpha ?? (defaults.alpha ?? 1.0)
        self.backgroundColor = theme.backgroundColor ?? defaults.backgroundColor
        self.clipsToBounds = theme.clipsToBounds ?? (defaults.clipsToBounds ?? true)
        self.tintColor = theme.tintColor ?? defaults.tintColor
        self.layer.cornerRadius = theme.cornerRadius ?? (defaults.cornerRadius ?? 0.0)
        self.font = theme.font ?? defaults.font
        self.textColor = theme.textColor ?? defaults.textColor
    }
    private func getDefaults() -> LabelConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.defaultTheme.label.primary!
        case "secondary":
            return ThemeEngine.standard.defaultTheme.label.secondary!
        default:
            return ThemeEngine.standard.defaultTheme.label.other[type]!
        }
    }
    private func getTheme() -> LabelConfig {
        switch type {
        case "primary":
            return ThemeEngine.standard.currentTheme!.label.primary!
        case "secondary":
            return ThemeEngine.standard.currentTheme!.label.secondary!
        default:
            return ThemeEngine.standard.currentTheme!.label.other[type]!
        }
    }
    internal func themeChanged() {
        set(theme: getTheme())
    }
    public init() {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: CGRect.zero)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    public override init(frame: CGRect) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(frame: frame)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    required init?(coder aDecoder: NSCoder) {
        arrayIndex = ThemeEngine.standard.clients.count
        super.init(coder: aDecoder)
        ThemeEngine.standard.clients.append(self)
        if ThemeEngine.standard.isReady {
            set(theme: getTheme())
        }
    }
    func themeReady() {
        set(theme: getTheme())
    }
    deinit {
        ThemeEngine.standard.clients.remove(at: arrayIndex)
    }
}
