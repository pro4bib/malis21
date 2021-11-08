title:: Web-APIs: Nutzung

## API Keys
* Für viele APIs  ist eine Authentifizierung nötig
* Diese geschieht meist mit einem API Key
* Die API-Dokumentation sollte beschreiben, wie ein API Key bezogen werden kann
## API-Dokumentation
Für die Nutzung einer API ist die Dokumentation essentiell, um die Funktionalitäten der API und wie sie genutzt werden können kennenzulernen.
## [OpenAPI](https://www.openapis.org/)
* Standard für die API-Dokumentation
* [[JSON Schema]]-kompatibel, kann auch YAML
* Wie sehen valide Input- oder Output-Daten aus? Welche Pfade unterstützen welche [HTTP-Methoden](((615a1548-1998-41c0-b6fe-9e41393379b2)))? Welche Parameter werden unterstützt? Welche Struktur haben Daten, die an die API oder von ihr gesendet werden?
* Beispiele: [DDB](https://api.deutsche-digitale-bibliothek.de) oder [OERSI-API](https://gitlab.com/oersi/oersi-backend/-/blob/master/src/main/resources/model/api.yaml)
* OpenAPI unterstützt auch die Entwicklung, die Visualisierung und die direkte softwareseitige Nutzung einer API
## jq
* Programmiersprache und Kommandozeilentool
* https://stedolan.github.io/jq/
* jq-Spielplatz: https://jqplay.org/
## APIs nutzen mit curl & jq
* curl hat sich ja bereits als nützlich erwiesen, für HTTP Requests
* curl plus jq eignet sich gut, um APIs und die darüber angebotenen Daten zu erforschen
* Ermöglicht wird die Kombination der beiden Tools durch "Pipes"
## Pipes | 
* Pipes (engl. "Rohrleitungen") leiten den Datenstrom eines Programms an ein anderes weiter
* `programm1 (...) | programm2 (...)`
* Beispiel: `$ ls | wc -l`
* [Unix-Philosphie](https://de.wikipedia.org/wiki/Unix-Philosophie): "Mache nur eine Sache und mache sie gut."
* curl ist die beste Software zum Übertragen von Daten in Rechnernetzen, jq ist das beliebteste Kommandozeilentool für die Verarbeitung von JSON: `$ curl <URL> | jq -...`
## Beispiele Open Textbook Library
* die Titel der ersten zehn Ressourcen: `$ curl -H "accept: application/json" "https://open.umn.edu/opentextbooks/textbooks" | jq .data[].title`
* die Subjects: `$ curl -H "accept: application/json" "https://open.umn.edu/opentextbooks/textbooks" | jq .data[].subjects[].name`
## Übung: ((61764d87-de9b-44a0-b6b0-5fd5bdb2b1d5))
## lobid-resources
* `$ curl "https://lobid.org/resources/search?q=%22MALIS%22+AND+K%C3%B6ln&size=50"` -> Der Name der 1. beitragenden Person von Titeln, die  "MALIS" und "Köln" enthalten
* `$ curl "https://lobid.org/resources/search?q=%22MALIS%22+AND+K%C3%B6ln&size=50" | jq -r .member[].contribution[0].agent.label | sort | uniq -c | sort -nr`
* `sort` = sortieren nach Alphabet, `uniq -c`= entferne dublette Strings und zähle (`-c`, count) das Gesamtvorkommen, `sort -nr` = nummerische Sortierung (`n`), umgedreht (`r`, reverse)
## lobid-gnd
*