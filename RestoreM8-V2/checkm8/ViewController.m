#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@implementation ViewController
- (IBAction)update:(id)sender {
     system("rm -rf ~/Documents/RestoreM8-V2");
    system("git clone https://github.com/80036nd/RestoreM8-Code-V2 ~/Documents/RestoreM8-V2");
    NSAlert *alert = [NSAlert alertWithMessageText:@"Resources Installed! Now continue to Step 1" defaultButton:@"Ok" alternateButton:nil otherButton:nil informativeTextWithFormat:@" "];
           [alert runModal];
}
- (IBAction)Restorecatalina:(id)sender {
    NSAlert *alert = [NSAlert alertWithMessageText:@"This will take a bit of time, Make sure you monitor the Terminal" defaultButton:@"Restore Device!" alternateButton:nil otherButton:nil informativeTextWithFormat:@"This will open a terminal running futurerestore"];
    [alert runModal];
    system("chmod +x ~/Documents/RestoreM8-V2/restore.sh; /System/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal ~/Documents/RestoreM8-V2/restore.sh");
}
- (IBAction)Restoremojave:(id)sender {
    NSAlert *alert = [NSAlert alertWithMessageText:@"This will take a bit of time, Make sure you monitor the Terminal" defaultButton:@"Restore Device!" alternateButton:nil otherButton:nil informativeTextWithFormat:@"This will open a terminal running futurerestore"];
    [alert runModal];
    system("chmod +x ~/Documents/RestoreM8-V2/restore.sh; /Applications/Utilities/Terminal.app/Contents/MacOS/Terminal ~/Documents/RestoreM8-V2/restore.sh");
}
@end
