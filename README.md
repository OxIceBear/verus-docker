# verus-docker
A docker setup to mine [Verus coin](https://verus.io/) using [Hellminer](https://github.com/hellcatz/luckpool) for those who are not using linux natively on their computer. Follow the steps below to setup to run this on your local computer. 

I tested this on my Windows 10 PC running Windows Subsystem for Linux (WSL2) and Docker Desktop Version 4.5.1 (74721).

* Download [Docker Desktop](https://www.docker.com/products/docker-desktop)
* Git clone [this repo](https://github.com/dogracer/verus-docker)
* Go to the cloned repo folder and modify the mine-to address with your public Verus coin address.
* In terminal, run `docker-compose build` inside the repo.
* Then run `sh ./start_verus.sh`
* Go to url https://pool.verus.io/workers/YOUR_PUBLIC_VERUS_COIN_ADDRESS to check your mining progress. (Take a couple minutes to show up in the website)
