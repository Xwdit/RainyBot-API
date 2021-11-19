extends Plugin #默认继承插件类，请勿随意改动

#将在此插件初始化时执行的操作
func _on_init():
	#设定插件相关信息(全部必填)
	set_plugin_info("chatbot","闲聊机器人", "Xwdit","1.0","让机器人具备聊天的能力" )


#将在此插件被完全加载后执行的操作
func _on_load():
	register_message_event(MessageEvent.Type.GROUP,"_chat")
	register_message_event(MessageEvent.Type.FRIEND,"_chat")


#将在此插件即将被卸载时执行的操作
func _on_unload():
	unregister_message_event(MessageEvent.Type.GROUP)
	unregister_message_event(MessageEvent.Type.FRIEND)


#接收到群消息事件
func _chat(event:MessageEvent):
	var text = event.get_message_chain().get_message_text([Message.Type.TEXT])
	var at_arr = event.get_message_chain().get_message_array([Message.Type.AT])
	if text.begins_with("萌萌酱骂我") :#判断聊天前缀
		
		#发送Http Get请求至聊天平台并等待回调
		var result = await Utils.send_http_get_request("https://api.shadiao.app/nmsl?level=min")
		
		if result is Dictionary: #判断回调是否成功
			var msg = TextMessage.init(result.data.text)
			event.reply(msg,true)
			
	elif text.begins_with("萌萌酱夸我") :#判断聊天前缀
		
		#发送Http Get请求至聊天平台并等待回调
		var result = await Utils.send_http_get_request("https://api.shadiao.app/chp")
		
		if result is Dictionary: #判断回调是否成功
			var msg = TextMessage.init(result.data.text)
			event.reply(msg,true)
			
	elif text.begins_with("萌萌酱")  or (at_arr.size()>0&&at_arr[0].get_target_id()==Bot.get_id()) :#判断聊天前缀
		if text.begins_with("萌萌酱"):
			text = text.substr(3)
			if text.replace(" ","").length() < 1:
				text = "菲菲"
			text = text.uri_encode()#转码为URL格式
		else:
			if text.replace(" ","").length() < 1:
				text = "菲菲"
			text = text.uri_encode()#转码为URL格式
		
		#发送Http Get请求至聊天平台并等待回调
		var result = await Utils.send_http_get_request("http://api.qingyunke.com/api.php?key=free&appid=0&msg="+text)
		
		if result is Dictionary: #判断回调是否成功
			if result.has("content"):
				var reply:String = result["content"] #获取聊天平台回调中的文本
				reply = reply.replace("菲菲","萌萌酱").replace("{br}","\n") #替换关键词
				var msg = TextMessage.init(reply)
				event.reply(msg,true)
