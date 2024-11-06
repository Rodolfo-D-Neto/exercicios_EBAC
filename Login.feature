#language : pt

Funcionalidade: Login

Cenário:Login com sucesso

Dado que estou na página de login
Quando preencho o campo email com "meu_email@email.com" e senha "minha_senha_forte" e clico em "Entrar"
Então sou redirecionado para a página inicial

Cenário: Login com usuário não cadastrado

Dado que estou na página de login
Quando preencho o campo email com "usuario_nao_cadastrado@email.com", senha "minha_senha" e clico em "Entrar"
Então a mensagem "Usuário não encontrado" é exibida

Cenário: Tentativa de login com senha incorreta

Dado que eu estou na página de login
Quando preencho o campo email com "usuario@exemplo.com"e o campo senha com "senha_incorreta"e clico no "Entrar"
Então vejo a mensagem de erro "Senha incorreta"

Cenário: Solicitação de recuperação de senha antes do tempo mínimo

Dado que eu solicitei uma recuperação de senha há 5 minutos
Quando clico no "Esqueceu sua senha?" e preencho o campo email com "usuario@exemplo.com" e clico em "Enviar"
Então vejo a mensagem de erro "Aguarde alguns minutos para solicitar novamente"
