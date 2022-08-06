import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
    override func awakeFromNib() {
        let flutterViewController = FlutterViewController.init()
        self.contentViewController = flutterViewController
        
        // タイトルバー(閉じるボタンとか最小化ボタンとかタイトルとか)の部分を非表示にする
        // 表示したい場合はrawValueに15を指定すると全部有効
        self.styleMask = NSWindow.StyleMask.borderless
        // frameをセットする
        self.animator().setFrame(self.frame, display: true, animate: true)
        // 全ての仮想デスクトップに表示する
        self.collectionBehavior = NSWindow.CollectionBehavior.canJoinAllSpaces
        // 常に最前面で表示されるように
        self.level = NSWindow.Level.init(rawValue: 2)
        
        RegisterGeneratedPlugins(registry: flutterViewController)
        super.awakeFromNib()
    }
}
