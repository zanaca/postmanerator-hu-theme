<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ .Name }}</title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,300,700,800' rel='stylesheet' type='text/css'>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.2.0/styles/darkula.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.2.0/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
    <style>{{ template "custom.css" }}</style>
    <link rel="shortcut icon" type="image/png" href="data:image/ico;base64,AAABAAQAMDAAAAEAIACoJQAARgAAACAgAAABACAAqBAAAO4lAAAYGAAAAQAgAIgJAACWNgAAEBAAAAEAIABoBAAAHkAAACgAAAAwAAAAYAAAAAEAIAAAAAAAgCUAAAAAAAAAAAAAAAAAAAAAAAD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AAFlOQAAZTkAE2U5AHxlOQC1ZTkAumU5ALxlOQCcXTQAA2U5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlOQAAZTkAAGU5AI5lOQC9ZTkAuWU5ALdYMQCGZTkAHmA2AABjOAAB////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AAFlOQAhZTkA22U5AP9lOQD/ZTkA/2U5AP9lOQDRXTQAAGU5AAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlOQACZTkAAGU5ALplOQD/ZTkA/2U5AP9mOQD/ZTkA6Fw0ADBlOQAAZTkAAv///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AABlOQCwZTkA/2U5APdlOQD7ZTkA92U5APtlOQCUZjkAAGU5AAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlOQADZTkAAGU5AH1lOQD7ZTkA9mU5APxkOAD3ZTkA/2Y5AMdbMwAC////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5ABllOQD3ZTkA/WU5AP5lOQD+ZTkA+mU5AP5lOQBnZDgAAGU5AAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlOQACZTkAAGU5AFFlOQD/ZTkA+mU5AP5lOQD/ZTkA/GQ4AP5jOAAr////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AExlOQD/ZTkA/GU5AP9lOQD/ZTkA/GU5AP9lOQA5ZTkAAGU5AAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlOQABZTkAAGU5ACdlOQD8ZTkA/mU5AP5lOQD/ZTkA+2U5AP5lOQBj////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AIdlOQD+ZTkA+mU5AP5lOQD+ZTkA/2U5APBlOQAUZTkAAGU5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZTkAAGU5AAdlOQDiZTkA/2U5AP1lOQD+ZTkA+mU5AP5lOQCf////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AL9lOQD+ZTkA/GU5AP9lOQD8ZTkA/mU5AM9lOQAAZTkAAWU5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlOQAAZTkAAmU5AABlOQC9ZTkA/mU5APtlOQD/ZTkA/WU5AP9lOQDU////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AO5lOQD/ZTkA/mU5AP9lOQD6ZTkA/2U5AKNlOQAAZTkAA2U5AABlOQABZTkAAmU5AAIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZTkABGU5AABlOQCOZTkA/mU5APllOQD/ZTkA/mU5AP5lOQD5////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AP9lOQD8ZTkA/2U5AP9lOQD5ZTkA/2U5AHdlOQAEZTkABGU5AABlOQAAZTkAAGU5AABlOQAAAAAAAGU5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/wAJpP8AAAAAAAAAAAAAAAAAAAAAAAAAAABlOQAAZTkAAV41AABlOQCCZTkA/2U5AP9lOQD/ZTkA/2U5AP9lOQD/ZTkA8f///wD///8AZTkAwGU5ANJlOQDRZTkA0WU5AM5lOQC4ZTkAZmU5AABlOQABZTkAAGU5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmk/wAJpP8AAAAAAAmk/wEJpP8BAAAAAQAAAAAJpP8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlOQAAZTkAAGc6AAFlOQAAZTkAWmU5ALNlOQDNZTkA0GU5ANBlOQDRZTkAyv///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///////8AAP///////wAA////////AAD///////8AAP///////wAA/+D//wf/AAD/wP//A/8AAP+A//8B/wAA/4D//wH/AAD/gf//gP8AAP8B//+A/wAA/wH//4D/AAD/Af//gP8AAP8B//+AfwAA/gP//8B/AAD+AAB/wH8AAP4AAB/AfwAA/gAAB8B/AAD8AA/zwD8AAPwAOB/gPwAA/ADAA+A/AAD8AYAB4D8AAPgDAADgHwAA+AIAAGAfAAD4BAfwIB8AAPgEH/gwHwAA8Awf/BAPAADwCD/8EA8AAPAIP/wQDwAA8Ag//BAPAADwGD/8GAcAAOAYP/wYBwAA4Bg//BgHAADgHB/4OAcAAOAcD/A4AwAAwB4DwHwDAADAPwAA/AMAAMA/gAH8AwAAwD/AA/wDAACAP/AP/AEAAIB////+AQAAgH////4BAACA/////wEAAP///////wAA////////AAD///////8AAP///////wAA////////AAAoAAAAIAAAAEAAAAABACAAAAAAAIAQAAAAAAAAAAAAAAAAAAAAAAAA////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AABlOQBFZTkA82U5AP9lOQD/ZTkAn2U5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGU5AABlOQCNZTkA/2U5AP9lOQD5ZTkAU2U5AAD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8AXjUAAGU5ANtlOQD/ZTkA/2U5AP9lOQBfZTkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZTkAAGU5AFBlOQD/ZTkA/2U5AP9lOQDpZTkAA////wD///8A////AP///wD///8A////AP///wD///8A////AP///wBkOAAeZTkA/2U5AP9lOQD/ZTkA/2U5ADBlOQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABlOQAAZTkAI2U5AP9lOQD/ZTkA/2U5AP9lOQAs////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AFZlOQD/ZTkA/2U5AP9lOQDxXzYAC2U5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGU5AABeNQAEZTkA52U5AP9lOQD/ZTkA/2U5AGf///8A////AP///wD///8A////AP///wD///8A////AP///wD///8AZTkAlWU5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ngAJpP97CKf//wmb+f8PbePSFF7UERJj3AAA3f8ACaL+AAmk/wAJpP8ECaT/ugek//8IoP3/D3TmnDFziwBlOAAhZTkA/mU5AP9lOQD/ZTkA/2U5AOplOQAGZTkAAP///wBlOQAiZTkA/mU5AP9lOQD/ZTkA/2U5APFgNgAKR1pQAAiZ7goJo//iCKb//wii/f8Mi/LhDYXraQ2B6ykJo/4lCaT/Wwmk/9EJpP//CKT//wmg/fMMivEZO2BxAGQ5AANlOQDmZTkA/2U5AP9lOQD/ZTkA/2U5ADBlOQAA////AGU5AFtlOQD/ZTkA/2U5AP9lOQD/ZTkAzGE2AABmNwAACKP9AAmk/ysJo//qCKT//wil//8IpP//CKT+/wmj/v8JpP//CaT//wmk//8Jo//2CaT/Pwil/wBlOAAAZTkAAGU5AL5lOQD/ZTkA/2U5AP9lOQD/ZTkAa2U5AAD///8AZTkAmmU5AP9lOQD/ZTkA/2U5AP9lOQCgZTkAAGU4AAAAAAAACaT/AAmk/x0JpP+wCaP//wmk//8Jo///CKT//wmk//8JpP//CaT/vQiY7SoJpP8ACaT/AEpXSABlOQAAZTkAkGU5AP9lOQD/ZTkA/2U5AP9lOQCqZTkAAP///wBlOQDPZTkA/2U5AP9lOQD/ZTkA/2U5AGFlOQAAZTkAAAmk/wAJpP8ACaT/AAmk/wAJpP8tCaT/cwmk/5oJpP+cCaT/eAmk/zUJpP8ACaT/AAmk/wAJpP8AZTkAAGU5AABkOABQZTkA/2U5AP9lOQD/ZTkA/2U5ANxlOQAAYjcARGU5AP9lOQD/ZTkA/2U5AP9lOQDKZTkACGU5AAAAAAAAAAAAAAAAAAAJpP8ACaT/AAmk/wAJpP8ACaT/AAmk/wAJpP8ACaT/AAmk/wAJpP8AAAAAAAAAAAAAAAAAZTkAAF41AANiNwC+ZTkA/2U5AP9lOQD/ZTkA/2U5AFT///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP/////////////////////+H/g//B/4P/w//D/4P/wf+D/8H/g//B/4AHwf+AAeD/AHzg/wGA4P8CAGD/BAAg/gQ8MH4IfhB+CP8Qfgj/EHwI/xA8CP8YPBh+GDwcGDg4HgB4GB8A+Bgfw/gYP//8D/////////////////////KAAAABgAAAAwAAAAAQAgAAAAAABgCQAAAAAAAAAAAAAAAAAAAAAAAP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wBlOQALZTkAyWU5AP9lOQD4ZTkACWU5AAAAAAAAAAAAAAAAAAAAAAAAZTkAAF81AARlOQDwZTkA/2U5ANJlOQAQ////AP///wD///8A////AP///wD///8A////AP///wBlOQBhZTkA/2U5AP9lOQDKZTkAAGU5AAAAAAAAAAAAAAAAAAAAAAAAZTkAAGU5AABlOQDAZTkA/2U5AP9lOQBu////AP///wD///8A////AP///wD///8A////AP///wBlOQCjZTkA/2U5AP9lOQCWZTkAAGU5AAAAAAAAAAAAAAAAAAAAAAAAZTkAAGU5AABlOQCKZTkA/2U5AP9lOQCv////AP///wD///8A////AP///wD///8A////AP///wBlOQDcZTkA/2U5AP9lOQBUZTkAAGU5AABlOQAAZTkAAGU5AABcNAAAZTkAAGU5AABlOQBXZTkA/2U5AP9lOQDl////AP///wD///8A////AAAAAAAAAAAAZTkAAGM4ABplOQD+ZTkA/2U5AP1lOQBVZTkAVmU5AHllOQB4ZTkAVWU5ABldNAAAZTkAAGU5AABlOQAqZTkA/2U5AP9lOQD/ZTkAJGU5AAAAAAAAAAAAAAAAAABlOQAAZTkAAGU5AFNlOQD/ZTkA/2U5AP5lOQD/ZDkA/2Y4AP9mNwD/ajYA6Go2AMhkNQCGaDcAHmc3AABlOQAGZTkA72U5AP9lOQD/ZTkAX2U5AABlOQAAAAAAAAAAAABlOQAAZTkAAGU5AJNlOQD/ZTkA/2U5AP9kOQD/ajYA5F4+IGpKPjtOO01vXj1LaGhLR0VxVUExUVw+GgZnNwAAZDkAyGU5AP9lOQD/ZTkAn2U5AABlOQAAAAAAAAAAAABlOQAAZTkAAGU5AM9lOQD/ZTkA/2Q5AP9vMwC/N2CeJhdf2poOYOj8DWHp/w1h6/8QX+L/EWDguBRg1y5VPywAZDkAm2U5AP9lOQD/ZTkA2mA2AABlOQAAAAAAAAAAAABlOQAAZTkAEmU5APplOQD/ZDkA/2o1AOA5U4ceCWPv1RBf3/8SX939El7buhJm3LYSZd33E13a/xJc2vQqXbIYdTAAVmQ5AP9lOQD/ZTkA/mQ4ABtlOQAAAAAAAAAAAABlOQAAZTkARmU5AP9lOQD/ZTgA/287AlgAgv+YEl3a/xJf3NASYNweEl7bAAuW9QARiuIVCpH1wRFj3v8CY/+7cjINK2U4AP9lOQD/ZTkA/2U5AFJlOQAAZTkAAGU5AABlOQAAZTkAhGU5AP9lOQD/aTIA8zKIjDYJgPb8E1nZ/BJc2yESX9sAE1zaAA965gAIo/8ACrXoDwuR9fQQXeL/KlGWRGo1AOhlOQD/ZTkA/2U5AJFlOQAAZTkAAGU5AABlOQAAZTkAw2U5AP9lOQD/bS4AygDG/z8LifP/E1jY2hFm3gASX9wAAAAAAAAAAAAIpP8ADJHxAAer/8IOdun/C1HqUm00AL9lOQD/ZTkA/2U5AM5hNwAAZTkAAGU5AABlOQAJZTkA82U5AP9lOQD/bS0AoxDm+CEJnfv/EmHc6hRXzgATWtoAE1/cAAmk/wAJpP8ACKj/AAeq/9gMh/D/AEz/NW8zAJRlOQD/ZTkA/2U5APlhNwAQZTkAAGU5AABlOQA5ZTkA/2U5AP9lOQD/aDMAfXlIPQAHqP/wC5D0/xVH0HERbN0AGDbJAAin/wAJpP8ACaT/WAim//8LjfT9YntpA2s1AG1lOQD/ZTkA/2U5AP9lOQBFZTkAAGU5AABlOQB3ZTkA/2U5AP9lOQD/ZDgAUjNrdgAIo/9pCKX//wma+v8OheiODIjtMwmh/S8JpP+ACaT//wij/v8Jl/aBO3RzAGU4AEZlOQD/ZTkA/2U5AP9lOQCEZTkAAGQ4AABlOQC0ZTkA/2U5AP9lOQD/ZTkAJV5AEQAJpP8ACaT/jAik//8Ipf//CKb//wmj/v8JpP//CaT//wmj/psInfQAWUIdAGQ5ABxlOQD/ZTkA/2U5AP9lOQDAZDgAAF82AAhlOQDlZTkA/2U5AP9lOQD1YDYABGY3AAAJpP8ACaT/AAmj/0EJpP+oCaT/2gik/9wJpP+uCaT/Sgmk/wAJq/8AZjcAAF82AABlOQDrZTkA/2U5AP9lOQDuYDYADmU5AGplOQD/ZTkA/2U5AP9lOQB3ZDgAAGU5AAAJpP8ACaT/AAmk/wAJpP8ACaT/AAmk/wAJpP8ACaT/AAmk/wAJpP8AZTkAAGU5AABlOQBrZTkA/2U5AP9lOQD/ZTkAd////wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////APj/HwDw/w8A8P8PAPD/DwDwD48A4AOHAOAhhwDggYcA4QCHAOA8QwDCfkMAwn4DAMJ+QwDCPEMAghhhAIcA4QCHw+EAB//gAP///wD///8A////ACgAAAAQAAAAIAAAAAEAIAAAAAAAQAQAAAAAAAAAAAAAAAAAAAAAAAD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AGU5AHVlOQDsZTkAVGU5AAAAAAAAAAAAAGU5AABlOQBNZTkA7GU5AH3///8A////AP///wD///8A////AP///wBlOQDvZTkA/2U5AC1lOQAAAAAAAGU5AABlOQAAZTkAKWU5AP9lOQD2////AP///wD///8A////AP///wD///8AZTkA/2U5AOtlOQAAZTkAAkMmAABlOQAAZTkAAGU5AAVlOQDtZTkA/////wD///8A////AGU5AABlOQAAZTkAYGU5AP9lOQDuZTkA02U5AOVqNQC0bDUAbmU5ABVlOAAAZDkAwmU5AP9lOQBoZTkAAGU5AABlOQAAZTkAAGU5AJ9kOQD/ZTgA/2U4BdI4VnyFPUlwrjVQfbxCT2pyUkA1AGU4AI5kOQD/ZTkAp2U5AABlOQAAZTkAAGI3AABlOQDYZTgA/2k2AcMbXMZzDGHr+A1h6+MTXd3gEmDc/xVk4m1wMwNNZTgA/2U5AN5eNQAAZTkAAGU5AABkOAAcZTkA/Wg0AP1CXl5xC2nw+xNY2IUSXdsAEYPoAAKq/3YGbvj/PkVlamk2APplOQD/ZTkAI2U5AABlOQAAZTkAVGU5AP9tLgDhGI7TiQxv7P4gGKoAE13bAAeo/wBBeIUACI769BtawpptMwDcZTkA/2U5AFxlOQAAZTkAAGU5AJNlOQD/bS0AwQDD/1gLiPP/Hh6yFxJj3QAJo/4AH5rHCgib/P8BeP9nbjAAumU5AP9lOQCcZTkAAGE2AABlOQDLZTkA/2g0AKVIfYUCCKL96QuQ9eELlu9HCpz2QwOt/9UJoPzxPHWXB2k0AJxlOQD/ZTkA0mI3AABhNgAtZTkA92U5AP9kOQB+TVI8AAik/yUIo/7OCKb//wik/v8JpP/VCaT/LU5SPQBkOQB2ZTkA/2U5APtjOAAzZTkAimU5APJlOQDgZTkAJ2kzAAAJpP8ACaT/AAmk/yAJpP8hCaT/AAmk/wBpMwAAZTkAImU5AN5lOQDzZTkAkf///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A////AP///wD///8A//8AAP//AADj5wAA5+cAAOfnAADAYwAAwCMAAMATAADBgwAAg8EAAIPBAACJkQAAjDEAAB/4AAD//wAA//8AAA=="/>
