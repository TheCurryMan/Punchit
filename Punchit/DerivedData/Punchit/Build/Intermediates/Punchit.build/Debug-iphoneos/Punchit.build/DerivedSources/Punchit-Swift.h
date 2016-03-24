// Generated by Apple Swift version 2.1.1 (swiftlang-700.1.101.15 clang-700.1.81)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if defined(__has_include) && __has_include(<uchar.h>)
# include <uchar.h>
#elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
#endif

typedef struct _NSZone NSZone;

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted) 
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
#endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import ObjectiveC;
@import CoreGraphics;
@import CoreLocation;
@import BDBOAuth1Manager;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIWindow;
@class UIApplication;
@class NSObject;
@class NSURL;

SWIFT_CLASS("_TtC7Punchit11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * __nullable window;
- (BOOL)application:(UIApplication * __nonnull)application didFinishLaunchingWithOptions:(NSDictionary * __nullable)launchOptions;
- (void)applicationWillResignActive:(UIApplication * __nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * __nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * __nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * __nonnull)application;
- (void)applicationWillTerminate:(UIApplication * __nonnull)application;
- (BOOL)application:(UIApplication * __nonnull)application openURL:(NSURL * __nonnull)url sourceApplication:(NSString * __nullable)sourceApplication annotation:(id __nullable)annotation;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class NSNumber;
@class NSDictionary;
@class NSError;

SWIFT_CLASS("_TtC7Punchit8Business")
@interface Business : NSObject
@property (nonatomic, readonly, copy) NSString * __nullable name;
@property (nonatomic, readonly, copy) NSString * __nullable address;
@property (nonatomic, readonly, strong) NSURL * __nullable imageURL;
@property (nonatomic, readonly, copy) NSString * __nullable categories;
@property (nonatomic, readonly, copy) NSString * __nullable distance;
@property (nonatomic, readonly, strong) NSURL * __nullable ratingImageURL;
@property (nonatomic, readonly, strong) NSNumber * __nullable reviewCount;
@property (nonatomic, readonly, copy) NSString * __nullable phoneNumber;
@property (nonatomic, readonly, copy) NSString * __nullable phoneSimple;
@property (nonatomic, readonly, copy) NSString * __nullable reviewText;
- (nonnull instancetype)initWithDictionary:(NSDictionary * __nonnull)dictionary OBJC_DESIGNATED_INITIALIZER;
+ (NSArray<Business *> * __nonnull)businessesWithArray:(NSArray<NSDictionary *> * __nonnull)array;
+ (void)searchWithTerm:(NSString * __nonnull)term completion:(void (^ __nonnull)(NSArray<Business *> * __null_unspecified, NSError * __null_unspecified))completion;
@end

@class UILabel;
@class NSCoder;

SWIFT_CLASS("_TtC7Punchit21DetailedViewTableCell")
@interface DetailedViewTableCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified itemName;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified itemPoints;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * __nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIActivityIndicatorView;
@class Firebase;
@class NSBundle;

SWIFT_CLASS("_TtC7Punchit21LoadingViewController")
@interface LoadingViewController : UIViewController
@property (nonatomic, strong) UIActivityIndicatorView * __nonnull activityIndicator;
@property (nonatomic, readonly, strong) Firebase * __null_unspecified ref;
- (void)viewDidLoad;
- (void)nextpage;
- (void)didReceiveMemoryWarning;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UITextField;
@class UIButton;

SWIFT_CLASS("_TtC7Punchit19LoginViewController")
@interface LoginViewController : UIViewController
@property (nonatomic, strong) IBOutlet UITextField * __null_unspecified email;
@property (nonatomic, strong) IBOutlet UITextField * __null_unspecified password;
@property (nonatomic) BOOL merchant;
@property (nonatomic, strong) Firebase * __null_unspecified ref;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (IBAction)login:(UIButton * __nonnull)sender;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7Punchit26MerchantHomeViewController")
@interface MerchantHomeViewController : UIViewController
- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (IBAction)logOut:(id __nonnull)sender;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7Punchit28MerchantPointsViewController")
@interface MerchantPointsViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified lastVisit;
@property (nonatomic, strong) IBOutlet UITextField * __null_unspecified earnField;
@property (nonatomic, strong) IBOutlet UITextField * __null_unspecified redeemField;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified currentPoints;
@property (nonatomic, copy) NSString * __nonnull curPoints;
@property (nonatomic, copy) NSString * __nonnull userID;
@property (nonatomic, copy) NSString * __nonnull restaurantID;
@property (nonatomic, copy) NSString * __nonnull restaurantPhone;
@property (nonatomic, copy) NSString * __nonnull link;
@property (nonatomic, copy) NSString * __nonnull name;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull transac;
@property (nonatomic, readonly, strong) Firebase * __null_unspecified ref;
- (void)viewDidLoad;
- (id __nullable)nullToNil:(id __nullable)value;
- (void)getMerch;
- (void)didReceiveMemoryWarning;
- (IBAction)earn:(id __nonnull)sender;
- (IBAction)redeem:(id __nonnull)sender;
- (void)didTapView;
- (void)alert:(NSString * __nonnull)title message:(NSString * __nonnull)message action:(NSString * __nonnull)action;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class QRCode;
@class UIStoryboardSegue;

SWIFT_CLASS("_TtC7Punchit26MerchantScanViewController")
@interface MerchantScanViewController : UIViewController
@property (nonatomic, strong) QRCode * __nonnull scanner;
@property (nonatomic, copy) NSString * __nonnull userid;
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (void)didReceiveMemoryWarning;
- (void)prepareForSegue:(UIStoryboardSegue * __nonnull)segue sender:(id __nullable)sender;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7Punchit23PCContentViewController")
@interface PCContentViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified name;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified cardpunch;
@property (nonatomic, copy) NSString * __null_unspecified restaurantText;
@property (nonatomic, copy) NSString * __null_unspecified punchedText;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIPageViewController;
@class NSArray;

SWIFT_CLASS("_TtC7Punchit23PunchCardViewController")
@interface PunchCardViewController : UIViewController <UIPageViewControllerDataSource>
@property (nonatomic, strong) UIPageViewController * __null_unspecified pageViewController;
@property (nonatomic, strong) NSArray * __null_unspecified pageRestaurants;
@property (nonatomic, strong) NSArray * __null_unspecified pagePunches;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (PCContentViewController * __nonnull)viewControllerAtIndex:(NSInteger)index;
- (UIViewController * __nullable)pageViewController:(UIPageViewController * __nonnull)pageViewController viewControllerBeforeViewController:(UIViewController * __nonnull)viewController;
- (UIViewController * __nullable)pageViewController:(UIPageViewController * __nonnull)pageViewController viewControllerAfterViewController:(UIViewController * __nonnull)viewController;
- (NSInteger)presentationCountForPageViewController:(UIPageViewController * __nonnull)pageViewController;
- (NSInteger)presentationIndexForPageViewController:(UIPageViewController * __nonnull)pageViewController;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7Punchit23PunchPointTableViewCell")
@interface PunchPointTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified points;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified lastVisit;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified name;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * __nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7Punchit25PunchPointsViewController")
@interface PunchPointsViewController : UIViewController
@property (nonatomic, copy) NSArray<NSString *> * __nonnull points;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull lastVisits;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull restNames;
@property (nonatomic, strong) Firebase * __null_unspecified myRootRef;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UITableView;
@class UIImageView;
@class NSIndexPath;

SWIFT_CLASS("_TtC7Punchit30RestaurantDetailViewController")
@interface RestaurantDetailViewController : UIViewController <UIScrollViewDelegate, UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, copy) NSString * __nonnull name;
@property (nonatomic, copy) NSString * __nonnull promotion;
@property (nonatomic, copy) NSString * __nonnull points;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull tiers;
@property (nonatomic, copy) NSString * __nonnull address;
@property (nonatomic, copy) NSString * __nonnull distance;
@property (nonatomic, strong) NSURL * __nonnull imageURL;
@property (nonatomic, copy) NSString * __nonnull review;
@property (nonatomic, copy) NSString * __nonnull phoneNumber;
@property (nonatomic, copy) NSString * __nonnull phoneSimple;
@property (nonatomic, copy) NSString * __nonnull tier1;
@property (nonatomic, copy) NSString * __nonnull tier2;
@property (nonatomic, copy) NSString * __nonnull tier3;
@property (nonatomic, copy) NSString * __nonnull tier4;
@property (nonatomic) NSInteger tierCount;
@property (nonatomic, strong) Firebase * __null_unspecified myRootRef;
@property (nonatomic, strong) IBOutlet UITableView * __null_unspecified tableView;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified rName;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified rPromotion;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified rPoints;
@property (nonatomic, strong) IBOutlet UITableView * __null_unspecified rTiers;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified rAddress;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified rNumDistance;
@property (nonatomic, strong) IBOutlet UIImageView * __null_unspecified rImage;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified rReview;
@property (nonatomic) NSInteger curPoints;
- (void)viewDidLoad;
- (void)getPoints;
- (void)didReceiveMemoryWarning;
- (void)tableView:(UITableView * __nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (CGFloat)tableView:(UITableView * __nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (NSInteger)tableView:(UITableView * __nonnull)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell * __nonnull)tableView:(UITableView * __nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7Punchit23RestaurantTableViewCell")
@interface RestaurantTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified Title;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified Address;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified Distance;
@property (nonatomic, strong) IBOutlet UIImageView * __null_unspecified Logo;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * __nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class CLLocationManager;
@class CLLocation;

SWIFT_CLASS("_TtC7Punchit24RestaurantViewController")
@interface RestaurantViewController : UIViewController <UIScrollViewDelegate, UITableViewDelegate, CLLocationManagerDelegate, UITableViewDataSource>
@property (nonatomic, copy) NSArray<NSString *> * __nonnull names;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull address;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull distance;
@property (nonatomic, copy) NSArray<NSURL *> * __nonnull logo;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull phone;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull phoneSimple;
@property (nonatomic, copy) NSArray<NSString *> * __nonnull review;
@property (nonatomic) NSInteger selectedRow;
@property (nonatomic, readonly, strong) CLLocationManager * __nonnull locationManager;
@property (nonatomic, strong) IBOutlet UITableView * __null_unspecified tableView;
@property (nonatomic, strong) Firebase * __null_unspecified myRootRef;
@property (nonatomic, copy) NSArray<Business *> * __null_unspecified businesses;
- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;
- (void)viewDidLoad;
- (void)getYelpData;
- (void)locationManager:(CLLocationManager * __nonnull)manager didUpdateLocations:(NSArray<CLLocation *> * __nonnull)locations;
- (NSInteger)tableView:(UITableView * __nonnull)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell * __nonnull)tableView:(UITableView * __nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (CGFloat)tableView:(UITableView * __nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (void)tableView:(UITableView * __nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (void)didReceiveMemoryWarning;
- (void)prepareForSegue:(UIStoryboardSegue * __nonnull)segue sender:(id __nullable)sender;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7Punchit18ScanViewController")
@interface ScanViewController : UIViewController
@property (nonatomic, readonly, strong) QRCode * __nonnull scanner;
@property (nonatomic, readonly, strong) Firebase * __null_unspecified ref;
@property (nonatomic, strong) IBOutlet UIImageView * __null_unspecified iconView;
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7Punchit22SettingsViewController")
@interface SettingsViewController : UIViewController
@property (nonatomic, readonly, strong) Firebase * __null_unspecified ref;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (IBAction)logOut:(id __nonnull)sender;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UITouch;
@class UIEvent;

SWIFT_CLASS("_TtC7Punchit20SignUpViewController")
@interface SignUpViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic, strong) IBOutlet UITextField * __null_unspecified email;
@property (nonatomic, strong) IBOutlet UITextField * __null_unspecified username;
@property (nonatomic, strong) IBOutlet UITextField * __null_unspecified password;
@property (nonatomic, strong) IBOutlet UIButton * __null_unspecified signup;
@property (nonatomic, strong) IBOutlet UIButton * __null_unspecified fbsignup;
@property (nonatomic, strong) IBOutlet UIButton * __null_unspecified googsignup;
@property (nonatomic, strong) Firebase * __null_unspecified ref;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (BOOL)textFieldShouldReturn:(UITextField * __nonnull)textField;
- (void)touchesBegan:(NSSet<UITouch *> * __nonnull)touches withEvent:(UIEvent * __nullable)event;
- (IBAction)signUp:(UIButton * __nonnull)sender;
- (IBAction)fbLogin:(id __nonnull)sender;
- (IBAction)merchantLogIn:(id __nonnull)sender;
- (void)prepareForSegue:(UIStoryboardSegue * __nonnull)segue sender:(id __nullable)sender;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class AFHTTPRequestOperation;

SWIFT_CLASS("_TtC7Punchit10YelpClient")
@interface YelpClient : BDBOAuth1RequestOperationManager
@property (nonatomic, copy) NSString * __null_unspecified accessToken;
@property (nonatomic, copy) NSString * __null_unspecified accessSecret;
+ (YelpClient * __nonnull)sharedInstance;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithConsumerKey:(NSString * __null_unspecified)key consumerSecret:(NSString * __null_unspecified)secret accessToken:(NSString * __null_unspecified)accessToken accessSecret:(NSString * __null_unspecified)accessSecret OBJC_DESIGNATED_INITIALIZER;
- (AFHTTPRequestOperation * __nonnull)searchWithTerm:(NSString * __nonnull)term completion:(void (^ __nonnull)(NSArray<Business *> * __null_unspecified, NSError * __null_unspecified))completion;
@end

#pragma clang diagnostic pop
