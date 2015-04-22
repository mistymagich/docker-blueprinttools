# docker-blueprint

[API Blueprint](https://apiblueprint.org/) tools

* [drakov](https://github.com/Aconex/drakov) - mock server
* [aglio](https://www.npmjs.com/package/aglio) - renderer

## build container

```bash
git clone https://github.com/mistymagich/docker-blueprinttools.git
cd docker-blueprinttools
docker build -t blueprint_tools .
```

## run container

```bash
docker run \
    -it \
    -p 8080:8080 \
    -p 8888:8888 \
    -v [blueprint document directory]:/blueprint \
    (-e BLUEPRINT_TOOLS_DOC_INDEX=index.md \ )
    blueprint_tools
```

* **[blueprint document directory]** - required, blueprint document folder path
* **BLUEPRINT_TOOLS_DOC_INDEX** - optional, index page filename (default: index.md)

## access container

http://127.0.0.1:8888 -  aglio

![aglio sample](https://raw.githubusercontent.com/mistymagich/docker-blueprinttools/master/pic/aglio_sample.png)

http://127.0.0.1:8080 - drakov

![http://127.0.0.1:8080/notes](https://raw.githubusercontent.com/mistymagich/docker-blueprinttools/master/pic/drakov_sample.png)


## example

### single blueprint document

```bash
git clone https://github.com/apiaryio/api-blueprint.git
cp api-blueprint/examples/Real\ World\ API.md index.md
docker run -it -p 8080:8080 -p 8888:8888 -v `pwd`:/blueprint blueprint_tools
```

### use BLUEPRINT_TOOLS_DOC_INDEX and multiple files

```bash
git clone https://github.com/danielgtaylor/aglio
docker run -it -p 8080:8080 -p 8888:8888 -v `pwd`/aglio:/blueprint -e "BLUEPRINT_TOOLS_DOC_INDEX=example.md" blueprint_tools
```

## use Vagrant (optional)

### requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com)
* Vagrant plug-in
	* [Vagrant Host Manager](https://github.com/smdahlen/vagrant-hostmanager)
	  ```
	  vagrant plugin install vagrant-hostmanager
	  ```

### run vagrant

```bash
git clone https://github.com/mistymagich/docker-blueprinttools.git
cd docker-blueprinttools
```

edit **docker-compose.yml** for folder path and index filename.
(currecnt directory mounted '/vagrant' at guest OS.)

```bash
vagrant up
```

access http://blueprint.local:8080 and http://blueprint.local:8888
