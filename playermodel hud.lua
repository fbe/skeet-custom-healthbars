----------------------------------------------------------
--               MAKE SURE YOU HAVE THESE               --
----------------------------------------------------------

local images = require ("gamesense/images") -- https://gamesense.pub/forums/viewtopic.php?id=22917
local surface = require ("gamesense/surface") -- https://gamesense.pub/forums/viewtopic.php?id=18793
local csgo_weapons = require ("gamesense/csgo_weapons") -- https://gamesense.pub/forums/viewtopic.php?id=18807
local http = require ("gamesense/http") -- https://gamesense.pub/forums/viewtopic.php?id=19253
-- FONT USED: https://anonfiles.com/l6Q6Xerdpd/pirulen_rg_ttf

----------------------------------------------------------
--               MAKE SURE YOU HAVE THESE               --
----------------------------------------------------------

local font = surface.create_font("Pirulen RG", 25, 500, {0x010, 0x200})
local font2 = surface.create_font("Pirulen RG", 22, 500, {0x010, 0x001, 0x080, 0x020})
local enable = ui.new_checkbox("LUA", "A", "Enable HUD")

http.get("https://i.imgur.com/40wCfYL.png", function(success, response)
    if success and response.status == 200 then
        ava = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/wAn5KWt.png", function(success, response)
    if success and response.status == 200 then
        blackwolf = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/GoqKb9H.png", function(success, response)
    if success and response.status == 200 then
        buckshot = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/67qxZV4.png", function(success, response)
    if success and response.status == 200 then
        commander = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/6WPIKyo.png", function(success, response)
    if success and response.status == 200 then
        company = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/MWhPPGF.png", function(success, response)
    if success and response.status == 200 then
        delrow = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/ypryb1u.png", function(success, response)
    if success and response.status == 200 then
        doctor = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/pAiR0Yu.png", function(success, response)
    if success and response.status == 200 then
        dragomir = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/ALdUwoE.png", function(success, response)
    if success and response.status == 200 then
        enforcer = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/ePyhItB.png", function(success, response)
    if success and response.status == 200 then
        groundrebel = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/KRxumIF.png", function(success, response)
    if success and response.status == 200 then
        maximus = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/DPWOovG.png", function(success, response)
    if success and response.status == 200 then
        mccoy = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/lOQLsuh.png", function(success, response)
    if success and response.status == 200 then
        michael = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/vVonQuX.png", function(success, response)
    if success and response.status == 200 then
        muhlik = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/xO1Tose.png", function(success, response)
    if success and response.status == 200 then
        orisis = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/Gfg4pAh.png", function(success, response)
    if success and response.status == 200 then
        rezan = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/rE1oMg0.png", function(success, response)
    if success and response.status == 200 then
        shahmat = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/DH9JGLj.png", function(success, response)
    if success and response.status == 200 then
        slingshot = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/PuL1nQP.png", function(success, response)
    if success and response.status == 200 then
        soldier = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/lDAYKqu.png", function(success, response)
    if success and response.status == 200 then
        squadron = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/V0wiqZa.png", function(success, response)
    if success and response.status == 200 then
        team6soldier = images.load(response.body)
    end
end)
http.get("https://i.imgur.com/oYH45P8.png", function(success, response)
    if success and response.status == 200 then
        operator = images.load(response.body)
    end
end)

local screen = {client.screen_size()}
local center = {screen[1]/2, screen[2]/2}
local bottom = {screen[1], screen[2]}


