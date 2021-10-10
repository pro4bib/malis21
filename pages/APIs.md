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
## API-Dokumentation häufig mit [OpenAPI](https://www.openapis.org/)
* kompatibel mit [[JSON Schema]]
* Welche API-Endpunkte unterstützen welche [HTTP-Methoden](((615a1548-1998-41c0-b6fe-9e41393379b2)))? Welche Parameter werden unterstützt? Welche Struktur haben Daten, die an die API oder von ihr gesendet werden?
* OpenAPI kann mehr als Dokumentation und unterstützt die Entwicklung, die Visualisierung und die direkte softwareseitige Nutzung einer API
## Übung
	- Abfrage von X nach Y