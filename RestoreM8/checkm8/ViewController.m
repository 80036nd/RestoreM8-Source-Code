#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@implementation ViewController
- (IBAction)update:(id)sender {
     system("rm -rf ~/Documents/RestoreM8");
    system("git clone https://github.com/80036nd/RestoreM8-Code ~/Documents/RestoreM8");
    NSAlert *alert = [NSAlert alertWithMessageText:@"Resources Installed! Now continue to Step 1" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@" "];
           [alert runModal];
}
- (IBAction)Restore:(id)sender {
    NSAlert *alert = [NSAlert alertWithMessageText:@"This will take a bit of time, Make sure you have completed all of the steps" defaultButton:@"Restore Device!" alternateButton:nil otherButton:nil informativeTextWithFormat:@"Enjoy!"];
    [alert runModal];
    system("sh ~/Documents/RestoreM8/restore.sh");
}

@end
