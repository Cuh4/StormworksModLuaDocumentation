----------------------------------------
--- // Info
----------------------------------------

--[[
    This file contains every component modding lua function, callback, and type.
    Simply put this file in your code workspace and you should have intellisense support (auto-completion, etc) for modding lua.

    This extension is required: https://marketplace.visualstudio.com/items?itemName=sumneko.lua

    Created by: @Cuh4 (GitHub)

    Repo: https://github.com/Cuh4/StormworksModLuaDocumentation

    See https://geometa.co.uk/wiki/stormworks/view/component_modding for information on modding.
]]

----------------------------------------
--- // Changelog
----------------------------------------

--[[
    Last updated for game version: v1.15.0 (The Components, Physics, Gameplay Modding Update)
        Note that even if the above version is outdated on the latest version of this repo, it means no 
        functions were added, changed or removed from the game since the update.
        
        Corrections and changes to the documentation may still be made after the game version is outdated
        anyway.

    Changelog available at the GitHub repo @ https://github.com/Cuh4/StormworksModLuaDocumentation.
]]

----------------------------------------
--- // Meta
----------------------------------------

---@meta _

----------------------------------------
--- // Callbacks
----------------------------------------

--[[
    Called when the component is spawned
]]
function onAddToSimulation() end

--[[
    Called when the component is despawned
]]
function onRemoveFromSimulation() end

--[[
    A callback for component saving/loading logic to be executed
]]
function onParse() end

--[[
    Called every game tick.<br>
    This is the go-to callback for any component logic.<br>
    Rendering logic should be placed in `onRender()`
]]
---@param tick_time number The number of ticks passed for this frame, usually 1
function onTick(tick_time) end

--[[
    Called every frame.<br>
    This is the go-to callback for any component rendering logic.<br>
    Non-rendering component logic should be placed in `onTick()`
]]
function onRender() end

----------------------------------------
--- // Parser
----------------------------------------

--[[
    A table containing functions for parsing.
]]
parser = {}

--[[
    Parses a boolean type value
]]
---@param id string The identifier for the value to parse
---@param value string The value to parse
---@return boolean value_out The value returned from parsing
---@return boolean success Whether the parsing was successful
function parser.parseBool(id, value) end

--[[
    Parses a number type value
]]
---@param id string The identifier for the value to parse
---@param value number The value to parse
---@return number value_out The value returned from parsing
---@return boolean success Whether the parsing was successful
function parser.parseNumber(id, value) end

--[[
    Parses a string type value
]]
---@param id string The identifier for the value to parse
---@param value string The value to parse
---@return string value_out The value returned from parsing
---@return boolean success Whether the parsing was successful
function parser.parseString(id, value) end

----------------------------------------
--- // Matrix
----------------------------------------

--[[
    A table representing a matrix.<br>
    To manipulate this, use the functions in the `matrix` table.
]]
---@class SWMatrix
---@field [1] number
---@field [2] number
---@field [3] number
---@field [4] number
---@field [5] number
---@field [6] number
---@field [7] number
---@field [8] number
---@field [9] number
---@field [10] number
---@field [11] number
---@field [12] number
---@field [13] number x
---@field [14] number y
---@field [15] number z
---@field [16] number

--[[
    A table containing functions for messing with matrices.
]]
matrix = {}

--[[
    Multiplies two matrices together.
]]
---@param matrix_a SWMatrix The first matrix to multiply
---@param matrix_b SWMatrix The second matrix to multiply
---@return SWMatrix matrix_out The resulting matrix
function matrix.multiply(matrix_a, matrix_b) end

--[[
    Multiplies a 4-component value with a matrix.
]]
---@param matrix SWMatrix The matrix to multiply
---@param x number The X value to multiply
---@param y number The Y value to multiply
---@param z number The Z value to multiply
---@param w number The W value to multiply
---@return number out_x The X value result
---@return number out_y The Y value result
---@return number out_z The Z value result
---@return number out_w The W value result
function matrix.multiplyxyzw(matrix, x, y, z, w) end

