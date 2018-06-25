# Docker Python Template

* [see also](https://github.com/DonJayamanne/vscode-python-samples/tree/master/remote-debugging-docker)

## Commands

* build

```bash
docker build -t my-image .
```

* run: mounting current directory and forwarding the ports

```bash
docker run -it --rm --name "my-container" -v $PWD/:/work -p 3000:3000 my-image
```