#import <Metal/MTLDevice.h>

NSString* getDeviceName()
{
    NSArray<id<MTLDevice>> *availableDevices = MTLCopyAllDevices();

    for(int i = 0; i < [availableDevices count]; i++)
    {
        NSLog(@"Device Index[%d]: %@", i, [availableDevices objectAtIndex: i].name);
    }
    return [availableDevices objectAtIndex: 0].name;
}