--[[
    Transposes a matrix.
]]
---@param matrix SWMatrix The matrix to transpose
---@return SWMatrix matrix_out The resulting transposed matrix
function matrix.transpose(matrix) end

--[[
    Returns an identity matrix (an empty matrix essentially).
]]
---@return SWMatrix matrix_out The resulting identity matrix
function matrix.identity() end

--[[
    Returns a rotation matrix rotated in the X axis.
]]
---@param radians number The rotation in radians
---@return SWMatrix matrix_out The resulting rotation matrix. Multiply with another matrix to apply the rotation
function matrix.rotationX(radians) end

--[[
    Returns a rotation matrix rotated in the Y axis.
]]
---@param radians number The rotation in radians
---@return SWMatrix matrix_out The resulting rotation matrix. Multiply with another matrix to apply the rotation
function matrix.rotationY(radians) end

--[[
    Returns a rotation matrix rotated in the Z axis.
]]
---@param radians number The rotation in radians
---@return SWMatrix matrix_out The resulting rotation matrix. Multiply with another matrix to apply the rotation
function matrix.rotationZ(radians) end

--[[
    Returns a matrix translated by X, Y and Z.
]]
---@param x number The X translation component
---@param y number The Y translation component
---@param z number The Z translation component
---@return SWMatrix matrix_out The resulting translated matrix
function matrix.translation(x, y, z) end

--[[
    Returns the X, Y and Z position from a matrix.
]]
---@param matrix SWMatrix The matrix to get the position from
---@return number x The X position
---@return number y The Y position
---@return number z The Z position
function matrix.position(matrix) end

--[[
    Returns the distance between two matrices.
]]
---@param matrix_a SWMatrix The first matrix
---@param matrix_b SWMatrix The second matrix
---@return number distance The distance between the two matrices
function matrix.distance(matrix_a, matrix_b) end

--[[
    Returns the rotation required to face an X and Z vector.
]]
---@param x number The X component of the vector
---@param z number The Z component of the vector
---@return number radians The rotation in radians
function matrix.rotationToFaceXZ(x, z) end

----------------------------------------
--- // Component
----------------------------------------

--[[
    Represents bool values in composite data.
]]
---@class SWCompositeBools
---@field [1] boolean
---@field [2] boolean
---@field [3] boolean
---@field [4] boolean
---@field [5] boolean
---@field [6] boolean
---@field [7] boolean
---@field [8] boolean
---@field [9] boolean
---@field [10] boolean
---@field [11] boolean
---@field [12] boolean
---@field [13] boolean
---@field [14] boolean
---@field [15] boolean
---@field [16] boolean
---@field [17] boolean
---@field [18] boolean
---@field [19] boolean
---@field [20] boolean
---@field [21] boolean
---@field [22] boolean
---@field [23] boolean
---@field [24] boolean
---@field [25] boolean
---@field [26] boolean
---@field [27] boolean
---@field [28] boolean
---@field [29] boolean
---@field [30] boolean
---@field [31] boolean
---@field [32] boolean

--[[
    Represents number values in composite data.
]]
---@class SWCompositeFloats
---@field [1] number
---@field [2] number
---@field [3] number
---@field [4] number
---@field [5] number
---@field [6] number
---@field [7] number
---@field [8] number
---@field [9] number
---@field [10] number
---@field [11] number
---@field [12] number
---@field [13] number
---@field [14] number
---@field [15] number
---@field [16] number
---@field [17] number
---@field [18] number
---@field [19] number
---@field [20] number
---@field [21] number
---@field [22] number
---@field [23] number
---@field [24] number
---@field [25] number
---@field [26] number
---@field [27] number
---@field [28] number
---@field [29] number
---@field [30] number
---@field [31] number
---@field [32] number

--[[
    Represents composite data.<br>
    `bool_values` holds boolean values for channels 1-32.<br>
    `float_values` holds number values for channels 1-32.
]]
---@class SWCompositeData
---@field bool_values SWCompositeBools
---@field float_values SWCompositeFloats

