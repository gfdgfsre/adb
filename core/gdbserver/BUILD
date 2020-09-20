package(default_visibility = ["//visibility:public"])

load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "cc_test")


cc_library(
    name = "gdbserver",
    srcs = [
	    "GdbServer.cpp",
	    "RspConnection.cpp",
	    "RspPacket.cpp",
	    "Utils.cpp",
    ],
    hdrs = glob([
        "include/*/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
    ],
)

