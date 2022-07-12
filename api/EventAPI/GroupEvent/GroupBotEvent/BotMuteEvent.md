# 类: BotMuteEvent  
  
**继承自:** GroupBotEvent  
  
RainyBot的Bot自身在群组中被禁言事件类，其实例记录了与一次Bot自身在群组中被禁言事件相关的数据  
  
# 方法 
  
- **init_meta(Dictionary dic)**  
  
通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用  
  
---  
  
- **get_duration()**  
  
获取Bot在此事件的群组中被禁言的时长  
  
---  
  
- **get_operator()**  
  
获取导致此事件的操作者的成员实例，可能是事件对应群组的管理员或群主  
  
---  
  
- **get_group()**  
  
获取此事件实例所对应的群组实例  
  
---  
  
