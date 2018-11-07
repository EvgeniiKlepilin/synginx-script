# SyNginx Script
Synginx is a package with various scripts that automate and accelerate NGINX server with Symfony run on it setup. 
Modular desugn allows for it to be easily modified and tweaked whenever necessary.

# Getting Started
To start off, make sure you are familiar with all the values and commands executed in those scripts. Double check to ensure quick set up, so that you don't have to come back to it again.
You must execute this with following command:
```
cd synginx_root_folder
sudo ./synginx-demo.sh
```

You can also execute separate part individually if you desire
```
cd synginx_root_folder
sudo ./synginx-install.sh
sudo ./synginx-install-php-ext.sh
sudo ./synginx-configure.sh
sudo ./synginx-mysql.sh
```

The reason for executing this script inside this root directory is because script uses some of the configuration files included in the folder.

# Built with
* [Bash Scripting](https://www.shellscript.sh/) - Bourne Shell Programming

## Authors

* **Evgenii Klepilin** - *[GitHub](https://github.com/EvgeniiKlepilin)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