--[[
    Represents a fluid type.
]]
---@alias SWFluidType
---| 0 # water
---| 1 # diesel
---| 2 # jet_fuel
---| 3 # air
---| 4 # carbon_dioxide
---| 5 # oil
---| 6 # seawater
---| 7 # steam
---| 8 # slurry
---| 9 # slurry_saturated
---| 10 # oxygen
---| 11 # nitrogen
---| 12 # hydrogen

--[[
    Represents a projectile type.
]]
---@alias SWProjectileType
---| 0 # frag small
---| 1 # frag medium
---| 2 # frag large
---| 3 # harpoon
---| 4 # pistol
---| 5 # rifle
---| 6 # machine gun
---| 7 # light auto
---| 8 # rotary auto
---| 9 # heavy auto
---| 10 # rocket small
---| 11 # rocket medium
---| 12 # battle
---| 13 # artillery
---| 14 # bertha

--[[
    Represents a projectile damage type.
]]
---@alias SWProjectileDamageType
---| 0 # kinetic
---| 1 # high explosive
---| 2 # fragmentation
---| 3 # armor piercing
---| 4 # incendiary

--[[
    A table containing functions for this component.
]]
component = {}

--[[
    Gets the value of an input bool logic slot.
]]
---@param index integer The index of logic slot
---@return boolean value The value read from logic slot
---@return boolean success Returns true if the function completed successfully
function component.getInputLogicSlotBool(index) end

--[[
    Sets the value of an output bool logic slot.
]]
---@param index integer The index of logic slot
---@param value boolean The value to write to logic slot
---@return boolean success Returns true if the function completed successfully
function component.setOutputLogicSlotBool(index, value) end

--[[
    Gets the value of an input float logic slot.
]]
---@param index integer The index of logic slot
---@return number value The value read from logic slot
---@return boolean success Returns true if the function completed successfully
function component.getInputLogicSlotFloat(index) end

--[[
    Sets the value of an output float logic slot.
]]
---@param index integer The index of logic slot
---@param value number The value to write to logic slot
---@return boolean success Returns true if the function completed successfully
function component.setOutputLogicSlotFloat(index, value) end

--[[
    Gets a table of composite data from an input composite logic slot.
]]
---@param index integer The index of logic slot
---@return SWCompositeData composite The composite data read from logic slot
---@return boolean success Returns true if the function completed successfully
function component.getInputLogicSlotComposite(index) end

--[[
    Sets a table of composite data on an output composite logic slot.
]]
---@param index integer The index of logic slot
---@param composite SWCompositeData The composite data to write to logic slot
---@return boolean success Returns true if the function completed successfully
function component.setOutputLogicSlotComposite(index, composite) end

--[[
    Checks if a torque logic slot is connected.
]]
---@param index integer The index of logic slot
---@return boolean is_connected Returns true if torque slot is part of a torque island connected to other components
---@return boolean success Returns true if the function completed successfully
function component.slotTorqueIsConnected(index) end

--[[
    Applies momentum to a torque slot to generate RPS.
]]
---@param index integer The index of logic slot
---@param mass number The mass of the momentum of the torque slot. Higher mass increases torque and maintains torque slot RPS, like a flywheel
---@param rps number The target rotations per second of the torque slot. Torque slot RPS will move toward this value
---@return number rps_out The rotations per second of torque slot after momentum has been applied
---@return boolean success Returns true if the function completed successfully
function component.slotTorqueApplyMomentum(index, mass, rps) end

--[[
    Creates a bridge between two torque slots, allowing them to share mechanical energy between them. Torque slots can only bridge to a single other torque slot.
]]
---@param index integer The index of logic slot
---@param index_other integer The index of logic slot to bridge to
---@return boolean success Returns true if the function completed successfully
function component.slotTorqueCreateBridge(index, index_other) end

--[[
    Destroys the bridge on this torque slot. The bridge is destroyed for both torque slots associated with the bridge.
]]
---@param index integer The index of logic slot
---@return boolean success Returns true if the function completed successfully
function component.slotTorqueDestroyBridge(index) end

