#ifndef SWAPCHAINSUPPORTDETAILS_H
#define SWAPCHAINSUPPORTDETAILS_H

#include <vulkan/vulkan.h>
#include <vector>

struct SwapChainSupportDetails{
    VkSurfaceCapabilitiesKHR capabilities;
    std::vector<VkSurfaceFormatKHR> formats;
    std::vector<VkPresentModeKHR> presentModes;
};

#endif