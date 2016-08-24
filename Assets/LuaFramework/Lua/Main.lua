--主入口函数。从这里开始lua逻辑
function Main()					
	-- local go = UnityEngine.GameObject('go')
 --    go.transform.position = Vector3.one
 --    go.name = 'test_go'
end

--场景切换通知
function OnLevelWasLoaded(level)
	Time.timeSinceLevelLoad = 0
end