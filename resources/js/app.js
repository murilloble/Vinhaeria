// Variável para controlar a página atual
let paginaAtual = 1;
const limitePaginas = 5;  // Vamos carregar 5 seções de conteúdo

// Função para carregar conteúdo
function carregarConteudo() {
    // Verifica se ainda há mais conteúdo para carregar
    if (paginaAtual <= limitePaginas) {
        fetch(`page${paginaAtual}.jsp`)
            .then(response => response.text())
            .then(data => {
                // Adiciona o conteúdo carregado ao final do conteúdo atual
                document.getElementById("conteudo").innerHTML += data;
                paginaAtual++;  // Incrementa a página para carregar a próxima
            })
            .catch(error => {
                console.error("Erro ao carregar o conteúdo:", error);
            });
    } else {
        // Caso não haja mais conteúdo, você pode desabilitar o carregamento
        console.log("Fim do conteúdo.");
    }
}

// Função para verificar o scroll e carregar mais conteúdo
function verificarScroll() {
    // Verifica se o usuário chegou ao final da página
    if (window.innerHeight + window.scrollY >= document.body.offsetHeight - 500) {
        carregarConteudo();
    }
}