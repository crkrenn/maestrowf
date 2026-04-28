syft packages . -o cyclonedx-json > source-sbom.json
syft packages ../venv -o cyclonedx-json > venv-sbom.json
trivy fs -f json -o source-trivy.json .
trivy fs -f json -o venv-trivy.json ../venv-maestro-wf/
 grype -o json . > source-grype.json
grype -o json ../venv-maestro-wf/ > venv-grype.json
grype ../venv-maestro-wf/
trivy fs ../venv-maestro-wf/
