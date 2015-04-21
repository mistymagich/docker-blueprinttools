# docker-blueprint

[API Blueprint](https://apiblueprint.org/) tools

* [drakov](https://github.com/Aconex/drakov) - mock server
* [aglio](https://www.npmjs.com/package/aglio) - renderer

## build container

```bash
git clone https://github.com/mistymagich/docker-blueprinttools.git
cd docker-blueprinttools
docker build -t blueprinttools .
```

## run container

```bash
docker run -it -p 8080:8080 -p 8888:8888 -v [blueprint document directory]:/blueprint blueprinttools
```

[blueprint document directory] - your blueprint documents folder

e.g.

```bash
git clone https://github.com/apiaryio/api-blueprint.git
cp api-blueprint/examples/Real\ World\ API.md .
docker run -it -p 8080:8080 -p 8888:8888 -v `pwd`:/blueprint blueprinttools
```

## access container

http://127.0.0.1:8888 -  aglio

![aglio sample](https://raw.githubusercontent.com/mistymagich/docker-blueprinttools/master/pic/aglio_sample.png)

http://127.0.0.1:8080 - drakov


![http://127.0.0.1:8080/messages/hello](https://raw.githubusercontent.com/mistymagich/docker-blueprinttools/master/pic/drakov_get_message.png)

![http://127.0.0.1:8080/hello](https://raw.githubusercontent.com/mistymagich/docker-blueprinttools/master/pic/drakov_get_hello.png)


## use Vagrant

### requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](https://www.vagrantup.com)
* Vagrantプラグイン

	* [Vagrant Host Manager](https://github.com/smdahlen/vagrant-hostmanager)

	  ```
	  vagrant plugin install vagrant-hostmanager
	  ```

### run vagrant

```bash
git clone https://github.com/mistymagich/docker-blueprinttools.git
cd docker-blueprinttools
vagrant up
```

access http://blueprint.local:8080,http://blueprint.local:8888

