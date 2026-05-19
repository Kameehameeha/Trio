//
//  OmnipodExtensions.swift
//  Trio
//
//  Extension to reset Pod Keep Alive setting to Disabled on new pod activation
//

import OmniKit

extension OmnipodPumpManager {
    /// Reset Pod Keep Alive (silencePod) preference to disabled for newly activated pods
    /// This ensures that the Pod Keep Alive setting does not persist from the previous pod
    /// Default behavior: Disabled (false) means normal operation with pod beeps/alerts enabled
    func resetPodKeepAliveToDisabled() {
        setState { state in
            state.silencePod = false
            debugPrint("Pod Keep Alive reset to Disabled for new pod activation")
        }
    }
}