--[[
    Sets the proportion of mechanical energy transferred across the bridge associated with this torque slot. All mechanical energy transferred incurs a small loss due to inefficiency.
]]
---@param index integer The index of logic slot
---@param factor number The proportion of mechanical energy transferred over bridge (range 0~1)
---@return boolean success Returns true if the function completed successfully
function component.slotTorqueSetBridgeFactor(index, factor) end

--[[
    Sets the gear ratio for mechanical energy transferred across the bridge associated with this torque slot. The ratio value multiplies RPS and divides mass for energy transferred across the bridge. This ratio applies to energy added to this torque slot, the inverse of the ratio applies to energy added to the opposing torque slot.
]]
---@param index integer The index of logic slot
---@param ratio number The gear ratio for mechanical energy transferred over bridge
---@return boolean success Returns true if the function completed successfully
function component.slotTorqueSetBridgeRatio(index, ratio) end

--[[
    Flows fluid between a fluid logic slot and a fluid contents volume.
]]
---@param index integer The index of logic slot
---@param index_fluid_contents integer The index of fluid contents volume
---@param pump_pressure number The amount of pump pressure to apply between the fluid logic slot and fluid contents volume.
---@param flow_factor number The proportion of flow between the fluid logic slot and fluid contents volume. Values < 1.0 restrict flow rate.
---@param is_one_way_in_to_slot boolean Prevents fluid from flowing from slot to volume when true.
---@param is_one_way_out_of_slot boolean Prevents fluid from flowing from volume to slot when true.
---@param filter integer A bitmask value corresponding to fluid types. Only fluid types with their bit set will flow.
---@param index_fluid_contents_transfer integer An optional index of fluid contents volume to store the fluids transferred as a result of this function call. Set to -1 if not required.
---@return boolean success Returns true if the function completed successfully
function component.slotFluidResolveFlow(index, index_fluid_contents, pump_pressure, flow_factor, is_one_way_in_to_slot, is_one_way_out_of_slot, filter, index_fluid_contents_transfer) end

--[[
    Flows fluid between two fluid logic slots.
]]
---@param index integer The index of logic slot
---@param index_other integer The index of other logic slot
---@param pump_pressure number The amount of pump pressure to apply between the fluid logic slots.
---@param flow_factor number The proportion of flow between the fluid logic slots. Values < 1.0 restrict flow rate.
---@param is_one_way boolean Prevents fluid from flowing backwards between slots when true.
---@param filter integer A bitmask value corresponding to fluid types. Only fluid types with their bit set will flow.
---@param index_fluid_contents_transfer integer An optional index of fluid contents volume to store the fluids transferred as a result of this function call. Set to -1 if not required.
---@return boolean success Returns true if the function completed successfully
function component.slotFluidResolveFlowToSlot(index, index_other, pump_pressure, flow_factor, is_one_way, filter, index_fluid_contents_transfer) end

--[[
    Checks if a electric logic slot is connected.
]]
---@param index integer The index of logic slot
---@return boolean is_connected Returns true if electric slot is part of a electric island connected to other components
---@return boolean success Returns true if the function completed successfully
function component.slotElectricIsConnected(index) end

--[[
    Adds charge to the electric logic slot.
]]
---@param index integer The index of logic slot
---@param charge number The amount of electrical charge to add
---@return boolean success Returns true if the function completed successfully
function component.slotElectricAddCharge(index, charge) end

--[[
    Removes charge to the electric logic slot.
]]
---@param index integer The index of logic slot
---@param charge number The amount of electrical charge to remove
---@return number charge_factor The charge factor for requested charge to remove (range 0~1)
---@return boolean success Returns true if the function completed successfully
function component.slotElectricRemoveCharge(index, charge) end

--[[
    Gets charge proportion of electric logic slot.
]]
---@param index integer The index of logic slot
---@return number charge_factor The charge factor of electric logic slot (range 0~1)
---@return boolean success Returns true if the function completed successfully
function component.slotElectricGetChargeFactor(index) end