</head>
<body data-spy="scroll" data-target=".scrollspy">
<div id="sidebar-wrapper">
    {{ template "menu.tpl" . }}
</div>
<div id="page-content-wrapper" class="splitted">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-md-7">
                        <h1 id="doc-general-notes">
                            {{ .Name }}
                            <a href="#doc-general-notes"><i class="glyphicon glyphicon-link"></i></a>
                        </h1>
                    </div>
                    <div class="col-md-5">
                        <div class="dropdown">
                          <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            Language
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="#" onClick="$('.request-example-curl').each(function(){$(this).addClass('active')});$('.request-example-http').each(function(){$(this).removeClass('active')});">cURL</a></li>
                            <li><a href="#" onClick="$('.request-example-curl').each(function(){$(this).removeClass('active')});$('.request-example-http').each(function(){$(this).addClass('active')});">HTTP</a></li>
                          </ul>
                        </div>
                    </div>
                </div>



                {{ markdown .Description }}

                {{ with $structures := .Structures }}
                <h2 id="doc-api-structures">
                    API structures
                    <a href="#doc-api-structures"><i class="glyphicon glyphicon-link"></i></a>
                </h2>

                {{ range $structures }}

                    <h3 id="struct-{{ .Name }}">
                        {{ .Name }}
                        <a href="#struct-{{ .Name }}"><i class="glyphicon glyphicon-link"></i></a>
                    </h3>

                    <p>{{ .Description }}</p>

                    <table class="table table-bordered">
                    {{ range .Fields }}
                        <tr>
                            <th>{{ .Name }}</th>
                            <td>{{ .Type }}</td>
                            <td>{{ .Description }}</td>
                        </tr>
                    {{ end }}
                    </table>

                {{ end }}

                {{ end }}

                <a href="#doc-api-detail"><hr class="clear" id="doc-api-detail"></a>

                {{ range .Folders }}
                <div class="endpoints-group ">
                    <h3 id="folder-{{ slugify .Name }}">
                        {{ .Name }}
                        <a href="#folder-{{ slugify .Name }}"><i class="glyphicon glyphicon-link"></i></a>
                    </h3>
                    <hr class="clear">

                    <div>{{ markdown .Description }}</div>

                    {{ range .Order }}

                        {{ with $req := findRequest $.Requests . }}
                        <div class="request">
                            <div class="col-md-7">
                            <h4 id="request-{{ slugify $req.Name }}">
                                <span class="strong {{ $req.Method }}">{{ $req.Method }}</span> {{ $req.Name }}
                                <a href="#request-{{ slugify $req.Name }}"><i class="glyphicon glyphicon-link"></i></a>
                            </h4>
                            <input class="bg-warning form-control" disabled value="{{ $req.URL}}" style="width:95%">
                            <span class="markdown-description">
                                {{ markdown $req.Description }}
                            </span>
                            <hr class="clear">

                            {{ with $req.Responses }}
                            <div>
                                <ul class="nav nav-tabs" role="tablist">
                                    {{ range $index, $res := . }}
                                    <li role="presentation"{{ if eq $index 0 }} class="active"{{ end }}>
                                        <a href="#request-{{ slugify $req.Name }}-responses-{{ $res.ID }}" data-toggle="tab">
                                            {{ if eq (len $req.Responses) 1 }}
                                                Response
                                            {{ else}}
                                                {{ $res.Name }}
                                            {{ end }}
                                        </a>
                                    </li>
                                    {{ end }}
                                </ul>
                                <div class="tab-content">
                                    {{ range $index, $res := . }}
                                    <div class="tab-pane{{ if eq $index 0 }} active{{ end }}" id="request-{{ slugify $req.Name }}-responses-{{ $res.ID }}">
                                        <table class="table table-bordered">
                                            <tr><th style="width: 20%;">Status</th><td>{{ $res.ResponseCode.Code }} {{ $res.ResponseCode.Name }}</td></tr>
                                            {{ range $res.Headers }}
                                            <tr><th style="width: 20%;">{{ .Name }}</th><td>{{ .Value }}</td></tr>
                                            {{ end }}
                                            {{ if hasContent $res.Text }}
                                                {{ with $example := indentJSON $res.Text }}
                                                <tr><td class="response-text-sample" colspan="2">
                                                    <pre><code>{{ $example }}</code></pre>
                                                </td></tr>
                                                {{ end }}
                                            {{ end }}
                                        </table>
                                    </div>
                                    {{ end }}
                                </div>
                            </div>
                            {{ end }}
                                <h6 class="text-uppercase ">Headers</h6>
                                <div class="param row">
                                    {{ range $req.Headers }}
                                    <div class="name col-md-3"><strong>{{ .Name }}</strong></div>
                                    <div class="value col-md-9">{{ .Value }}</div>
                                    {{ end }}
                                </div>
                            <br><br><br><br><br><br>
                            </div>

                            <div class="col-md-5">
                                <div class="code">
                                    <small class="PATCH">Sample request</small>
                                    <div class="panel panel-dark">
                                        <div class="panel-heading">
                                            <small>{{ .Name }}</small>
                                        </div>
                                        <div class="panel-body">
                                            <div class="tab-content">
                                                <div class="tab-pane active request-example-curl">
                                                    <pre><code class="hljs curl">{{ curlSnippet $req }}</code></pre>
                                                </div>
                                                <div class="tab-pane request-example-http">
                                                    <pre><code class="hljs http">{{ httpSnippet $req }}</code></pre>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <hr class="clear">
                        {{ end }}

                    {{ end }}

                </div>
                {{ end }}
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-2.2.2.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
