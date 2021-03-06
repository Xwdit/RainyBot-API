extends GroupAPI #继承GroupAPI类，用于RainyBot内部处理与加载，请勿进行改动


## RainyBot的群公告信息类，其实例记录了一个已发送的群公告的相关信息
##
## 这是RainyBot的群公告信息类，其实例记录了一个已发送的群公告的相关信息
## [br]此类实例通常不应被手动构造，而是由诸如获取群公告一类的方法返回
class_name GroupAnnounceInfo


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary)->GroupAnnounceInfo:
	return null


## 获取实例中的元数据字典，仅当你知道自己在做什么时才使用
func get_metadata()->Dictionary:
	return {}


## 使用指定字典覆盖实例中的元数据字典，仅当你知道自己在做什么时才使用
func set_metadata(dic:Dictionary)->void:
	return


## 获取此群公告的唯一ID，可用于后续删除等操作
func get_id()->String:
	return ""


## 获取此群公告相关的群的实例
func get_group()->Group:
	return null


## 获取此群公告中包含的内容文本
func get_content()->String:
	return ""


## 获取此群公告的发送者的ID
func get_sender_id()->int:
	return -1


## 获取此群公告是否已被全体群成员确认
func is_all_confirmed()->bool:
	return false
	

## 获取已确认此群公告的群成员人数
func get_confirmed_count()->int:
	return -1
	

## 获取此群公告发布时间的时间戳
func get_public_timestamp()->int:
	return -1
