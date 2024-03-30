#pragma once
#include "beatsaber-hook/shared/utils/logging.hpp"

#ifndef MOD_ID
#define MOD_ID "bs-utils"
#endif

#ifndef VERSION
#define VERSION "0.0.0"
#endif

namespace BSUtils {
    constexpr static auto logger = Paper::ConstLoggerContext("BS-Utils");
}
