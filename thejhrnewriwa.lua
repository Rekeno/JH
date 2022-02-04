local KESKULL = false
local RSKULL = false

local RCALABASH = false

function changeCalabashColor(RGB)
    local Calabash = game.Players.LocalPlayer.Character:FindFirstChild("CapraSkull")
    if Calabash then
        pcall(function()
            Calabash.Color = RGB
        end)
    end
end

function changeSkullColor(RGB)
    local Skull = game.Players.LocalPlayer.Character:FindFirstChild("CapraSkull")
    if Skull then
        pcall(function()
            Skull.Color = RGB
        end)
    end
end

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "Stay Exploity, Key Exploits Resonance",
    Style = 1,
    SizeX = 300,
    SizeY = 250,
    Theme = "Light",
    ColorOverrides = {
		MainFrame = Color3.fromRGB(255,255,255),
		Minimise = Color3.fromRGB(255,106,0),
		MinimiseAccent = Color3.fromRGB(0,0,255),
		Maximise = Color3.fromRGB(25,255,0),
		MaximiseAccent = Color3.fromRGB(0,255,110),
		NavBar = Color3.fromRGB(0,0,255),
		NavBarAccent = Color3.fromRGB(255,255,255),
		NavBarInvert = Color3.fromRGB(30,30,30),
		TitleBar = Color3.fromRGB(0,0,255),
		TitleBarAccent = Color3.fromRGB(255,255,255),
		Overlay = Color3.fromRGB(0,0,255),
		Banner = Color3.fromRGB(255,255,255),
		BannerAccent = Color3.fromRGB(0,0,255),
		Content = Color3.fromRGB(0,0,255),
		Button = Color3.fromRGB(0,0,255),
		ButtonAccent = Color3.fromRGB(255,255,255),
		ChipSet = Color3.fromRGB(0,0,255),
		ChipSetAccent = Color3.fromRGB(255,255,255),
		DataTable = Color3.fromRGB(0,0,255),
		DataTableAccent = Color3.fromRGB(255,255,255),
		Slider = Color3.fromRGB(255,255,255),
		SliderAccent = Color3.fromRGB(0,0,255),
		Toggle = Color3.fromRGB(0,0,255),
		ToggleAccent = Color3.fromRGB(255,255,255),
		Dropdown = Color3.fromRGB(255,255,255),
		DropdownAccent = Color3.fromRGB(0,0,255),
		ColorPicker = Color3.fromRGB(255,255,255),
		ColorPickerAccent = Color3.fromRGB(0,0,255),
		TextField = Color3.fromRGB(0,0,255),
		TextFieldAccent = Color3.fromRGB(0,0,255),
	}
})

local Main = X.New({
    Title = "capra"
})

local B = Main.Toggle({
    Text = "key exploits capra",
    Callback = function(Value)
        KESKULL = Value
    end,
    Enabled = false
})

local D = Main.Toggle({
    Text = "rainbow capra",
    Callback = function(Value)
        RSKULL = Value
    end,
    Enabled = false
})

local calabash = X.New({Title = "calabash"})

local F = calabash.Toggle({
    Text = "rainbow calabash",
    Callback = function(Value)
        RCALABASH = Value
    end,
    Enabled = false
})

local G = calabash.Button({
    Text = "Red Calabash",
    Callback = function()
        changeCalabashColor(Color3.fromRGB(200, 60, 80))
    end
})

local t = 2.5

task.spawn(function()
    pcall(function()
        while wait() do
            if RSKULL then
                local hue = tick() % t / t
                local color = Color3.fromHSV(hue, 1, 1)
                changeSkullColor(color)
            end
            if RCALABASH then
                local hue = tick() % t / t
                local color = Color3.fromHSV(hue, 1, 1)
                changeCalabashColor(color)
            end
            if KESKULL then
                local hue = tick() % t / t
                local color = Color3.fromHSV(0.666666667, hue, 1)
                changeSkullColor(color)
            end
        end
    end)
end)
