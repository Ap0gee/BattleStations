--[[
Copyright © 2018, Sjshovan (Apogee)
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Battle Stations nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Sjshovan (Apogee) BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
]]

local colors = require("constants").colors

function buildHelpCommandEntry(command, description)
    local entry_template = "%s %s %s %s"
    local short_name = "bs":color(colors.primary)
    local command = command:color(colors.secondary)
    local sep = "=>":color(colors.primary)
    local description = description:color(colors.info)
    return entry_template:format(short_name, command, sep, description)
end

function buildHelpTypeEntry(name, description)
	local entry_template = "%s %s %s"
    local name = name:color(colors.secondary)
    local sep = "=>":color(colors.primary)
    local description = description:color(colors.info)
    return entry_template:format(name, sep, description)
end

function buildHelpRadioEntry(name, description)
    local entry_template = "%s %s %s"
    local name = name:color(colors.secondary)
    local sep = "=>":color(colors.primary)
    local description = description:color(colors.info)
    return entry_template:format(name, sep, description)
end

function buildHelpStationEntry(frequency, callSign)
    local entry_template = "  %s %s %s"
    local frequency = frequency:color(colors.secondary)
    local sep = "=>":color(colors.primary)
    local callSign = callSign:color(colors.info)
    return entry_template:format(frequency, sep, callSign)
end

function buildHelpStationCategoryEntry(range, name)
    local entry_template = "(%s) %s"
    local range = range:color(colors.primary)
    local name = name:color(colors.danger)
    return entry_template:format(range, name)
end

function buildHelpTitle(context)
    local title_template = "%s Help: %s"
    local context = context:color(colors.danger)
    return title_template:color(colors.primary):format(_addon.name, context)
end

function buildHelpSeperator(character, count)
    local sep = ''
    for i = 1, count do
        sep = sep .. character
    end
    return sep:color(colors.warn)
end

function buildCommandResponse(message, success)
    local response_template = '%s: %s'
    local response_color = colors.success
    local response_type = 'Success'

    if not success then
        response_type = 'Error'
        response_color = colors.danger
    end
    return response_template:format(response_type:color(response_color), message)
end

function buildWarningMessage(message)
    local message_template = '%s: %s'
    local response_type = 'Note'
    return message_template:format(response_type:color(colors.warn), message)
end

function buildGetResponseMessage(radio, context, frequency, callSign)
    local message_template = '%s %s currently set to %s (%s)'
    radio = radio:color(colors.secondary)
    frequency = tostring(frequency):color(colors.primary)
    return message_template:format(radio, context, frequency, callSign)
end

function buildSetResponseMessage(radio, context, frequency, callSign)
    local message_template = '%s %s updated to station %s (%s)'
    radio = radio:color(colors.secondary)
    frequency = tostring(frequency):color(colors.primary)
    return message_template:format(radio, context, frequency, callSign)
end

function displayResponse(response, color)
    color = color or colors.info
    windower.add_to_chat(color, response)
    windower.console.write(response:strip_colors())
end