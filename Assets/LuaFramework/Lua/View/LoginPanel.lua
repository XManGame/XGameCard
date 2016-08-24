local transform;
local gameObject;

LoginPanel = {};
local this = LoginPanel;

--启动事件--
function LoginPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;

	this.InitPanel();
	-- logWarn("Awake lua--->>"..gameObject.name);
end

--初始化面板--
function LoginPanel.InitPanel()
	this.edtName = transform:FindChild("EdtName/Text").gameObject;
	this.edtPwd = transform:FindChild("EdtPwd/Text").gameObject;
	this.btnLogin = transform:FindChild("BtnLogin").gameObject;
end

--单击事件--
function LoginPanel.OnDestroy()
	-- logWarn("OnDestroy---->>>");
end

