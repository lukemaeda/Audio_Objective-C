#import "MainScene.h"

@implementation MainScene

// viewDidLoadと同じ立ち上げ時に起動動作
-(void) didLoadFromCCB
{
    // タッチイベントを有効にする。
    self.userInteractionEnabled = TRUE;
    
}

// 画面に指を一本以上タッチしたときに実行されるメソッド
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    
    NSLog(@"Touch");
    
    // 一回再生
    [[OALSimpleAudio sharedInstance] playEffect:@"switch1.mp3"];
    
    // ループ再生
    [[OALSimpleAudio sharedInstance] playBg:@"switch1.mp3" loop:YES];
    
}


@end
