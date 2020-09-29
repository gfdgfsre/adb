package(default_visibility = ["//visibility:public"])

load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "cc_test")

PROPAGATED_WINDOWS_DEFINES = []

COPTS = [] + select({
    "@bazel_tools//src/conditions:windows": [
        "-D" + define
        for define in PROPAGATED_WINDOWS_DEFINES
    ],
    "//conditions:default": [
        "-DARROW_USE_GLOG",
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
    name = "adb",
    srcs = [
        "adb.c",
		"console.c",
		"transport.c",
		"transport_local.c",
		"transport_usb.c",
		"commandline.c",
		"adb_client.c",
		"adb_auth_host.c",
		"sockets.c",
		"services.c",
		"file_sync_client.c",
		"get_my_path_linux.c",
		"usb_linux.c",
		"usb_vendors.c",
		"fdevent.c",
    ],
    hdrs = glob([
        "*.h",
    ]),
    copts = COPTS,
    linkopts = LINKOPTS,
    deps = [
    	"//core/libcutils:adb_transport",
    ],
)