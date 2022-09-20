#
# Copyright (c) Contributors to the Open 3D Engine Project
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

set(FILES
    Include/PlayerKnockbackBus.h
    Include/MatchPlayerCoinsBus.h
    Include/NetworkPrefabSpawnerInterface.h
    Include/PlayerCoinCollectorBus.h
    Include/PlayerIdentityBus.h
    Include/PlayerMatchLifecycleBus.h
    Include/UiCoinCountBus.h
    Include/UiGameOverBus.h
    Include/UiPlayerArmorBus.h

    Source/AutoGen/EnergyBallComponent.AutoComponent.xml
    Source/AutoGen/EnergyCannonComponent.AutoComponent.xml
    Source/AutoGen/MatchPlayerCoinsComponent.AutoComponent.xml
    Source/AutoGen/NetworkAiComponent.AutoComponent.xml
    Source/AutoGen/NetworkAnimationComponent.AutoComponent.xml
    Source/AutoGen/GemComponent.AutoComponent.xml
    Source/AutoGen/GemSpawnerComponent.AutoComponent.xml
    Source/AutoGen/NetworkHealthComponent.AutoComponent.xml
    Source/AutoGen/NetworkMatchComponent.AutoComponent.xml
    Source/AutoGen/NetworkPlayerMovementComponent.AutoComponent.xml
    Source/AutoGen/NetworkPlayerSpawnerComponent.AutoComponent.xml
    Source/AutoGen/NetworkRandomComponent.AutoComponent.xml
    Source/AutoGen/NetworkRandomImpulseComponent.AutoComponent.xml
    Source/AutoGen/NetworkRandomImpulseComponent.AutoComponent.xml
    Source/AutoGen/NetworkRandomTranslateComponent.AutoComponent.xml
    Source/AutoGen/NetworkRandomTranslateComponent.AutoComponent.xml
    Source/AutoGen/NetworkSimplePlayerCameraComponent.AutoComponent.xml
    Source/AutoGen/NetworkStressTestComponent.AutoComponent.xml
    Source/AutoGen/NetworkTeleportCompatibleComponent.AutoComponent.xml
    Source/AutoGen/NetworkTeleportComponent.AutoComponent.xml
    Source/AutoGen/NetworkTestSpawnerComponent.AutoComponent.xml
    Source/AutoGen/NetworkWeaponsComponent.AutoComponent.xml
    Source/AutoGen/PlayerArmorComponent.AutoComponent.xml
    Source/AutoGen/PlayerCoinCollectorComponent.AutoComponent.xml
    Source/AutoGen/PlayerIdentityComponent.AutoComponent.xml
    Source/AutoGen/PlayerKnockbackEffectComponent.AutoComponent.xml

    Source/Components/ExampleFilteredEntityComponent.h
    Source/Components/ExampleFilteredEntityComponent.cpp
    Source/Components/NetworkAiComponent.cpp
    Source/Components/NetworkAiComponent.h
    Source/Components/NetworkAnimationComponent.cpp
    Source/Components/NetworkAnimationComponent.h
    Source/Components/NetworkHealthComponent.cpp
    Source/Components/NetworkHealthComponent.h
    Source/Components/NetworkMatchComponent.cpp
    Source/Components/NetworkMatchComponent.h
    Source/Components/NetworkPlayerSpawnerComponent.cpp
    Source/Components/NetworkPlayerSpawnerComponent.h
    Source/Components/NetworkRandomComponent.cpp
    Source/Components/NetworkRandomComponent.h
    Source/Components/NetworkTeleportComponent.cpp
    Source/Components/NetworkTeleportComponent.h
    Source/Components/NetworkTeleportCompatibleComponent.cpp
    Source/Components/NetworkTeleportCompatibleComponent.h
    Source/Components/NetworkWeaponsComponent.cpp
    Source/Components/NetworkWeaponsComponent.h
    Source/Components/NetworkSimplePlayerCameraComponent.cpp
    Source/Components/NetworkSimplePlayerCameraComponent.h
    Source/Components/PerfTest/NetworkPrefabSpawnerComponent.cpp
    Source/Components/PerfTest/NetworkPrefabSpawnerComponent.h
    Source/Components/PerfTest/NetworkRandomImpulseComponent.cpp
    Source/Components/PerfTest/NetworkRandomImpulseComponent.h
    Source/Components/PerfTest/NetworkTestSpawnerComponent.cpp
    Source/Components/PerfTest/NetworkTestSpawnerComponent.h
    Source/Components/PerfTest/NetworkRandomTranslateComponent.cpp
    Source/Components/PerfTest/NetworkRandomTranslateComponent.h
    Source/Components/NetworkStressTestComponent.cpp
    Source/Components/NetworkStressTestComponent.h
    Source/Components/NetworkPlayerMovementComponent.cpp
    Source/Components/NetworkPlayerMovementComponent.h

    Source/Components/UI/HUDComponent.cpp
    Source/Components/UI/HUDComponent.h
    Source/Components/UI/UiCoinCountComponent.cpp
    Source/Components/UI/UiCoinCountComponent.h
    Source/Components/UI/UiGameOverComponent.cpp
    Source/Components/UI/UiGameOverComponent.h
    Source/Components/UI/UiMatchPlayerCoinCountsComponent.cpp
    Source/Components/UI/UiMatchPlayerCoinCountsComponent.h
    Source/Components/UI/UiPlayerArmorComponent.cpp
    Source/Components/UI/UiPlayerArmorComponent.h

    Source/Components/Multiplayer/GemComponent.cpp
    Source/Components/Multiplayer/GemComponent.h
    Source/Components/Multiplayer/GemSpawnerComponent.cpp
    Source/Components/Multiplayer/GemSpawnerComponent.h
    Source/Components/Multiplayer/MatchPlayerCoinsComponent.cpp
    Source/Components/Multiplayer/MatchPlayerCoinsComponent.h
    Source/Components/Multiplayer/PlayerArmorComponent.cpp
    Source/Components/Multiplayer/PlayerArmorComponent.h
    Source/Components/Multiplayer/PlayerCoinCollectorComponent.cpp
    Source/Components/Multiplayer/PlayerCoinCollectorComponent.h
    Source/Components/Multiplayer/PlayerIdentityComponent.cpp
    Source/Components/Multiplayer/PlayerIdentityComponent.h
    Source/Components/Multiplayer/PlayerKnockbackEffectComponent.cpp
    Source/Components/Multiplayer/PlayerKnockbackEffectComponent.h
    Source/Components/Multiplayer/EnergyBallComponent.cpp
    Source/Components/Multiplayer/EnergyBallComponent.h
    Source/Components/Multiplayer/EnergyCannonComponent.cpp
    Source/Components/Multiplayer/EnergyCannonComponent.h

    Source/GameState/GameStateMatchEnded.h
    Source/GameState/GameStateMatchEnded.cpp
    Source/GameState/GameStateMatchInProgress.h
    Source/GameState/GameStateMatchInProgress.cpp
    Source/GameState/GameStatePreparingMatch.h
    Source/GameState/GameStatePreparingMatch.cpp
    Source/GameState/GameStateWaitingForPlayers.h
    Source/GameState/GameStateWaitingForPlayers.cpp

    Source/Spawners/IPlayerSpawner.h
    Source/Spawners/RoundRobinSpawner.h
    Source/Spawners/RoundRobinSpawner.cpp
    Source/Weapons/BaseWeapon.cpp
    Source/Weapons/BaseWeapon.h
    Source/Weapons/IWeapon.h
    Source/Weapons/ProjectileWeapon.cpp
    Source/Weapons/ProjectileWeapon.h
    Source/Weapons/TraceWeapon.cpp
    Source/Weapons/TraceWeapon.h
    Source/Weapons/WeaponGathers.cpp
    Source/Weapons/WeaponGathers.h
    Source/Weapons/WeaponTypes.cpp
    Source/Weapons/WeaponTypes.h
    Source/Weapons/SceneQuery.cpp
    Source/Weapons/SceneQuery.h
    Source/MultiplayerSampleSystemComponent.cpp
    Source/MultiplayerSampleSystemComponent.h
    Source/MultiplayerSampleTypes.h

    # Jump Pad logic
    Source/AutoGen/JumpPadComponent.AutoComponent.xml
    Source/Components/Multiplayer/JumpPadComponent.cpp
    Source/Components/Multiplayer/JumpPadComponent.h
    Source/AutoGen/PlayerJumpPadEffectComponent.AutoComponent.xml
    Source/Components/Multiplayer/PlayerJumpPadEffectComponent.cpp
    Source/Components/Multiplayer/PlayerJumpPadEffectComponent.h
)
