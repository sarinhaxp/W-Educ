<!DOCTYPE html>
<html>

    <head>

    	<meta name="layout" content="login"/>

        <title>Novo Cadastro - W-Educ</title>

    </head>

    <body>

    	<div class="container">
            <div class="row">
                <div class="col-md-12 col-md-offset-2">
                    <div class="col-md-4">
                        <div class="login-panel panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Sobre</h3>
                            </div>
                            <div class="panel-body">
                                <p>
                                    O W-Educ é um ambiente de desenvolvimento web multiplataforma configurável para aplicações em robótica educacional.
                                </p>
                                <p>
                                    Este projeto, desenvolvido por pesquisadores do laboratório NatalNet da Universidade Federal do Rio Grande do Norte, é um projeto aberto, que surgiu como uma extensão do software educacional RoboEduc, e que possibilita que a programação de diversos robôs programáveis possa ser realizada utilizando a linguagem R-Educ. Tornamos possível que o usuário programa na linguagem R-Educ e que seu código seja traduzido para uma linguagem cadastrada por um usuário professor, compilado e em seguida enviado e/ou executado pelo robô.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="login-panel panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Novo Cadastro</h3>
                            </div>
                            <div class="panel-body">
                                <form action="salvar" method='POST' name="usuario" role="form">
                                    <fieldset>
                                    <div class="form-group">
                                            <g:if test="${flash.message}">
                                            	<div class="alert alert-danger alert-dismissable">
    				                            	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    				                                ${flash.message}
    				                            </div>
                                            </g:if>
                                        </div>
                                        ${usuario?.username}
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Usuário" name="username" value="${usuario?.username}" type="text" autofocus required>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Senha" name="password" type="password" required>
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="E-mail" name="email" value="${usuario?.email}" type="email" required>
                                        </div>
                                        <!-- Change this to a button or input when using this as a form -->
                                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Finalizar Cadastro"/>
                                        <g:link controller="login" action="auth" class="btn btn-lg btn-info btn-block">
                                            Entrar no Sistema
                                        </g:link>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>

</html>
