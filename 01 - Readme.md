### Arquivo para documentação e instruções de funcionamento:

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Documentação de Implantação</title>
</head>
<body>
    <h1>Documentação para Implantação e Execução da Aplicação JSP no EC2</h1>

    <p><strong>Endereço do Servidor EC2:</strong><br>
    <a href="http://ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:8080/Vinhaeria/" target="_blank">
        http://ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:8080/Vinhaeria/
    </a></p>

    <h2>Pré-Requisitos de Testes:</h2>

    <ol>
        <li><strong>Instalação do Tomcat e Java JDK</strong><br>
            Antes de iniciar, é necessário ter o Apache Tomcat e o Java JDK 11 ou superior instalados.

            <ul>
                <li><strong>Apache Tomcat</strong>: Baixe a versão mais recente ou uma versão compatível <a href="https://tomcat.apache.org/" target="_blank">aqui</a>.
                    <ul>
                        <li>Baixar o arquivo zipado e extrair em uma pasta.</li>
                    </ul>
                </li>
                <li><strong>Java JDK 11+</strong>: O JDK 11 ou superior é necessário para executar a aplicação corretamente. Caso ainda não tenha o Java instalado, faça o download <a href="https://www.oracle.com/java/technologies/javase-jdk11-downloads.html" target="_blank">aqui</a>.</li>
            </ul>
        </li>

        <li><strong>Configuração do Ambiente no Sistema Operacional (Windows, macOS ou Linux)</strong><br>
            Abra o terminal (Git Bash ou cmd no Windows) e edite o arquivo de configuração de ambiente (<code>bash_profile</code> no caso de sistemas baseados em Unix):

            <pre><code>nano ~/.bash_profile</code></pre>

            Adicione as seguintes linhas no arquivo, alterando os diretórios para onde o Java JDK e o Tomcat estão instalados:
            <pre><code>

export JAVA_HOME="/c/Program Files/Java/jdk-11.0.10"
export PATH="$JAVA_HOME/bin:$PATH"
export CATALINA_HOME="/c/Tomcat/apache-tomcat-x.x.x"
export PATH="$CATALINA_HOME/bin:$PATH"
</code></pre>

            <p><strong>Salve e feche</strong> com:</p>
            <ul>
                <li>[Ctrl + O] + [Enter] para salvar</li>
                <li>[Ctrl + X] para fechar o editor</li>
            </ul>
        </li>

        <li><strong>Conexão e Implantação na Instância EC2</strong><br>
            Para conectar-se ao servidor EC2 e realizar a implantação da aplicação:

            <ul>
                <li><strong>Conectar-se via SSH:</strong><br>
                    Abra o terminal na pasta onde está o arquivo da chave PEM e a aplicação WAR (<code>Vinheria.war</code>), e execute os seguintes comandos:
                    <pre><code>scp -i "key-pem-vinheria.pem" Vinheria.war ubuntu@ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:/home/ubuntu/</code></pre>
                    <pre><code>ssh -i "key-pem-vinheria.pem" ubuntu@ec2-177-71-206-120.sa-east-1.compute.amazonaws.com</code></pre>
                </li>
            </ul>
        </li>

        <li><strong>Instalar ou Atualizar Tomcat e Java no EC2</strong><br>
            Caso o Tomcat ou o Java não estejam instalados ou precisem ser atualizados, siga os comandos abaixo:

            <ul>
                <li><strong>Atualizar o sistema e instalar o JDK:</strong>
                    <pre><code>sudo apt update

sudo apt install default-jdk -y</code></pre>
</li>
<li><strong>Baixar e instalar o Tomcat:</strong>
<pre><code>cd /opt
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz
sudo tar -xvzf apache-tomcat-9.0.87.tar.gz
sudo mv apache-tomcat-9.0.87 tomcat9
sudo chmod +x /opt/tomcat9/bin/_.sh</code></pre>
</li>
<li><strong>Verificar se o Tomcat foi extraído corretamente:</strong>
<pre><code>ls -lh /opt/apache-tomcat-9.0.87.tar.gz</code></pre>
</li>
<li><strong>Caso o arquivo não esteja presente ou a extração não tenha sido bem-sucedida:</strong>
<pre><code>cd /opt
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz
sudo tar -xvzf apache-tomcat-9.0.87.tar.gz
sudo mv apache-tomcat-9.0.87 tomcat9
sudo chmod +x /opt/tomcat9/bin/_.sh</code></pre>
</li>
<li><strong>Iniciar o Tomcat:</strong>
<pre><code>cd /opt/tomcat9/bin
sudo ./startup.sh</code></pre>
</li>
</ul>
</li>

        <li><strong>Implantar a Aplicação WAR no Tomcat:</strong><br>
            Copie a aplicação <code>Vinheria.war</code> para o diretório <code>webapps</code> do Tomcat:
            <pre><code>sudo mv /home/ubuntu/Vinheria.war /opt/tomcat9/webapps/</code></pre>
        </li>

        <li><strong>Acessar a Aplicação:</strong><br>
            Após a implantação bem-sucedida e a inicialização do Tomcat, acesse a aplicação no navegador:
            <br>
            <a href="http://ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:8080/Vinhaeria/" target="_blank">
                http://ec2-177-71-206-120.sa-east-1.compute.amazonaws.com:8080/Vinhaeria/
            </a>
        </li>
    </ol>

    <h2>Verificação de Pré-Requisitos:</h2>

    <ul>
        <li><strong>Java JDK 11+</strong>: Verifique se o Java está corretamente instalado com o comando:
            <pre><code>java -version</code></pre>
        </li>
        <li><strong>Tomcat:</strong> Verifique se o Tomcat está funcionando com:
            <pre><code>sudo systemctl status tomcat</code></pre>
        </li>
    </ul>

    <p>Caso algum pré-requisito esteja faltando ou qualquer erro ocorra, verifique as permissões e se os diretórios e arquivos foram configurados corretamente.</p>

</body>
</html>
