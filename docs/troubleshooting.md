# トラブルシューティング

## `docker: Error response from daemon: Conflict. The container name "/latex-cli" is already in use by container` エラーが表示される

`sudo docker rm -f latex-cli` を実行してください。

## `Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied` エラーが表示される

ユーザーを `docker` グループに追加してください。詳しくは [Docker のドキュメント](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user) を参照。

## CLI がフリーズし、エラーメッセージが表示されない

CLI を実行したディレクトリの容量が大きいとき、処理に長い時間がかかることがあります。新しいディレクトリを作成し、その中で CLI を実行してください。
