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

    # TODO(greg): extract linting kwargs here

    # invoke native rule
    native_rule(**kwargs)

    # TODO(greg): invoke linters here
