package main

import (
	"github.com/gruntwork-io/terratest/modules/test-structure"
	"testing"
)

func TestCloudFlareDns(t *testing.T) {
	t.Parallel()

	dnsTfDir := "../examples/complete"

	defer test_structure.RunTestStage(t, "teardown", func() { teardown(t, dnsTfDir) })
	test_structure.RunTestStage(t, "deploy", func() { deploy(t, dnsTfDir, map[string]interface{}{}) })
}