--[[
    Transfers an amount of fluid between two fluid content volumes.
]]
---@param index_src integer The index of source fluid contents volume
---@param index_dst integer The index of destination fluid contents volume
---@param volume number The volume of fluid to move between fluid content volumes
---@return boolean success Returns true if the function completed successfully
function component.fluidContentsTransferVolume(index_src, index_dst, volume) end

--[[
    Transfers an amount of fluid between two fluid content volumes, excluding a particular fluid type.
]]
---@param index_src integer The index of source fluid contents volume
---@param index_dst integer The index of destination fluid contents volume
---@param fluid_type SWFluidType The ID of fluid type to exclude from transfer
---@param volume number The volume of fluid to move between fluid content volumes
---@return boolean success Returns true if the function completed successfully
function component.fluidContentsTransferVolumeExceptType(index_src, index_dst, fluid_type, volume) end

--[[
    Sets a fluid type to a specified volume.
]]
---@param index integer The index of fluid contents volume
---@param fluid_type SWFluidType The ID of fluid type to set
---@param volume number The volume of fluid to set
---@return boolean success Returns true if the function completed successfully
function component.fluidContentsSetFluidTypeVolume(index, fluid_type, volume) end

--[[
    Gets the volume of a particular fluid type.
]]
---@param index integer The index of fluid contents volume
---@param fluid_type SWFluidType The ID of fluid type to get
---@return number volume The volume of fluid type
---@return boolean success Returns true if the function completed successfully
function component.fluidContentsGetFluidTypeVolume(index, fluid_type) end

--[[
    Gets the total volume of all fluid types.
]]
---@param index integer The index of fluid contents volume
---@return number volume The total volume of all fluid types
---@return boolean success Returns true if the function completed successfully
function component.fluidContentsGetVolume(index) end

--[[
    Sets the capacity of the fluid content volume.
]]
---@param index integer The index of fluid contents volume
---@param capacity number The capacity to set the fluid content volume to
---@return boolean success Returns true if the function completed successfully
function component.fluidContentsSetCapacity(index, capacity) end

--[[
    Gets the capacity of the fluid content volume.
]]
---@param index integer The index of fluid contents volume
---@return number capacity The capacity of the fluid content volume
---@return boolean success Returns true if the function completed successfully
function component.fluidContentsGetCapacity(index) end

--[[
    Gets the pressure of the fluid content volume.
]]
---@param index integer The index of fluid contents volume
---@return number pressure The pressure of the fluid content volume
---@return boolean success Returns true if the function completed successfully
function component.fluidContentsGetPressure(index) end

--[[
    Sets a sphere area of heater influence.
]]
---@param offset_x number The offset x position of sphere
---@param offset_y number The offset y position of sphere
---@param offset_z number The offset z position of sphere
---@param radius number The radius of sphere
---@return boolean success Returns true if the function completed successfully
function component.heaterSetSphere(offset_x, offset_y, offset_z, radius) end

--[[
    Sets an oriented box area of heater influence.
]]
---@param local_transform SWMatrix The local transform of box (TODO: needs factcheck! is this 100% a SWMatrix?)
---@param bounds_x number The size of box x-axis
---@param bounds_y number The size of box y-axis
---@param bounds_z number The size of box z-axis
---@return boolean success Returns true if the function completed successfully
function component.heaterSetOrientedBox(local_transform, bounds_x, bounds_y, bounds_z) end

--[[
    Set temperature value of heater.
]]
---@param temperature number The temperature value of heater
---@return boolean success Returns true if the function completed successfully
function component.heaterSetTemperature(temperature) end

--[[
    Set efficiency of heater.
]]
---@param factor number The efficiency value of heater (range 0~1)
---@return boolean success Returns true if the function completed successfully
function component.heaterSetFactor(factor) end

