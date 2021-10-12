## Datenmodelle
title:: Datenmodelle & Profile
* aka Metadatenschemas, Vokabulare, Metadatenprofile
* definieren Typen von Ressourcen (Klassen) sowie Elemente für ihre Beschreibung (Attribute, Properties)
* Beispiele: [Dublin Core Terms](http://purl.org/dc/terms/), [Bibframe](https://id.loc.gov/ontologies/bibframe.html), [schema.org](https://schema.org/Thing)
### Bibframe
![Überblick über das Bibframe-Modell](https://www.loc.gov/bibframe/docs/images/bf2-model.jpg){:width 400}
<small>Quelle: https://www.loc.gov/bibframe/docs/bibframe2-model.html</small>
## Weitere Bibframe-Darstellungen
* [Properties und Klassen nach Kategorien geordnet](https://id.loc.gov/ontologies/bibframe-category.html)
* [Alphabetisch gelistete Klassen und Properties](https://id.loc.gov/ontologies/bibframe.html) 
* [RDF/XML](https://id.loc.gov/ontologies/bibframe.rdf)
*  [Turtle](https://codeberg.org/acka47/vocabs/src/branch/main/bibframe_20211012.ttl) (die für Menschen am besten lesbare RDF-Serialisierung)
## Wie entwickle ich ein Datenmodell?
* Anwendungsfall/Nutzungsszenarien klar definieren, (potentielle) Nutzer\*innen involvieren
* mit einem Minimum Viable Datenmodell starten
* testen, anpassen, ergänzen
* Klassen und Properties aus bestehenden etablierten Modellen wiederverwenden (=Metadatenprofil)
* Wichtig: die Spezifikation öffentlich dokumentieren!
## Metadatenprofile
* Definition eines Datenmodells unter Nutzung bestehender Metadatenschemas
* weniger Arbeit: wer nicht nachnutzt, muss selbst spezifizieren
* mehr Interoperabilität mit Anwendungen, die auf die gleichen Datenmodelle zurückgreifen
- ![](https://slides.lobid.org/dcmi2020/img/baker-coyle-swib19-slide04.png){:width 600}
  <small>Quelle: <a href="https://swib.org/swib19/slides/04_coyle_design-for-simple-application.pdf">Tom Baker, Karen Coyle (2019): Design for simple application profiles, SWIB19, Slide 4</a></small>
## Ein aktuelles Beispiel: AMB
* [Allgemeines Metadatenprofil für Bildungsressourcen](https://w3id.org/kim/lrmi-profile/draft/) (fortgeschrittener Entwurf)
* Entwickelt innerhalb der [OER-Metadatengruppe der DINI AG KIM](https://wiki.dnb.de/display/DINIAGKIM/OER-Metadatengruppe)
* Verfügbar als [[JSON Schema]] und HTML-Spezifikation