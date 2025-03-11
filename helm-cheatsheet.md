# Helm Syntax Cheatsheet

## Helm Basics
- Check Helm version:
  ```sh
  helm version
  ```
- View available Helm commands:
  ```sh
  helm help
  ```
- Get help for a specific command:
  ```sh
  helm <command> --help
  ```

## Working with Charts
- Search for a chart in a repository:
  ```sh
  helm search repo <chart_name>
  ```
- Download a chart locally:
  ```sh
  helm pull <chart_name>
  ```
- Show information about a chart:
  ```sh
  helm show chart <chart_name>
  ```
- Show values of a chart:
  ```sh
  helm show values <chart_name>
  ```

## Installing and Upgrading Releases
- Install a chart with a specific name:
  ```sh
  helm install <release_name> <chart_name>
  ```
- Install a chart with custom values:
  ```sh
  helm install <release_name> <chart_name> -f values.yaml
  ```
- Upgrade an existing release:
  ```sh
  helm upgrade <release_name> <chart_name>
  ```
- Upgrade and reuse previous values:
  ```sh
  helm upgrade <release_name> <chart_name> --reuse-values
  ```

## Managing Releases
- List all installed releases:
  ```sh
  helm list
  ```
- Get information about a release:
  ```sh
  helm status <release_name>
  ```
- Roll back to a previous release revision:
  ```sh
  helm rollback <release_name> <revision>
  ```
- Uninstall a release:
  ```sh
  helm uninstall <release_name>
  ```

## Working with Repositories
- List configured repositories:
  ```sh
  helm repo list
  ```
- Add a repository:
  ```sh
  helm repo add <repo_name> <repo_url>
  ```
- Update repository information:
  ```sh
  helm repo update
  ```
- Remove a repository:
  ```sh
  helm repo remove <repo_name>
  ```

## Template Rendering and Debugging
- Render chart templates without installing:
  ```sh
  helm template <release_name> <chart_name>
  ```
- Debug a Helm template:
  ```sh
  helm template <release_name> <chart_name> --debug
  ```
- Dry-run an installation without applying changes:
  ```sh
  helm install <release_name> <chart_name> --dry-run
  ```

## Helm Chart Development
- Create a new chart:
  ```sh
  helm create <chart_name>
  ```
- Package a chart for distribution:
  ```sh
  helm package <chart_directory>
  ```
- Lint a chart for errors:
  ```sh
  helm lint <chart_directory>
  ```
- Push a chart to a repository:
  ```sh
  helm push <chart_name>.tgz <repo_name>
  ```

## Working with Values
- Get default values of a chart:
  ```sh
  helm show values <chart_name>
  ```
- Override values during installation:
  ```sh
  helm install <release_name> <chart_name> --set <key>=<value>
  ```
- Override values with multiple parameters:
  ```sh
  helm install <release_name> <chart_name> --set <key1>=<value1>,<key2>=<value2>
  ```
- Use a custom values file:
  ```sh
  helm install <release_name> <chart_name> -f custom-values.yaml
  ```

## Helm Secrets (If Using Helm Secrets Plugin)
- Encrypt a values file:
  ```sh
  helm secrets enc <file.yaml>
  ```
- Decrypt and view a values file:
  ```sh
  helm secrets view <file.yaml>
  ```
- Install a chart using encrypted values:
  ```sh
  helm install <release_name> <chart_name> -f secrets.yaml
  ```

