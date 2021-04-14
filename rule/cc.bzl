def linted_cc_library(**kwargs):
    _linted_cc_thing(
        native_rule = native.cc_test,
        description = "cc_library",
        user_kwargs = kwargs,
    )


def _linted_cc_thing(native_rule, description, kwargs):
    """
    Add lint tests to a cc_library, cc_binary, or cc_test, and invoke the native rule.
    """

    # extract linting kwargs
    opts_clang_tidy = kwargs.pop("lint_opts_clang_tidy", {})
    opts_clang_format = kwargs.pop("lint_opts_clang_format", {})

    # invoke native rule
    native_rule(**kwargs)

#    # invoke clang format
#    _clang_format_test(
#        name = kwargs["name"],
#        description = description,
#        files =
#            (kwargs["srcs"] if "srcs" in kwargs else []) +
#            (kwargs["hdrs"] if "hdrs" in kwargs else []),
#        **opts_clang_format,
#    )
