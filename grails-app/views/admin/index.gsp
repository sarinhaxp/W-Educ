<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="admin"/>
        <title>Dashboard - W-Educ</title>
    </head>
    <body>
        <script type="text/javascript">
            $(function() {
                Morris.Area({
                    element: 'morris-area-chart',
                    data: [
                        <g:each in="${datas}" var="it" status="i">
                        {
                            month: "${it}",
                            loginsUnicos: ${loginsUnicos[i]},
                            loginsTotais: ${loginsTotais[i]}
                        }<g:if test="${(datas?.size() - 1) != i}">,</g:if>
                        </g:each>
                    ],
                    xkey: 'month',
                    ykeys: ['loginsUnicos', 'loginsTotais'],
                    labels: ['Logins únicos', 'Logins totais'],
                    pointSize: 2,
                    hideHover: 'auto',
                    resize: true
                });
            });
        </script>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Dashboard</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-comments fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">Fórum</div>
                                <div>de discussão</div>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer">
                            <span class="pull-left">Veja Mais</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-tasks fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">R-Educ</div>
                                <div>e outras linguagens</div>
                            </div>
                        </div>
                    </div>
                    <a href="#">
                        <div class="panel-footer">
                            <span class="pull-left">Veja Mais</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-yellow">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-sort-numeric-asc fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">E-Aval</div>
                                <div>avaliações</div>
                            </div>
                        </div>
                    </div>
                    <a href="https://github.com/Natalnet/EducAval/wiki" target="_blank">
                        <div class="panel-footer">
                            <span class="pull-left">Veja Mais</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-red">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-support fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">Ajuda</div>
                                <div>do sistema</div>
                            </div>
                        </div>
                    </div>
                    <a href="https://github.com/Natalnet/W-Educ/wiki" target="_blank">
                        <div class="panel-footer">
                            <span class="pull-left">Veja Mais</span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i> Estatísticas de acesso
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div id="morris-area-chart"></div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-8 -->
            <div class="col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-bell fa-fw"></i> Minhas Estatísticas
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="#" class="list-group-item">
                                <i class="fa fa-comment fa-fw"></i> Publicações no fórum
                                <span class="pull-right text-muted small"><em>X</em>
                                </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-twitter fa-fw"></i> Programas cadastrados
                                <span class="pull-right text-muted small"><em>${programasCadastrados}</em>
                                </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-envelope fa-fw"></i> Total de compilações
                                <span class="pull-right text-muted small"><em>${totalDeCompilacoes}</em>
                                </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-tasks fa-fw"></i> Compilações bem-sucedidas
                                <span class="pull-right text-muted small"><em>${compilacoesBemSucedidas}</em>
                                </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-upload fa-fw"></i> Compilações mal-sucedidas
                                <span class="pull-right text-muted small"><em>${compilacoesMalSucedidas}</em>
                                </span>
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="fa fa-bolt fa-fw"></i> Linguagens utilizadas
                                <span class="pull-right text-muted small"><em>${linguagensUtilizadas}</em>
                                </span>
                            </a>
                        </div>
                        <!-- /.list-group -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-4 -->
        </div>
        <!-- /.row -->
    </body>
</html>