[
    {
        "Id": "02d044875ba439be8b463a4fffd2453450780d5692681f438278eb852639a70c",
        "Created": "2022-07-12T18:30:51.418406092Z",
        "Path": "/usr/bin/tini",
        "Args": [
            "--",
            "/usr/local/bin/jenkins.sh"
        ],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 15232,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2022-07-12T18:30:52.251712134Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
        "Image": "sha256:84c351c29c2ec9674da98b4ced43a0f2318d0669a9de429649525d629a752a25",
        "ResolvConfPath": "/var/lib/docker/containers/02d044875ba439be8b463a4fffd2453450780d5692681f438278eb852639a70c/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/02d044875ba439be8b463a4fffd2453450780d5692681f438278eb852639a70c/hostname",
        "HostsPath": "/var/lib/docker/containers/02d044875ba439be8b463a4fffd2453450780d5692681f438278eb852639a70c/hosts",
        "LogPath": "/var/lib/docker/containers/02d044875ba439be8b463a4fffd2453450780d5692681f438278eb852639a70c/02d044875ba439be8b463a4fffd2453450780d5692681f438278eb852639a70c-json.log",
        "Name": "/jenkins-blueocean",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": [
                "jenkins-data:/var/jenkins_home",
                "jenkins-docker-certs:/certs/client:ro",
                "/host_mnt/Users/kmartens:/home"
            ],
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "jenkins",
            "PortBindings": {
                "50000/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "50000"
                    }
                ],
                "8080/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "8080"
                    }
                ]
            },
            "RestartPolicy": {
                "Name": "on-failure",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "private",
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "ConsoleSize": [
                0,
                0
            ],
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": null,
            "BlkioDeviceWriteBps": null,
            "BlkioDeviceReadIOps": null,
            "BlkioDeviceWriteIOps": null,
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "KernelMemory": 0,
            "KernelMemoryTCP": 0,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": null,
            "PidsLimit": null,
            "Ulimits": null,
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/93d10971cccbecec03e362bb4943c04847ffd724ad2a34b8935936c4b7dfe444-init/diff:/var/lib/docker/overlay2/9u4w8tsdex2ybkqjvt2it6k8d/diff:/var/lib/docker/overlay2/azv97pvyk55ymlx7ey2igdzob/diff:/var/lib/docker/overlay2/vozq5x3q347xiyec5dsh465pm/diff:/var/lib/docker/overlay2/gd8or98vuojm0eh6h67meecm4/diff:/var/lib/docker/overlay2/ly4orrsmzh0s4osaugzwdhsle/diff:/var/lib/docker/overlay2/ec696fa60da93b9871413d68cfddf9875d66e1e7290e63b5775d6a5aca87b0e3/diff:/var/lib/docker/overlay2/7ffed2936f25a30d3ee0a1e804d868b2629123f92c3de83a3fa4a0d211db743f/diff:/var/lib/docker/overlay2/991304fba83139e730eb6e96055637c820ef49ded23ac0f082c94e217fd5bf32/diff:/var/lib/docker/overlay2/20bc0dbdf543002bd20d2a7eac9b45002c4abd515308cf8ffb807fe760e75254/diff:/var/lib/docker/overlay2/709c31751b5431b1deac0d76a21dd373f5bec33f4a063b717c7d4b3188150dd8/diff:/var/lib/docker/overlay2/fb87000dee560f453e6a1412da29363bf2fdaaf6486d626d4351989a7352de0d/diff:/var/lib/docker/overlay2/8e0561d14ac26ee981727b01967b654d21ea22f7e69996711c66d64c71d593a3/diff:/var/lib/docker/overlay2/98e1bd959e2de59f097fffe07c286278616b4875a7ba23cb407f60f8a6f47b6a/diff:/var/lib/docker/overlay2/8deb9818dae06c04cffd261086bf6ae1bdee5d4c03b6f1b01ec1f2374e4656c3/diff:/var/lib/docker/overlay2/e4061815b5803cc75906550356167e1d4a9d73562a194a80adc1a634a194c7fc/diff:/var/lib/docker/overlay2/7627e30fd3a184f5c5a6df361e41e270b726ae84b3cb3fe535341aaf6ad1b992/diff:/var/lib/docker/overlay2/ec04842afced18a9e6a696433264f77defd49ebbcfb5c35348498da9f5738cba/diff:/var/lib/docker/overlay2/f1cd1db419e034fc835fb6054bdc4f4113e58c92ff7c7965695f0572c98310c0/diff:/var/lib/docker/overlay2/b7816abb8390a58afe82688638dfd9d9b7aa14e2e1725426cc0de448e73fcb09/diff",
                "MergedDir": "/var/lib/docker/overlay2/93d10971cccbecec03e362bb4943c04847ffd724ad2a34b8935936c4b7dfe444/merged",
                "UpperDir": "/var/lib/docker/overlay2/93d10971cccbecec03e362bb4943c04847ffd724ad2a34b8935936c4b7dfe444/diff",
                "WorkDir": "/var/lib/docker/overlay2/93d10971cccbecec03e362bb4943c04847ffd724ad2a34b8935936c4b7dfe444/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [
            {
                "Type": "volume",
                "Name": "jenkins-data",
                "Source": "/var/lib/docker/volumes/jenkins-data/_data",
                "Destination": "/var/jenkins_home",
                "Driver": "local",
                "Mode": "z",
                "RW": true,
                "Propagation": ""
            },
            {
                "Type": "volume",
                "Name": "jenkins-docker-certs",
                "Source": "/var/lib/docker/volumes/jenkins-docker-certs/_data",
                "Destination": "/certs/client",
                "Driver": "local",
                "Mode": "ro",
                "RW": false,
                "Propagation": ""
            },
            {
                "Type": "bind",
                "Source": "/host_mnt/Users/kmartens",
                "Destination": "/home",
                "Mode": "",
                "RW": true,
                "Propagation": "rprivate"
            }
        ],
        "Config": {
            "Hostname": "02d044875ba4",
            "Domainname": "",
            "User": "jenkins",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "50000/tcp": {},
                "8080/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "DOCKER_TLS_VERIFY=1",
                "JAVA_OPTS=-Dhudson.plugins.git.GitSCM.ALLOW_LOCAL_CHECKOUT=true",
                "DOCKER_HOST=tcp://docker:2376",
                "DOCKER_CERT_PATH=/certs/client",
                "PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "LANG=C.UTF-8",
                "JENKINS_HOME=/var/jenkins_home",
                "JENKINS_SLAVE_AGENT_PORT=50000",
                "REF=/usr/share/jenkins/ref",
                "JENKINS_VERSION=2.346.1",
                "JENKINS_UC=https://updates.jenkins.io",
                "JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental",
                "JENKINS_INCREMENTALS_REPO_MIRROR=https://repo.jenkins-ci.org/incrementals",
                "COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log",
                "JAVA_HOME=/opt/java/openjdk"
            ],
            "Cmd": null,
            "Image": "myjenkins-blueocean:2.346.1-1",
            "Volumes": {
                "/var/jenkins_home": {}
            },
            "WorkingDir": "",
            "Entrypoint": [
                "/usr/bin/tini",
                "--",
                "/usr/local/bin/jenkins.sh"
            ],
            "OnBuild": null,
            "Labels": {
                "org.opencontainers.image.description": "The Jenkins Continuous Integration and Delivery server",
                "org.opencontainers.image.licenses": "MIT",
                "org.opencontainers.image.revision": "e89ece919407d9600cc5efaf706ac23a9e00795a",
                "org.opencontainers.image.source": "https://github.com/jenkinsci/docker",
                "org.opencontainers.image.title": "Official Jenkins Docker image",
                "org.opencontainers.image.url": "https://www.jenkins.io/",
                "org.opencontainers.image.vendor": "Jenkins project",
                "org.opencontainers.image.version": "2.346.1"
            }
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "f8ac10eeadb1e7cfcc04479f7ce2653d310d91dfeaab8323cae0c60e659b7970",
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "Ports": {
                "50000/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "50000"
                    }
                ],
                "8080/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "8080"
                    }
                ]
            },
            "SandboxKey": "/var/run/docker/netns/f8ac10eeadb1",
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "",
            "Gateway": "",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "",
            "IPPrefixLen": 0,
            "IPv6Gateway": "",
            "MacAddress": "",
            "Networks": {
                "jenkins": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": [
                        "02d044875ba4"
                    ],
                    "NetworkID": "468818c4a6371e86deb94d465f8006fb9a1f8c92e5625d1b9bb0db1ff16aed01",
                    "EndpointID": "d18c0ea6051df2fd15d3531dc8bb24ab80fd5a064369c93ace1de363ad6414ff",
                    "Gateway": "172.19.0.1",
                    "IPAddress": "172.19.0.3",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:13:00:03",
                    "DriverOpts": null
                }
            }
        }
    }
]
