package(default_visibility = ["//visibility:public"])

load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "cc_test")


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
    deps = [
    	"//core/libcutils:adb_transport",
    ],
)