# 类: FriendNickChangeEvent

[(返回目录)](./)

**继承自:** [FriendEvent](FriendEvent.md)

RainyBot的好友昵称变更事件类，记录了某次好友昵称变更事件的相关数据

## 方法

* static [FriendNickChangeEvent](FriendNickChangeEvent.md) **init\_meta (** [Dictionary](https://docs.godotengine.org/en/latest/classes/class\_dictionary.html) dic **)**

通过机器人协议后端的元数据字典构造一个此类的实例，仅当你知道自己在做什么时才使用

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_origin\_nickname ( )**

获取此事件对应的好友的原昵称

***

* [String](https://docs.godotengine.org/en/latest/classes/class\_string.html) **get\_current\_nickname ( )**

获取此事件对应的好友更改后的昵称

***

* [Member](Member.md) **get\_member ( )**

获取此事件对应的好友的成员实例

***