--[[
    Plays a custom sound effect at the specified position. The positional audio channel will play the sound effect once.
]]
---@param channel_index integer The index of audio channel to use for sfx playback
---@param effect_index integer The index of sfx to play
---@param offset_x number The offset x position of sfx
---@param offset_y number The offset y position of sfx
---@param offset_z number The offset z position of sfx
---@param radius_inner number The inner radius of sfx
---@param radius_outer number The outer radius of sfx
---@param volume number The volume of sfx
---@param pitch number The pitch of sfx
---@param priority number The priority of sfx, lower priority sfx will be muted when active sfx count exceeds playback limit
---@return boolean success Returns true if the function completed successfully
function component.sfxPlayOnce(channel_index, effect_index, offset_x, offset_y,  offset_z, radius_inner, radius_outer, volume, pitch, priority) end

--[[
    Plays a sound effect at the specified position. The positional audio channel will play the sound effect on a continuous loop.
]]
---@param channel_index integer The index of audio channel to use for sfx playback
---@param effect_index integer The index of sfx to play
---@param offset_x number The offset x position of sfx
---@param offset_y number The offset y position of sfx
---@param offset_z number The offset z position of sfx
---@param radius_inner number The inner radius of sfx
---@param radius_outer number The outer radius of sfx
---@param volume number The volume of sfx
---@param pitch number The pitch of sfx
---@param priority number The priority of sfx, lower priority sfx will be muted when active sfx count exceeds playback limit
---@return boolean success Returns true if the function completed successfully
function component.sfxPlayLoop(channel_index, effect_index, offset_x, offset_y,  offset_z, radius_inner, radius_outer, volume, pitch, priority) end

--[[
    Updates a playing sound effect on the specified channel.
]]
---@param channel_index integer The index of audio channel to update
---@param offset_x number The offset x position of sfx
---@param offset_y number The offset y position of sfx
---@param offset_z number The offset z position of sfx
---@param radius_inner number The inner radius of sfx
---@param radius_outer number The outer radius of sfx
---@param volume number The volume of sfx
---@param pitch number The pitch of sfx
---@return boolean success Returns true if the function completed successfully
function component.sfxUpdate(channel_index, offset_x, offset_y, offset_z, radius_inner, radius_outer, volume, pitch) end

--[[
    Stops a sound effect from playing on the specified channel.
]]
---@param channel_index integer The index of audio channel to stop
---@return boolean success Returns true if the function completed successfully
function component.sfxStop(channel_index) end

--[[
    Renders the dynamic mesh defined by "mesh_0_name" in the component definition at the specified transform.
]]
---@param local_transform SWMatrix The local transform of mesh
---@return boolean success Returns true if the function completed successfully
function component.renderMesh0(local_transform) end

--[[
    Renders the dynamic mesh defined by "mesh_1_name" in the component definition at the specified transform.
]]
---@param local_transform SWMatrix The local transform of mesh
---@return boolean success Returns true if the function completed successfully
function component.renderMesh1(local_transform) end

--[[
    Renders the dynamic mesh defined by "mesh_2_name" in the component definition at the specified transform.
]]
---@param local_transform SWMatrix The local transform of mesh
---@return boolean success Returns true if the function completed successfully
function component.renderMesh2(local_transform) end

--[[
    Renders an omni-directional light at the specified offset.
]]
---@param offset_x number The offset x position of light
---@param offset_y number The offset y position of light
---@param offset_z number The offset z position of light
---@param col_r number The red color intensity of light
---@param col_g number The green color intensity of light
---@param col_b number The blue color intensity of light
---@param range number The range of light radius
---@param is_volume boolean Renders a volumetric lighting effect if true
---@param is_infrared boolean Renders light only in infrared vision if true
---@return boolean success Returns true if the function completed successfully
function component.renderLight(offset_x, offset_y, offset_z, col_r, col_g, col_b, range, is_volume, is_infrared) end

--[[
    Renders a laser effect at the specified transform. Lasers travel in the direction of +z axis of the transform.
]]
---@param local_transform SWMatrix The local transform of laser
---@param is_infrared boolean Renders laser only in infrared vision if true
---@return boolean success Returns true if the function completed successfully
function component.renderLaser(local_transform, is_infrared) end

