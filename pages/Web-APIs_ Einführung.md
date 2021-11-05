## Bibliotheken sind Software
> Our collections and services are delivered primarily via software. [...] The choices we make in the development, selection, and implementation of this software [...] define the limits of our content and services. We can only be as good as our software.
— Cody Hanson, [Libraries are Software](http://codyhanson.com/writing/software.html)
# APIs
title:: Web-APIs: Einführung
Application Programming Interface;
deutsch: Programmierschnittstellen
#### "ein Programmteil, der von einem Softwaresystem anderen Programmen zur Anbindung an das System zur Verfügung gestellt wird"
([Wikipedia](https://de.wikipedia.org/w/index.php?title=Programmierschnittstelle&oldid=215955723))
-
  * Software baut auf APIs auf
  * APIs machen Softwareentwicklung handhabbar
  * APIs ermöglichen Nutzung und Integration
  * APIs entkoppeln Anwendungen von Datenquellen, Formaten und Systemen
  * Sie ermöglichen modulare, zukunftsfähige Anwendungen
## Zum Beispiel lobid-Formate und -Anwendungen
![lobid-data.png](../assets/lobid-data.png)
## Und wie APIs im Web bereitstellen? 
* heutzutage meist [[JSON]] über [[HTTP]] 
* können anwendungsspezifisch sein (vgl. [lobid](https://lobid.org))
* oder auf geteilten Standards beruhen (z.B. [DAIA-API](https://verbundwiki.gbv.de/display/VZG/DAIA))
- Bloße Lese-APIs (lassen sich gut mit einem [[Suchmaschinentechnologie]] umsetzen)
  vs.
  vollständige Unterstützung von CRUD-Operationen: Create, Read, Update, Delete
## Rückblick: URIs
```
foo://example.com:8042/over/there?name=ferret#nose
\_/   \______________/\_________/ \_________/ \__/
 |           |            |            |        |
scheme    authority      path        query   fragment
 |   _____________________|__
/ \ /                        \
urn:example:animal:ferret:nose
```
((6163df71-544f-4e45-908c-80ba1432a40f))
## Basis von Web-APIs: URIs & HTTP
* Service
* Path: Wo sind API Endpoints?
* Query-Parameter: Wie kann ich eine Abfrage formulieren?
## HTTP-Methoden & ihre Funktionen
Create: POST (manchmal PUT)
Read: GET
Update: PUT (komplette Ressource), PATCH (teilweises Update), POST
Delete: DELETE
## Website + API vs. Website = API
* Manchmal ist die API integraler Bestandteil einer Website, manchmal ist sie separat (siehe auch [Verborg, Ruben (2013): The lie of the API](https://ruben.verborgh.org/blog/2013/11/29/the-lie-of-the-api/))
 Umschalten zwischen Endnutzer\*innen- und Entwickler\*innen-Oberfläche per Knopfdruck, Parameter und Content Negotiation ist sehr nützlich und hilfreich, sowohl für das Entiwcklungsteam als auch für Nutzer\*innen
## Website=API: Beispiel 1
siehe ((870fc3ef-9689-42ad-9707-7c169c4b72e1)), wo Webseite und API identisch sind, nur wahlweise HTML oder JSOn liefern
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
## Übung