local player_models  = {
	["Blackwolf | Sabre"] = "models/player/custom_player/legacy/tm_balkan_variantj.mdl",
	["Rezan The Ready | Sabre"] = "models/player/custom_player/legacy/tm_balkan_variantg.mdl",
	["Maximus | Sabre"] = "models/player/custom_player/legacy/tm_balkan_varianti.mdl",
	["Dragomir | Sabre"] = "models/player/custom_player/legacy/tm_balkan_variantf.mdl",
	["Lt. Commander Ricksaw | NSWC SEAL"] = "models/player/custom_player/legacy/ctm_st6_varianti.mdl",
	["Two Times McCoy | USAF TACP"] = "models/player/custom_player/legacy/ctm_st6_variantm.mdl",
	["Buckshot | NSWC SEAL"] = "models/player/custom_player/legacy/ctm_st6_variantg.mdl",
	["Seal Team 6 Soldier | NSWC SEAL"] = "models/player/custom_player/legacy/ctm_st6_variante.mdl",
	["3rd Commando Company | KSK"] = "models/player/custom_player/legacy/ctm_st6_variantk.mdl",
	["The Doctor Romanov | Sabre"] = "models/player/custom_player/legacy/tm_balkan_varianth.mdl",
	["Michael Syfers | FBI Sniper"] = "models/player/custom_player/legacy/ctm_fbi_varianth.mdl",
	["Markus Delrow | FBI HRT"] = "models/player/custom_player/legacy/ctm_fbi_variantg.mdl",
	["Operator | FBI SWAT"] = "models/player/custom_player/legacy/ctm_fbi_variantf.mdl",
	["Slingshot | Phoenix"] = "models/player/custom_player/legacy/tm_phoenix_variantg.mdl",
	["Enforcer | Phoenix"] = "models/player/custom_player/legacy/tm_phoenix_variantf.mdl",
	["Soldier | Phoenix"] = "models/player/custom_player/legacy/tm_phoenix_varianth.mdl",
	["The Elite Mr. Muhlik | Elite Crew"] = "models/player/custom_player/legacy/tm_leet_variantf.mdl",
	["Prof. Shahmat | Elite Crew"] = "models/player/custom_player/legacy/tm_leet_varianti.mdl",
	["Osiris | Elite Crew"] = "models/player/custom_player/legacy/tm_leet_varianth.mdl",
	["Ground Rebel  | Elite Crew"] = "models/player/custom_player/legacy/tm_leet_variantg.mdl",
	["Special Agent Ava | FBI"] = "models/player/custom_player/legacy/ctm_fbi_variantb.mdl",
	["B Squadron Officer | SAS"] = "models/player/custom_player/legacy/ctm_sas_variantf.mdl",
}

local ffi = require("ffi")

ffi.cdef[[
    typedef struct 
    {
    	void*   fnHandle;        
    	char    szName[260];     
    	int     nLoadFlags;      
    	int     nServerCount;    
    	int     type;            
    	int     flags;           
    	float  vecMins[3];       
    	float  vecMaxs[3];       
    	float   radius;          
    	char    pad[0x1C];       
    }model_t;
    
    typedef int(__thiscall* get_model_index_t)(void*, const char*);
    typedef const model_t(__thiscall* find_or_load_model_t)(void*, const char*);
    typedef int(__thiscall* add_string_t)(void*, bool, const char*, int, const void*);
    typedef void*(__thiscall* find_table_t)(void*, const char*);
    typedef void(__thiscall* set_model_index_t)(void*, int);
    typedef int(__thiscall* precache_model_t)(void*, const char*, bool);
    typedef void*(__thiscall* get_client_entity_t)(void*, int);
]]

local class_ptr = ffi.typeof("void***")

local rawientitylist = client.create_interface("client_panorama.dll", "VClientEntityList003") or error("VClientEntityList003 wasnt found", 2)
local ientitylist = ffi.cast(class_ptr, rawientitylist) or error("rawientitylist is nil", 2)
local get_client_entity = ffi.cast("get_client_entity_t", ientitylist[0][3]) or error("get_client_entity is nil", 2)

local rawivmodelinfo = client.create_interface("engine.dll", "VModelInfoClient004") or error("VModelInfoClient004 wasnt found", 2)
local ivmodelinfo = ffi.cast(class_ptr, rawivmodelinfo) or error("rawivmodelinfo is nil", 2)
local get_model_index = ffi.cast("get_model_index_t", ivmodelinfo[0][2]) or error("get_model_info is nil", 2)
local find_or_load_model = ffi.cast("find_or_load_model_t", ivmodelinfo[0][39]) or error("find_or_load_model is nil", 2)

local rawnetworkstringtablecontainer = client.create_interface("engine.dll", "VEngineClientStringTable001") or error("VEngineClientStringTable001 wasnt found", 2)
local networkstringtablecontainer = ffi.cast(class_ptr, rawnetworkstringtablecontainer) or error("rawnetworkstringtablecontainer is nil", 2)
local find_table = ffi.cast("find_table_t", networkstringtablecontainer[0][3]) or error("find_table is nil", 2)

local cl_fullupdate = cvar.cl_fullupdate

local model_names = {}
for k,v in pairs(player_models) do
    table.insert(model_names, k)
end

local localplayer_model = ui.new_combobox("lua", "a", "\nmodel", model_names)
local replace_localplayer_model = ui.new_checkbox("lua", "a", "Replace model with HUD model")

