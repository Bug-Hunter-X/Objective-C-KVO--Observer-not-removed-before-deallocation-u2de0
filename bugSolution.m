To fix this, always remove observers in the observer's `dealloc` method or whenever the observation is no longer needed.

```objectivec
@interface MyObserver : NSObject
@property (nonatomic, weak) MyObservedObject *observedObject;
@end

@implementation MyObserver
- (instancetype)initWithObservedObject:(MyObservedObject *)object {
    self = [super init];
    if (self) {
        self.observedObject = object;
        [self.observedObject addObserver:self forKeyPath:@"someProperty" options:NSKeyValueObservingOptionNew context:NULL];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@