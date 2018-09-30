%hook SocketManager
- (void)applicationResignActive {
}
- (void)applicationWillResignActive:(id)arg1 {
}
%end

%hook AppDelegate
- (void)applicationWillResignActive:(id)arg1 {
}
- (void)checkForJailBreakIn_didFinishLaunchingWithOptions {
}
%end

%hook MobileAuthenticationController
- (void)reSignUpcomplete:(id)arg1 {
}
%end

%hook AppJailBrokenChecker
+ (unsigned char)isAppJailbroken {
    return %orig;
}
%end

%hook SFAntiPiracy
+ (bool)isTheDeviceJailbroken {
    return %orig;
}
%end

%hook ANSMetadata
- (bool)computeIsJailbroken {
    return %orig;
}
- (bool)isJailbroken {
    return 0;
}
%end
