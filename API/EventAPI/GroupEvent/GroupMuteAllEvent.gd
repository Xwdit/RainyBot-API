extends GroupEvent


class_name GroupMuteAllEvent


static func init_meta(dic:Dictionary)->GroupMuteAllEvent:
	return null


func get_origin_state()->bool:
	return false
	
	
func get_current_state()->bool:
	return false
	
	
func get_operator()->GroupMember:
	return null
	
	
func get_group()->Group:
	return null
