# linux-vm-prep

Install Azure Script extension
Upload your script file (example linuxvmprep.sh) to an Azure blob storage account and use that file in picker in Azure Portal
Configure the command to be "sh linuxvmprep.sh"

From an ARM template point of view, this was configured:
                    "fileUris": {
                        "value": ["https://<storageaccountname>.blob.core.windows.net/scripts/linuxvmprep.sh?saskey"
                        ]
                    },
                    "commandToExecute": {
                        "value": "sh linuxvmprep.sh"

After the VM is deployed (Ubuntu 18 LTS example), I got this result after connecting via SSH and running: cat /etc/environment

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export http_proxy=https://10.1.15.132:8080
export https_proxy=http://10.1.15.132:8080
export no_proxy=

