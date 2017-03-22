# SFJScrollLabelDemo
## 跑马灯效果的实现方案。适合设置一条text信息,多条需要自己组建text信息
### 1.引入SFJScrollLabel文件夹
### 2.在使用的类中导入SFJSCrollLabel.h
### 3.可使用的接口：
```Objective-c
// 速度 父类
@property (nonatomic) CGFloat speed;

// 子类  
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIFont *font;
```
### 4.具体使用
```Objective-c
SFJScrollLabel *label = [[SFJScrollLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
label.text = @"hello world!、、、、";
label.textColor = [UIColor purpleColor];
label.font = [UIFont systemFontOfSize:17];
label.speed = 2;
[self.view addSubview:label];
```
实现原理是，通过UIView的平移动画来实现的，为我们的需要滚动的label预先布置好一个会滚动的View。
然后将我们创建好的label放在这个会滚动的view上，
SFJScrollLabel继承制SFJScrollLabelView,当使用接口不满足需要时，不妨看看它父类的接口。
