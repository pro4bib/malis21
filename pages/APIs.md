# APIs
Application Programming Interface;
deutsch: Programmierschnittstellen
#### "ein Programmteil, der von einem Softwaresystem anderen Programmen zur Anbindung an das System zur Verfügung gestellt wird"
([Wikipedia](https://de.wikipedia.org/w/index.php?title=Programmierschnittstelle&oldid=215955723))
## hier relevant: Web-APIs 
* heutzutage meist [[JSON]] über [[HTTP]] 
* können anwendungsspezifisch sein (vgl. [lobid](https://lobid.org))
* oder auf geteilten Standards beruhen (z.B. [DAIA-API](https://verbundwiki.gbv.de/display/VZG/DAIA))
- Bloße Lese-APIs (lassen sich gut mit einem [[Suchmaschinentechnologie]] umsetzen)
  vs.
  vollständige Unterstützung von CRUD-Operationen: Create, Read, Update, Delete
## [OpenAPI](https://www.openapis.org/)
* wird häufig zur API-Dokumentation benutzt
* [[JSON Schema]]-kompatibel, kann auch YAML
* Welche Pfade unterstützen welche [HTTP-Methoden](((615a1548-1998-41c0-b6fe-9e41393379b2)))? Welche Parameter werden unterstützt? Welche Struktur haben Daten, die an die API oder von ihr gesendet werden?
* Beispiele: [DDB](https://api.deutsche-digitale-bibliothek.de) oder [OERSI-API](https://gitlab.com/oersi/oersi-backend/-/blob/master/src/main/resources/model/api.yaml)
* OpenAPI unterstützt auch die Entwicklung, die Visualisierung und die direkte softwareseitige Nutzung einer API
## Website + API vs. Website = API
* Siehe [Verborg, Ruben (2013): The lie of the API](https://ruben.verborgh.org/blog/2013/11/29/the-lie-of-the-api/)
* Umschalten zwischen Endnutzer\*innen- und Entwickler\*innen-Oberfläche per Knopfdruck, Parameter und Content Negotiation ist sehr nützlich und hilfreich, sowohl für das Entiwcklungsteam als auch für Nutzer\*innen
## Website=API: Beispiel 1
siehe ((870fc3ef-9689-42ad-9707-7c169c4b72e1)), wo Webseite und API über die
## Website=API: Beispiel 2
https://lobid.org/resources/search?q=MALIS
vs.
`$ curl https://lobid.org/resources/search?q=MALIS`
oder
https://lobid.org/resources/search?q=MALIS&format=json
## Website+APIs: Beispiel 1
![image.png](../assets/image_1634068232195_0.png)
## Website+API: Beispiel 2
* Deutsche Digitale Bibliothek: https://labs.deutsche-digitale-bibliothek.de/app/ddbapi/
## jq
* Programmiersprache und Kommandozeilentool
* https://stedolan.github.io/jq/
* jq-Spielplatz: https://jqplay.org/
## APIs nutzen mit curl & jq
* curl hat sich ja bereits als nützlich erwiesen, für HTTP Requests
* curl plus jq eignet sich gut, um APIs und die darüber angebotenen Daten zu erforschen
## Beispiele Open Textbook Library
* die Titel der ersten zehn Ressourcen: `$ curl -H "accept: application/json" "https://open.umn.edu/opentextbooks/textbooks" | jq .data[].title`
* die Subjects: `$ curl -H "accept: application/json" "https://open.umn.edu/opentextbooks/textbooks" | jq .data[].subjects[].name`
## lobid-Beispiele
* `$ curl "https://lobid.org/resources/search?q=title%3AMALIS&size=100" | jq -r .member[].contribution[0].agent.label` -> Der Name des ersten Beitragenden bei Titeln mit "malis" im Titel
* Auf der Kommandozeile lässt sich mit dem `|`-Zeichen (Pipe), der Output eines Kommandos als Input für das nächste nehmen, so dass wir die Namen sortieren und mehrere Vorkommen zählen können: `$ curl "https://lobid.org/resources/search?q=title%3AMALIS&size=100" | jq -r .member[].contribution[0].agent.label | sort | uniq -c | sort -nr`
## Übung
((6165ed8e-d799-48e0-9bad-cc6257a2fcbd))