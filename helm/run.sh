# This script adds the runatlantis Helm repository and installs the Atlantis Helm chart.
# 
# Steps:
# 1. Add the runatlantis Helm repository using the provided URL.
# 2. Install the Atlantis Helm chart from the runatlantis repository using the specified values file (values.yaml).
helm repo add runatlantis https://runatlantis.github.io/helm-charts

helm install atlantis runatlantis/atlantis -f values.yaml