--[[
    Applies a physics impulse to the component physics body.
]]
---@param force_x number The physics impulse force in the x-axis
---@param force_y number The physics impulse force in the y-axis
---@param force_z number The physics impulse force in the z-axis
---@param offset_x number The offset x position of impulse
---@param offset_y number The offset y position of impulse
---@param offset_z number The offset z position of impulse
---@param is_activate boolean Wakes a settled physics body if true
---@return boolean success Returns true if the function completed successfully
function component.physicsImpulse(force_x, force_y, force_z, offset_x, offset_y, offset_z, is_activate) end

--[[
    Performs a raycast collision test against the physics environment.
]]
---@param offset_x0 number The offset x position of raycast start
---@param offset_y0 number The offset y position of raycast start
---@param offset_z0 number The offset z position of raycast start
---@param offset_x1 number The offset x position of raycast end
---@param offset_y1 number The offset y position of raycast end
---@param offset_z1 number The offset z position of raycast end
---@return number hit_distance Returns distance along raycast of hit
---@return boolean success Returns true if the function completed successfully
function component.physicsRaycast(offset_x0, offset_y0, offset_z0, offset_x1, offset_y1, offset_z1) end

--[[
    Gets the linear velocity of the component physics body.
]]
---@return number linear_vel_x The linear velocity in the x-axis
---@return number linear_vel_y The linear velocity in the y-axis
---@return number linear_vel_z The linear velocity in the z-axis
---@return boolean success Returns true if the function completed successfully
function component.physicsGetLinearVelocity() end

--[[
    Gets the linear velocity of the component physics body at a specified offset.
]]
---@param offset_x number The offset x position
---@param offset_y number The offset y position
---@param offset_z number The offset z position
---@return number linear_vel_x The linear velocity in the x-axis
---@return number linear_vel_y The linear velocity in the y-axis
---@return number linear_vel_z The linear velocity in the z-axis
---@return boolean success Returns true if the function completed successfully
function component.physicsGetLinearVelocityAtPoint(offset_x, offset_y, offset_z) end

--[[
    Gets the angular velocity of the component physics body.
]]
---@return number angular_vel_x The angular velocity in the x-axis
---@return number angular_vel_y The angular velocity in the y-axis
---@return number angular_vel_z The angular velocity in the z-axis
---@return boolean success Returns true if the function completed successfully
function component.physicsGetAngularVelocity() end

--[[
    Spawns a weapon projectile at the specified offset.
]]
---@param projectile_type SWProjectileType Type of projectile to spawn
---@param projectile_damage_type SWProjectileDamageType Damage type of spawned projectile
---@param offset_x number Offset x position
---@param offset_y number Offset y position
---@param offset_z number Offset z position
---@param velocity_x number Velocity of spawned projectile in x-axis
---@param velocity_y number Velocity of spawned projectile in y-axis
---@param velocity_z number Velocity of spawned projectile in z-axis
---@return boolean success Returns true if the function completed successfully
function component.spawnProjectile(projectile_type, projectile_damage_type,  offset_x, offset_y, offset_z, velocity_x, velocity_y, velocity_z) end

--[[
    Tests if a point is underwater at the specified offset.
]]
---@param offset_x number Offset x position
---@param offset_y number Offset y position
---@param offset_z number Offset z position
---@param radius number Radius around point to test for submergence
---@return number submergence_factor Proportion of radius submerged at offset, range 0~1
---@return boolean success Returns true if the function completed successfully
function component.getSubmergenceFactor(offset_x, offset_y, offset_z, radius) end

--[[
    Get the wind velocity at the component position, in component local space.
]]
---@return number wind_vel_x Velocity of wind in the x-axis
---@return number wind_vel_y Velocity of wind in the y-axis
---@return number wind_vel_z Velocity of wind in the z-axis
---@return boolean success Returns true if the function completed successfully
function component.getWindVelocity() end

----------------------------------------
--- // Debug
----------------------------------------

--[[
    Log a message to DebugView.
    Requires [DebugView](https://learn.microsoft.com/en-us/sysinternals/downloads/debugview) to see the logs,
    although a more modern version like [DebugView++](https://github.com/CobaltFusion/DebugViewPP) is recommended.
]]
---@param message string The string to log
function debug.log(message) end