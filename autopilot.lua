function activateAutopilot(pilot, plane, x, y, z, speed, autospeed, model)
if autospeed then
TaskPlaneMission(pilot, plane, 0, 0, x, y, z, 4, GetVehicleModelMaxSpeed(model), 1.0, 0.0, 5.0, 40.0)
else
TaskPlaneMission(pilot, plane, 0, 0, x, y, z, 4, speed, 1.0, 0.0, 5.0, 40.0)
end
end

function disableAutopilot(pilot)
ClearPedTasks(pilot)
end
