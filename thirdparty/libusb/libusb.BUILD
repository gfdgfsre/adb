package(default_visibility = ["//visibility:public"])

load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "cc_test")

PROPAGATED_WINDOWS_DEFINES = []

COPTS = [] + select({
    "@bazel_tools//src/conditions:windows": [
        "-D" + define
        for define in PROPAGATED_WINDOWS_DEFINES
    ],
    "//conditions:default": [
        "-DDEBUG",
    ],
})

LINKOPTS = [] + select({
    "@bazel_tools//src/conditions:windows": [
        "-DefaultLib:" + "ws2_32.lib",
    ],
    "//conditions:default": [
    ],
})

cc_library(
    name = "libusb1.0_headers",
    hdrs = [
       	"libusb-1.0.23/libusb/*.h",
    ],
    strip_include_prefix = "libusb-1.0.23/libusb",
    deps = [
    ],
)

cc_library(
    name = "libusb1.0_os_headers",
    hdrs = [
       	"libusb-1.0.23/libusb/os/*.h",
    ],
    strip_include_prefix = "libusb-1.0.23/libusb/os",
    deps = [
    ],
)

cc_library(
    name = "libusb1.0_common",
    srcs = [
		 "libusb-1.0.23/libusb/core.c",
		 "libusb-1.0.23/libusb/descriptor.c",
		 "libusb-1.0.23/libusb/hotplug.c",
		 "libusb-1.0.23/libusb/io.c",
		 "libusb-1.0.23/libusb/sync.c",
		 "libusb-1.0.23/libusb/strerror.c",
    ],
    deps = [
	    "libusb1.0_headers",
    ],
)

cc_library(
    name = "libusb1.0_linux",
    srcs = [
		 "libusb-1.0.23/libusb/os/linux_usbfs.c",
		 "libusb-1.0.23/libusb/os/poll_posix.c",
		 "libusb-1.0.23/libusb/os/threads_posix.c",
		 "libusb-1.0.23/libusb/os/linux_netlink.c",
    ],
    deps = [
	    "libusb1.0_headers",
	    "libusb1.0_os_headers",
	    "libusb1.0_common",
    ],
)

cc_library(
    name = "libusb1.0_windows",
    srcs = [
		 "libusb-1.0.23/libusb/os/windows_nt_common.c",
		 "libusb-1.0.23/libusb/os/windows_usbdk.c",
		 "libusb-1.0.23/libusb/os/windows_winusb.c",
		 "libusb-1.0.23/libusb/os/threads_windows.c",
		 "libusb-1.0.23/libusb/os/poll_windows.c"
    ],
    linkopts = LINKOPTS,
    deps = [
	    "libusb1.0_headers",
	    "libusb1.0_os_headers",
	    "libusb1.0_common",
    ],
)