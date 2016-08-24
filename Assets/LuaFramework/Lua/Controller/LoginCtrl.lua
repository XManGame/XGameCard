
LoginCtrl = {};
local this = LoginCtrl;

local message;
local transform;
local gameObject;

--构建函数--
function LoginCtrl.New()
	logWarn("LoginCtrl.New--->>");
	return this;
end

function LoginCtrl.Awake()
	logWarn("LoginCtrl.Awake--->>");
	panelMgr:CreatePanel('Login', this.OnCreate);
end

--启动事件--
function LoginCtrl.OnCreate(obj)
	gameObject = obj;

	message = gameObject:GetComponent('LuaBehaviour');
	message:AddClick(LoginPanel.btnLogin, this.OnBtnLoginClick);

	logWarn("Start lua--->>"..gameObject.name);
end

--单击事件--
function LoginCtrl.OnBtnLoginClick(go)
	-- logWarn('-----------'..LoginPanel.edtName)
	local name = LoginPanel.edtName:GetComponent('Text').text;
	local pwd = LoginPanel.edtPwd:GetComponent('Text').text;
	log("Login as Name:"..name..",Pwd:"..pwd);
end

--关闭事件--
function LoginCtrl.Close()
	panelMgr:ClosePanel(CtrlNames.Login);
end