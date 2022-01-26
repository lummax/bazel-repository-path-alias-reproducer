def _impl(repository_ctx):
    print(repository_ctx.path(repository_ctx.attr.ref))
    repository_ctx.file("BUILD.bazel", "")
    repository_ctx.file("defs.bzl", "def fn(): pass")

setup_repository = repository_rule(
    implementation = _impl,
    attrs = { "ref": attr.label() },
)
