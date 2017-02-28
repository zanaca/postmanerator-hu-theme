<div class="scrollspy">
    <ul id="main-menu" data-spy="affix" class="nav">
        <li>
            <a href="#doc-general-notes">{{ .Name }}</a>
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
            <span class="glyphicon glyphicon-folder-close"> <a href="#folder-{{ slugify .Name }}">{{ .Name }}</a>
            <ul>
                {{ range .Order }}

                {{ with $req := findRequest $.Requests . }}
                <li>
                    <a href="#request-{{ slugify $req.Name }}">{{ $req.Name }}</a>
                </li>
                {{ end }}

                {{ end }}
            </ul>
        </li>
        {{ end }}
    </ul>
</div>
