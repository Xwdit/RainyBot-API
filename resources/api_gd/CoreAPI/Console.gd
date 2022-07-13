extends CoreAPI #继承自CoreAPI


## RainyBot控制台类，包含了各类与控制台输出直接相关的功能
class_name Console


## 在控制台中打印一个普通文本，可以传入任意类型值，将自动尝试转换为字符串
static func print_text(text)->void:
	return
	

## 在控制台中打印一个错误文本，可以传入任意类型值，将自动尝试转换为字符串
static func print_error(text)->void:
	return
	

## 在控制台中打印一个警告文本，可以传入任意类型值，将自动尝试转换为字符串
static func print_warning(text)->void:
	return
	

## 在控制台中打印一个成功文本，可以传入任意类型值，将自动尝试转换为字符串
static func print_success(text)->void:
	return


## 将控制台的内容立刻保存为以当前日期与时间命名的日志文件
static func save_log()->void:
	return


## 在控制台弹出一个具有指定文本的提示框，并且可以指定一个可选的自定义窗口标题
## [br][br]配合await关键词使用可以在提示框的确认按钮被点击时返回true，直接关闭时返回false
func popup_notification(text:String,title:String="提示")->bool:
	return false
	

## 在控制台弹出一个具有指定文本的确认框，并且可以指定一个可选的自定义窗口标题
## [br][br]配合await关键词使用可以在确认框的确认按钮被点击时返回true，点击取消或直接关闭时返回false
func popup_confirm(text:String,title:String="请确认")->bool:
	return false
