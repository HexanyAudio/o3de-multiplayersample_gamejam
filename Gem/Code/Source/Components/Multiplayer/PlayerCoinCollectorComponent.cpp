/*
 * Copyright (c) Contributors to the Open 3D Engine Project. For complete copyright and license terms please see the LICENSE at the root of this distribution.
 *
 * SPDX-License-Identifier: Apache-2.0 OR MIT
 *
 */

#include <UiCoinCountBus.h>
#include <AzFramework/Physics/PhysicsScene.h>
#include <AzFramework/Physics/Collision/CollisionEvents.h>
#include <Components/NetworkCoinComponent.h>
#include <Source/Components/Multiplayer/PlayerCoinCollectorComponent.h>

namespace MultiplayerSample
{
    PlayerCoinCollectorComponentController::PlayerCoinCollectorComponentController(PlayerCoinCollectorComponent& parent)
        : PlayerCoinCollectorComponentControllerBase(parent)
    {
    }

    void PlayerCoinCollectorComponentController::OnActivate([[maybe_unused]] Multiplayer::EntityIsMigrating entityIsMigrating)
    {
        if (IsAuthority())
        {
            if (AzPhysics::SceneInterface* si = AZ::Interface<AzPhysics::SceneInterface>::Get())
            {
                const AzPhysics::SceneHandle sh = si->GetSceneHandle(AzPhysics::DefaultPhysicsSceneName);
                si->RegisterSceneTriggersEventHandler(sh, m_trigger);
            }
        }
    }

    void PlayerCoinCollectorComponentController::OnDeactivate([[maybe_unused]] Multiplayer::EntityIsMigrating entityIsMigrating)
    {
        m_trigger.Disconnect();
    }

    void PlayerCoinCollectorComponentController::OnTriggerEvents(const AzPhysics::TriggerEventList& tel)
    {
        for (const AzPhysics::TriggerEvent& te : tel)
        {
            if (te.m_otherBody && te.m_otherBody->GetEntityId() == GetEntityId())
            {
                if (te.m_type == AzPhysics::TriggerEvent::Type::Enter)
                {
                    AZ::Entity* coinEntity = nullptr;
                    AZ::ComponentApplicationBus::BroadcastResult(coinEntity,
                        &AZ::ComponentApplicationBus::Events::FindEntity, te.m_triggerBody->GetEntityId());
                    if (coinEntity)
                    {
                        if (NetworkCoinComponent* coin = coinEntity->FindComponent<NetworkCoinComponent>())
                        {
                            coin->CollectedByPlayer();
                            ModifyCoinsCollected()++;
                            UiCoinCountNotificationBus::Broadcast(&UiCoinCountNotifications::OnCoinCountChanged, GetCoinsCollected());
                        }
                    }
                }
            }
        }
    }
}
