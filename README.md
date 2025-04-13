# **Documentação para Implantação e Execução da Aplicação JSP no EC2**

### **Endereço do Servidor EC2:**
[http://ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:8080/Vinhaeria/](http://ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:8080/Vinhaeria/)

---

## **Pré-Requisitos de Testes**

### 1. **Instalação do Tomcat e Java JDK**

Antes de começar, é necessário ter o **Apache Tomcat** e o **Java JDK 11 ou superior** instalados.

- **Apache Tomcat**: Baixe a versão mais recente ou uma versão compatível em [https://tomcat.apache.org/](https://tomcat.apache.org/).  
  > **Observação**: Baixe o arquivo zipado e extraia em uma pasta de sua escolha.

- **Java JDK 11+**: O JDK 11 ou superior é necessário para executar a aplicação corretamente. Caso ainda não tenha o Java instalado, faça o download em [https://www.oracle.com/java/technologies/javase-jdk11-downloads.html](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html).

### 2. **Configuração do Ambiente no Sistema Operacional (Windows, macOS ou Linux)**

Abra o terminal (Git Bash ou cmd no Windows) e edite o arquivo de configuração de ambiente (`bash_profile` no caso de sistemas baseados em Unix).

1. Abra o terminal e digite:
    ```bash
    nano ~/.bash_profile
    ```

2. Adicione as seguintes linhas no arquivo, alterando os diretórios para onde o **Java JDK** e o **Tomcat** estão instalados:
    ```bash
    export JAVA_HOME="/c/Program Files/Java/jdk-11.0.10"
    export PATH="$JAVA_HOME/bin:$PATH"
    export CATALINA_HOME="/c/Tomcat/apache-tomcat-x.x.x"
    export PATH="$CATALINA_HOME/bin:$PATH"
    ```

3. **Salve e feche** com as seguintes teclas:
    - [Ctrl + O] + [Enter] para salvar
    - [Ctrl + X] para fechar o editor.

---

### 3. **Conexão e Implantação na Instância EC2**

Para conectar-se ao servidor EC2 e realizar a implantação da aplicação, siga os seguintes passos:

#### **Conectar-se via SSH:**

Abra o terminal na pasta onde estão localizados o arquivo da chave PEM e a aplicação WAR (`Vinheria.war`), e execute os seguintes comandos:

1. **Transferir o arquivo WAR para a instância EC2**:
    ```bash
    scp -i "key-pem-vinheria.pem" Vinheria.war ubuntu@ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:/home/ubuntu/
    ```

2. **Acessar o servidor EC2 via SSH**:
    ```bash
    ssh -i "key-pem-vinheria.pem" ubuntu@ec2-177-71-206-120.sa-east-1.compute.amazonaws.com
    ```

---

### 4. **Instalar ou Atualizar Tomcat e Java no EC2**

Caso o Tomcat ou o Java não estejam instalados ou precisem ser atualizados, execute os seguintes comandos:

1. **Atualizar o sistema e instalar o JDK**:
    ```bash
    sudo apt update
    sudo apt install default-jdk -y
    ```

2. **Baixar e instalar o Tomcat**:
    ```bash
    cd /opt
    sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz
    sudo tar -xvzf apache-tomcat-9.0.87.tar.gz
    sudo mv apache-tomcat-9.0.87 tomcat9
    sudo chmod +x /opt/tomcat9/bin/*.sh
    ```

3. **Verificar se o Tomcat foi extraído corretamente**:
    ```bash
    ls -lh /opt/apache-tomcat-9.0.87.tar.gz
    ```

4. **Caso o arquivo não esteja presente ou a extração não tenha sido bem-sucedida, execute novamente**:
    ```bash
    cd /opt
    sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz
    sudo tar -xvzf apache-tomcat-9.0.87.tar.gz
    sudo mv apache-tomcat-9.0.87 tomcat9
    sudo chmod +x /opt/tomcat9/bin/*.sh
    ```

5. **Iniciar o Tomcat**:
    ```bash
    cd /opt/tomcat9/bin
    sudo ./startup.sh
    ```

---

### 5. **Implantar a Aplicação WAR no Tomcat**

Copie a aplicação **Vinheria.war** para o diretório **webapps** do Tomcat:
```bash
sudo mv /home/ubuntu/Vinheria.war /opt/tomcat9/webapps/

```

6. **Acessar a Aplicação**:
Após a implantação bem-sucedida e a inicialização do Tomcat, acesse a aplicação no navegador:

http://ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:8080/Vinhaeria/
