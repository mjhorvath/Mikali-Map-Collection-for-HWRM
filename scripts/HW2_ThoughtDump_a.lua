-- ThoughtDump v1.2.4
-- *****************
-- Created by Thought (http://hw2.tproc.org)
-- Updated by Mikail

-- DESCRIPTION
-- ***********
-- Parses the globals table and prints its contents to "HW2.log".
-- Can also be used to parse (i.e., pretty-print) generic tables in some cases.

-- Note: functions & variables must actually be declared in order to be parsed. 
-- Otherwise, they are ignored.
-- Note: if parsing a table other than the globals table, the printed table
-- values may be in a different order than was originally written. Values with 
-- numerical indices are moved to the "top" of the table, followed by values 
-- with string indices, followed by tables. Functions appear in different 
-- locations, depending on whether they are indexed using a number or a string.
-- Note: despite the fact that nil values cannot be stored in tables, they are 
-- still handled.
-- Note: even though functions may be referenced within tables, a function will 
-- only be parsed correctly if it is indexed using a string that is the same as
-- the name of the function.

function __TDParse(name, value, level, verbose)
	if ((name == "__TDParse") or (name == "__TDSortHash") or (name == "__TDMakeDump")) then
		return
	end
	local Element = nil
	local ValType = type(value)
	local NamType = type(name)
	local ValTag = tag(value)
	local PreLevel = ""
	for i = 1, level do
		PreLevel = PreLevel .. "	"
	end
	local ComLevel = ""
	if (level ~= 0) then
		ComLevel = ","
	end
	if ((ValType == "function") or (ValType == "userdata")) then
		if (NamType == "string") then
			Element = PreLevel .. name .. " = " .. name .. ComLevel
		else
			Element = PreLevel .. "[" .. name .. "] = " .. name .. ComLevel
		end
	elseif (ValType == "string") then
		if (NamType == "string") then
			Element = PreLevel .. name .. " = \"" .. value .. "\"" .. ComLevel
		else
			Element = PreLevel .. "[" .. name .. "] = \"" .. value .. "\"" .. ComLevel
		end
	elseif (ValType == "number") then
		if (NamType == "string") then
			Element = PreLevel .. name .. " = " .. value .. ComLevel
		else
			Element = PreLevel .. "[" .. name .. "] = " .. value .. ComLevel
		end
	elseif (ValType == "table") then
		if (NamType == "string") then
			Element = PreLevel .. name .. " ="
		else
			Element = PreLevel .. "[" .. name .. "] ="
		end
	elseif (ValType == "nil") then
		if (NamType == "string") then
			Element = PreLevel .. name .. " = nil" .. ComLevel
		else
			Element = PreLevel .. "[" .. name .. "] = nil" .. ComLevel
		end
	end
	if (verbose == 1) then
		Element = Element .. "	-- " .. ValType .. ", tag: " .. ValTag
	end
	print(Element)
	if (ValType == "table") then
		print(PreLevel .. "{")
		for iName, iValue in value do
			__TDParse(iName, iValue, level + 1, verbose)
		end
		print(PreLevel .. "}" .. ComLevel)
	end
end

function __TDMakeDump()
	__TDParse("globals", globals(), 0, 1)
end

__TDMakeDump()
