env.info( '*** MOOSE DYNAMIC INCLUDE START *** ' )

local base = _G

__Moose = {}

__Moose.Include = function( IncludeFile )
	if not __Moose.Includes[ IncludeFile ] then
		__Moose.Includes[IncludeFile] = IncludeFile
		local f = assert( base.loadfile( IncludeFile ) )
		if f == nil then
			error ("Moose: Could not load Moose file " .. IncludeFile )
		else
			env.info( "Moose: " .. IncludeFile .. " dynamically loaded." )
			return f()
		end
	end
end

__Moose.Includes = {}
__Moose.Include( 'Scripts/Moose/Utilities/Routines.lua' )
__Moose.Include( 'Scripts/Moose/Utilities/Utils.lua' )
__Moose.Include( 'Scripts/Moose/Core/Base.lua' )
__Moose.Include( 'Scripts/Moose/Core/UserFlag.lua' )
__Moose.Include( 'Scripts/Moose/Core/UserSound.lua' )
__Moose.Include( 'Scripts/Moose/Core/Report.lua' )
__Moose.Include( 'Scripts/Moose/Core/Scheduler.lua' )
__Moose.Include( 'Scripts/Moose/Core/ScheduleDispatcher.lua' )
__Moose.Include( 'Scripts/Moose/Core/Event.lua' )
__Moose.Include( 'Scripts/Moose/Core/Settings.lua' )
__Moose.Include( 'Scripts/Moose/Core/Menu.lua' )
__Moose.Include( 'Scripts/Moose/Core/Zone.lua' )
__Moose.Include( 'Scripts/Moose/Core/Database.lua' )
__Moose.Include( 'Scripts/Moose/Core/Set.lua' )
__Moose.Include( 'Scripts/Moose/Core/Point.lua' )
__Moose.Include( 'Scripts/Moose/Core/Velocity.lua' )
__Moose.Include( 'Scripts/Moose/Core/Message.lua' )
__Moose.Include( 'Scripts/Moose/Core/Fsm.lua' )
__Moose.Include( 'Scripts/Moose/Core/Radio.lua' )
__Moose.Include( 'Scripts/Moose/Core/Spawn.lua' )
__Moose.Include( 'Scripts/Moose/Core/SpawnStatic.lua' )
__Moose.Include( 'Scripts/Moose/Core/Goal.lua' )
<<<<<<< HEAD
__Moose.Include( 'Scripts/Moose/Core/Cargo.lua' )
=======
>>>>>>> develop
__Moose.Include( 'Scripts/Moose/Core/Spot.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Object.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Identifiable.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Positionable.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Controllable.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Group.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Unit.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Client.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Static.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Airbase.lua' )
__Moose.Include( 'Scripts/Moose/Wrapper/Scenery.lua' )
<<<<<<< HEAD
=======
__Moose.Include( 'Scripts/Moose/Cargo/Cargo.lua' )
__Moose.Include( 'Scripts/Moose/Cargo/CargoUnit.lua' )
__Moose.Include( 'Scripts/Moose/Cargo/CargoSlingload.lua' )
__Moose.Include( 'Scripts/Moose/Cargo/CargoCrate.lua' )
__Moose.Include( 'Scripts/Moose/Cargo/CargoGroup.lua' )
>>>>>>> develop
__Moose.Include( 'Scripts/Moose/Functional/Scoring.lua' )
__Moose.Include( 'Scripts/Moose/Functional/CleanUp.lua' )
__Moose.Include( 'Scripts/Moose/Functional/Movement.lua' )
__Moose.Include( 'Scripts/Moose/Functional/Sead.lua' )
__Moose.Include( 'Scripts/Moose/Functional/Escort.lua' )
__Moose.Include( 'Scripts/Moose/Functional/MissileTrainer.lua' )
__Moose.Include( 'Scripts/Moose/Functional/ATC_Ground.lua' )
__Moose.Include( 'Scripts/Moose/Functional/Detection.lua' )
__Moose.Include( 'Scripts/Moose/Functional/Designate.lua' )
__Moose.Include( 'Scripts/Moose/Functional/RAT.lua' )
<<<<<<< HEAD
=======
__Moose.Include( 'Scripts/Moose/Functional/Range.lua' )
>>>>>>> develop
__Moose.Include( 'Scripts/Moose/Functional/ZoneGoal.lua' )
__Moose.Include( 'Scripts/Moose/Functional/ZoneGoalCoalition.lua' )
__Moose.Include( 'Scripts/Moose/Functional/ZoneCaptureCoalition.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_Balancer.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_A2A.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_A2A_Patrol.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_A2A_Cap.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_A2A_Gci.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_A2A_Dispatcher.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_Patrol.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_Cap.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_Cas.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_Bai.lua' )
__Moose.Include( 'Scripts/Moose/AI/AI_Formation.lua' )
<<<<<<< HEAD
=======
__Moose.Include( 'Scripts/Moose/AI/AI_Cargo_Troops.lua' )
>>>>>>> develop
__Moose.Include( 'Scripts/Moose/Actions/Act_Assign.lua' )
__Moose.Include( 'Scripts/Moose/Actions/Act_Route.lua' )
__Moose.Include( 'Scripts/Moose/Actions/Act_Account.lua' )
__Moose.Include( 'Scripts/Moose/Actions/Act_Assist.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/CommandCenter.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Mission.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Task.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/TaskInfo.lua' )
<<<<<<< HEAD
=======
__Moose.Include( 'Scripts/Moose/Tasking/Task_Manager.lua' )
>>>>>>> develop
__Moose.Include( 'Scripts/Moose/Tasking/DetectionManager.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Task_A2G_Dispatcher.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Task_A2G.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Task_A2A_Dispatcher.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Task_A2A.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Task_Cargo.lua' )
<<<<<<< HEAD
=======
__Moose.Include( 'Scripts/Moose/Tasking/Task_Cargo_Transport.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Task_Cargo_CSAR.lua' )
__Moose.Include( 'Scripts/Moose/Tasking/Task_Cargo_Dispatcher.lua' )
>>>>>>> develop
__Moose.Include( 'Scripts/Moose/Tasking/TaskZoneCapture.lua' )
__Moose.Include( 'Scripts/Moose/Moose.lua' )
BASE:TraceOnOff( true )
env.info( '*** MOOSE INCLUDE END *** ' )
