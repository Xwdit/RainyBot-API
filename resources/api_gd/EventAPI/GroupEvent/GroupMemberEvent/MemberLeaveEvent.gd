extends GroupMemberEvent #继承群组成员事件类，请勿随意改动


## RainyBot的群成员退群类，其实例记录了与一次群成员退群事件相关的数据
class_name MemberLeaveEvent


## 群成员退群的原因
enum ReasonType{
	QUIT, ## 群成员自行主动退群
	KICK ## 群成员被管理员/群主踢出群聊
}


## 通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用
static func init_meta(dic:Dictionary,reason_type:int)->MemberLeaveEvent:
	return null


## 获取此事件对应的群成员实例
func get_member()->GroupMember:
	return null
	

## 获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主，也可能是群成员自身
func get_operator()->GroupMember:
	return null
	

## 获取此事件所发生的群组实例
func get_group()->Group:
	return null
	

## 获取此事件发生的原因类型，详见上方的ReasonType枚举
func get_reason_type()->int:
	return 0


## 判断此事件的发生是否为指定的原因类型
func is_reason_type(reason:int)->bool:
	return false
