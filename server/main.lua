ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_lesterjobs:getJobsList', function(source, cb)
	MySQL.Async.fetchAll(
		'SELECT * FROM jobs WHERE LesterJob = true',
		{},
		function(result)
			local data = {}
			for i=1, #result, 1 do
				table.insert(data, {
					value   = result[i].name,
					label   = result[i].label
				})
			end
			cb(data)
		end
	)
end)

RegisterServerEvent('esx_lesterjobs:setJob')
AddEventHandler('esx_lesterjobs:setJob', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob(job, 0)
end)
