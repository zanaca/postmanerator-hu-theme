<div class="scrollspy">
    <h4 class="text-center"><span class="main-title label label-primary text-uppercase">{{ .Name }}</span></h4>
    <ul id="main-menu" data-spy="affix" class="nav">
        <li>
            <a href="#doc-general-notes"><span class="glyphicon glyphicon-home"></span> Start</a>
        </li>
        {{ with $structures := .Structures }}
        <li>
            <a href="#doc-api-structures">API structures</a>
            <ul>
                {{ range $structures }}
                <li>
                    <a href="#struct-{{ .Name }}">{{ .Name }}</a>
                </li>
                {{ end }}
            </ul>
        </li>
        {{ end }}
        <li>
            <a href="#doc-api-detail">API detail</a>
        </li>
        {{ range .Folders }}
        <li>
             <a href="#folder-{{ slugify .Name }}"><span class="icon glyphicon glyphicon-collapse-down"></span><span class="glyphicon glyphicon-collapse-up"></span> {{ .Name }}</a>
            <ul>
                {{ range .Order }}

                {{ with $req := findRequest $.Requests . }}
                <li>
                    <a href="#request-{{ slugify $req.Name }}"><small class="strong {{ $req.Method }}">{{ $req.Method }}</small> {{ $req.Name }}</a>
                </li>
                {{ end }}

                {{ end }}
            </ul>
        </li>
        {{ end }}
    </ul>
</div>