local function precache_model(modelname)
    local rawprecache_table = find_table(networkstringtablecontainer, "modelprecache") or error("couldnt find modelprecache", 2)
    if rawprecache_table then 
        local precache_table = ffi.cast(class_ptr, rawprecache_table) or error("couldnt cast precache_table", 2)
        if precache_table then 
            local add_string = ffi.cast("add_string_t", precache_table[0][8]) or error("add_string is nil", 2)

            find_or_load_model(ivmodelinfo, modelname)
            local idx = add_string(precache_table, false, modelname, -1, nil)
            if idx == -1 then 
                return false
            end
        end
    end
    return true
end

local function set_model_index(entity, idx)
    local raw_entity = get_client_entity(ientitylist, entity)
    if raw_entity then 
        local gce_entity = ffi.cast(class_ptr, raw_entity)
        local a_set_model_index = ffi.cast("set_model_index_t", gce_entity[0][75])
        if a_set_model_index == nil then 
            error("set_model_index is nil")
        end
        a_set_model_index(gce_entity, idx)
    end
end

local function change_model(ent, model)
    if model:len() > 5 then 
        if precache_model(model) == false then 
            error("invalid model", 2)
        end
        local idx = get_model_index(ivmodelinfo, model)
        if idx == -1 then 
            return
        end
        set_model_index(ent, idx)
    end
end

local update_skins = true
client.set_event_callback("net_update_start", function()

    local me = entity.get_local_player()
    if me == nil then return end
	
	if ui.get(replace_localplayer_model) then 
		change_model(me, player_models[ui.get(localplayer_model)])
	end
end)

local function setTableVisibility(table, state)
    for i=1, #table do
        ui.set_visible(table[i], state)
    end
end

local function setTableVisibilityOff(table, state)
    for i=1, #table do
        ui.set_visible(table[i], state)
    end
end

client.set_event_callback("paint_ui", function()
	setTableVisibility({localplayer_model, replace_localplayer_model}, ui.get(enable))
end)


