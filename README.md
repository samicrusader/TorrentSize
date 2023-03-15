# TorrentSize
Get total size of a folder full of .torrent

# Usage

You can find releases for various operating systems in the [releases tab](https://github.com/samicrusader/TorrentSize/releases).

Download one, then make it executable:

```
chmod +x TorrentSize
```

Sample usage with a folder called `torrents` with your torrent files inside:

```
./TorrentSize -i torrents/
```

You can see the options with the `-h` flag:

```
TorrentSize [-h|--help] -i|--input "<value>" [-j|--concurrency
                   <integer>]

                   Get total size of a folder full of .torrent

Arguments:

  -h  --help         Print help information
  -i  --input        Input directory
  -j  --concurrency  Concurrency. Default: 4
```
 
# Build

## Local machine

```
go build
```

## Distribution

```
./go-release.sh
```

Originally a project from:
[![The-Eye.eu](the-eye-logo.png)](https://the-eye.eu)
