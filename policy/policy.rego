package terraform.analysis

default allow = false

allow {
    input.request.object.kind == "Resource"
    tags := input.request.object.spec.tags
    contains_environment_tag(tags)
}

contains_environment_tag(tags) {
    some tag_key
    tags[tag_key] == "Environment"
}