client.set_event_callback("paint", function()
if ui.get(enable) then
        local local_player = entity.get_local_player()
        local health = math.min(100, entity.get_prop(local_player, 'm_iHealth'))
        local armor = math.min(100, entity.get_prop(local_player, 'm_ArmorValue'))


        surface.draw_filled_rect(65, bottom[2] - 97, 407, 97, 25, 25, 25, 100)
        surface.draw_filled_rect(65, bottom[2] - 90, 400, 90, 25, 25, 25, 255)

        surface.draw_filled_rect(200, bottom[2] - 65, 255, 12, 192, 192, 192, 255)
        surface.draw_filled_rect(200, bottom[2] - 65, 2.55*health, 12, 90, 231, 94, 255)
        surface.draw_text(190, bottom[2] - 90, 90, 231, 94, 255, font, "HP" )

        if health >= 100 then
        surface.draw_text(405, bottom[2] - 90, 90, 231, 94, 255, font, "" .. health .."" )
        elseif health >= 10 and health < 100 then
        surface.draw_text(415, bottom[2] - 90, 90, 231, 94, 255, font, "" .. health .."" )
        elseif health < 10 then
        surface.draw_text(425, bottom[2] - 90, 90, 231, 94, 255, font, "" .. health .."" )
        end


        surface.draw_filled_rect(230, bottom[2] -25, 225, 12, 99, 108, 109, 255)
        surface.draw_filled_rect(230, bottom[2] -25, 2.25*armor, 12, 61, 115, 177, 255)
        surface.draw_text(220, bottom[2] - 49, 61, 115, 177, 255, font, "SP" )

        if armor >= 100 then
        surface.draw_text(405, bottom[2] - 49, 61, 115, 177, 255, font, "" .. armor .."" )
        elseif armor >= 10 and armor < 100 then
        surface.draw_text(415, bottom[2] - 49, 61, 115, 177, 255, font, "" .. armor .."" )
        elseif armor < 10 then
        surface.draw_text(425, bottom[2] - 49, 61, 115, 177, 255, font, "" .. armor .."" )
        end


        local local_player = entity.get_local_player()
        if local_player == nil then return end
        local weapon_ent = entity.get_player_weapon(local_player)
        if weapon_ent == nil then return end

        local weapon_idx = entity.get_prop(weapon_ent, "m_iItemDefinitionIndex")
        if weapon_idx == nil then return end

        local weapon = csgo_weapons[weapon_idx]
        if weapon == nil then return end

        surface.draw_text(175, bottom[2] - 120, 0, 0, 0, 255, font2, "".. weapon.name .."" )

        if ui.get(localplayer_model) == "Rezan The Ready | Sabre" then
            rezan:draw(-55, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            rezan:draw(-40, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Maximus | Sabre" then
            maximus:draw(-40, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            maximus:draw(-25, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Dragomir | Sabre" then
            dragomir:draw(-55, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            dragomir:draw(-40, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Lt. Commander Ricksaw | NSWC SEAL" then
            commander:draw(-35, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            commander:draw(-20, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Two Times McCoy | USAF TACP" then
            mccoy:draw(-35, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            mccoy:draw(-20, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Buckshot | NSWC SEAL" then
            buckshot:draw(-35, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            buckshot:draw(-20, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "The Doctor Romanov | Sabre" then
            doctor:draw(-65, bottom[2] - 230, 290, 290, 0, 0, 0, 100, true, "f")
            doctor:draw(-50, bottom[2] - 235, 280, 280, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Michael Syfers | FBI Sniper" then
            michael:draw(-55, bottom[2] - 230, 285, 285, 0, 0, 0, 100, true, "f")
            michael:draw(-40, bottom[2] - 235, 275, 275, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Operator | FBI SWAT" then
            operator:draw(-70, bottom[2] - 238, 290, 290, 0, 0, 0, 100, true, "f")
            operator:draw(-55, bottom[2] - 243, 280, 280, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Slingshot | Phoenix" then
            slingshot:draw(-60, bottom[2] - 235, 290, 290, 0, 0, 0, 100, true, "f")
            slingshot:draw(-45, bottom[2] - 240, 280, 280, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "The Elite Mr. Muhlik | Elite Crew" then
            muhlik:draw(-55, bottom[2] - 235, 290, 290, 0, 0, 0, 100, true, "f")
            muhlik:draw(-40, bottom[2] - 240, 280, 280, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Prof. Shahmat | Elite Crew" then
            shahmat:draw(-55, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            shahmat:draw(-40, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Special Agent Ava | FBI" then
            ava:draw(-45, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            ava:draw(-30, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "B Squadron Officer | SAS" then
            squadron:draw(-55, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            squadron:draw(-40, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Blackwolf | Sabre" then
            blackwolf:draw(-50, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            blackwolf:draw(-35, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Seal Team 6 Soldier | NSWC SEAL" then
            team6soldier:draw(-50, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            team6soldier:draw(-35, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "3rd Commando Company | KSK" then
            company:draw(-50, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            company:draw(-35, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Markus Delrow | FBI HRT" then
            delrow:draw(-60, bottom[2] - 235, 290, 290, 0, 0, 0, 100, true, "f")
            delrow:draw(-45, bottom[2] - 240, 280, 280, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Enforcer | Phoenix" then
            enforcer:draw(-60, bottom[2] - 235, 290, 290, 0, 0, 0, 100, true, "f")
            enforcer:draw(-45, bottom[2] - 240, 280, 280, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Soldier | Phoenix" then
            soldier:draw(-60, bottom[2] - 210, 260, 260, 0, 0, 0, 100, true, "f")
            soldier:draw(-45, bottom[2] - 215, 250, 250, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Ground Rebel  | Elite Crew" then
            groundrebel:draw(-60, bottom[2] - 235, 290, 290, 0, 0, 0, 100, true, "f")
            groundrebel:draw(-45, bottom[2] - 240, 280, 280, 255, 255, 255, 255, true, "f")
        elseif ui.get(localplayer_model) == "Osiris | Elite Crew" then
            orisis:draw(-60, bottom[2] - 235, 290, 290, 0, 0, 0, 100, true, "f")
            orisis:draw(-45, bottom[2] - 240, 280, 280, 255, 255, 255, 255, true, "f")
        end

        local screen_width, screen_height = client.screen_size()

        if local_player ~= nil then
            local selected_weapon = entity.get_player_weapon(local_player)
            local offset = 0
            local weapon_ent = entity.get_prop(local_player, "m_hActiveWeapon", i)
            if weapon_ent ~= nil then
                local weapon = entity.get_prop(weapon_ent, "m_iItemDefinitionIndex")
                local weapon_icon = images.get_weapon_icon(weapon)
                if weapon_icon ~= nil then
                    local width, height = weapon_icon:draw(175, bottom[2] - 155, nil, 35, 0, 0, 0, 255)
                end
            end
        end
    end
end)

