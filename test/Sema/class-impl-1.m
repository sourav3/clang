typedef int INTF3; // expected-error {{previous definition is here}}

@interface SUPER @end // expected-error {{previous definition is here}}

@interface OBJECT @end

@interface INTF  : OBJECT
@end

@implementation INTF @end 

@implementation INTF //  expected-error {{reimplementation of class 'INTF'}}
@end


@interface INTF1 : OBJECT
@end

@implementation INTF1 : SUPER // expected-error {{conflicting super class name 'SUPER'}}
@end

@interface INTF2 
@end

@implementation INTF2 : SUPR //  expected-error {{cannot find interface declaration for 'SUPR', superclass of 'INTF2'}}
@end

@implementation INTF3 @end // expected-error {{redefinition of 'INTF3' as different kind of symbol}}

@implementation INTF4 @end // expected-warning {{cannot find interface declaration for 'INTF4'}}

