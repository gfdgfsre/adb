package(default_visibility = ["//visibility:public"])

load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "cc_test")


cc_binary(
    name = "etm",
    srcs = glob([
        "src/*.c",
    ]),
    hdrs = glob([
        "inc/*.h",
    ]),
    strip_include_prefix  = "inc",
    deps = [
    ],
)