# トラブルシューティング

## `docker: Error response from daemon: Conflict. The container name "/latex-cli" is already in use by container` エラーが表示される

`sudo docker rm -f latex-cli` を実行してください。

## CLI がフリーズし、エラーメッセージが表示されない

CLI を実行したディレクトリの容量が大きいとき、処理に長い時間がかかることがあります。新しいディレクトリを作成し、その中で CLI を実行してください。
