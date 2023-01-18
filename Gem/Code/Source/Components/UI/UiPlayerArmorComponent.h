/*
 * Copyright (c) Contributors to the Open 3D Engine Project.
 * For complete copyright and license terms please see the LICENSE at the root of this distribution.
 *
 * SPDX-License-Identifier: Apache-2.0 OR MIT
 *
 */

#pragma once

#if AZ_TRAIT_CLIENT
#include <UiPlayerArmorBus.h>
#endif

#include <AzCore/Component/Component.h>

namespace MultiplayerSample
{
    class UiPlayerArmorComponent
        : public AZ::Component
#if AZ_TRAIT_CLIENT
        , public UiPlayerArmorNotificationBus::Handler
#endif
    {
    public:
        AZ_COMPONENT(UiPlayerArmorComponent, "{15de84e4-eb35-4c9a-a0e3-9e39c10a7ff4}");

        static void Reflect(AZ::ReflectContext* context);

        void Activate() override;
        void Deactivate() override;

#if AZ_TRAIT_CLIENT
        //! UiPlayerArmorNotificationBus overrides ...
        //! @{
        void OnPlayerArmorChanged(float armorPointsForLocalPlayer, float startingArmor) override;
        //! @}
#endif

    private:
        // UI entities
        AZ::EntityId m_rootElement;
        AZ::EntityId m_armorVisualEntity;
        AZ::EntityId m_armorText;
    };
} // namespace MultiplayerSample