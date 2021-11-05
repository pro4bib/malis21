title:: Web-APIs: Nutzung

## API Keys
* Für viele APIs  ist eine Authentifizierung nötig
* Diese geschieht meist mit einem API Key
* Die API-Dokumentation sollte beschreiben, wie ein API Key bezogen werden kann
## API-Dokumentation
Für die Nutzung einer API ist die Dokumentation essentiell, um die Funktionalitäten der API und wie sie genutzt werden können kennenzulernen.
## [OpenAPI](https://www.openapis.org/)
* wird häufig zur API-Dokumentation benutzt
* [[JSON Schema]]-kompatibel, kann auch YAML
* Welche Pfade unterstützen welche [HTTP-Methoden](((615a1548-1998-41c0-b6fe-9e41393379b2)))? Welche Parameter werden unterstützt? Welche Struktur haben Daten, die an die API oder von ihr gesendet werden?
* Beispiele: [DDB](https://api.deutsche-digitale-bibliothek.de) oder [OERSI-API](https://gitlab.com/oersi/oersi-backend/-/blob/master/src/main/resources/model/api.yaml)
* OpenAPI unterstützt auch die Entwicklung, die Visualisierung und die direkte softwareseitige Nutzung einer API
## jq
* Programmiersprache und Kommandozeilentool
* https://stedolan.github.io/jq/
* jq-Spielplatz: https://jqplay.org/
- ## APIs nutzen mit curl & jq
  * curl hat sich ja bereits als nützlich erwiesen, für HTTP Requests
  * curl plus jq eignet sich gut, um APIs und die darüber angebotenen Daten zu erforschen
- ## Beispiele Open Textbook Library
  * die Titel der ersten zehn Ressourcen: `$ curl -H "accept: application/json" "https://open.umn.edu/opentextbooks/textbooks" | jq .data[].title`
  * die Subjects: `$ curl -H "accept: application/json" "https://open.umn.edu/opentextbooks/textbooks" | jq .data[].subjects[].name`
- ## lobid-Beispiele
  * `$ curl "https://lobid.org/resources/search?q=title%3AMALIS&size=100" | jq -r .member[].contribution[0].agent.label` -> Der Name des ersten Beitragenden bei Titeln mit "malis" im Titel
  * Auf der Kommandozeile lässt sich mit dem `|`-Zeichen (Pipe), der Output eines Kommandos als Input für das nächste nehmen, so dass wir die Namen sortieren und mehrere Vorkommen zählen können: `$ curl "https://lobid.org/resources/search?q=title%3AMALIS&size=100" | jq -r .member[].contribution[0].agent.label | sort | uniq -c | sort -nr`