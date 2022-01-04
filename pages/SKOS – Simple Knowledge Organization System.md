-
  ## <img src="https://www.w3.org/Icons/SW/Buttons/sw-skos-magenta-v.svg" width=300 style="border: none; box-shadow: none;" /> 
  * SKOS: **S**imple **K**nowledge **O**rganization **S**ystem
  * Datenmodell für die maschinenlesbare und webbasierte Publikation kontrollierter Vokabulare als Linked Open Data2009 als [Empfehlung des World Wide Web Consortiums (W3C)](https://www.w3.org/TR/2009/REC-skos-reference-20090818/) veröffentlicht
  * Unterstützt Mehrsprachigkeit, Abbildung von Beziehungen & einiges mehr
- ## Kontrollierte Vokabulare als LOD
  * **auflösbare IDs**: ein HTTP URI (Uniform Resource Identifier) für ein Vokabular und jeden Wert
  * **Verlinkung**: Werte sind innerhalb eines Vokabulars und zwischen Vokabularen verlinkt
  * **Erweiterbarkeit**: weitere Aussagen oder Funktionen auf Basis anderer Webstandards können ergänzt werden
- ## Vorteile
  * Webintegration
  * Maschinenlesbarkeit
  * Interoperabilität
  * Nachnutzbarkeit
  * Entkoppelung von Datenmodellierung und Softwareentwicklung
- ## SKOS-Namespace und -Prefix
  `@prefix skos: <http://www.w3.org/2004/02/skos/core#>.`
- ## Aufbau eines SKOS-Vokabulars
  Zwei grundlegende Typen von Einträgen:
  * `ConceptScheme`: 
    * das Vokabular selbst, wird genau **1 Mal** pro Vokabular definiert
    * generelle Informationen wie Lizenz, Titel
  * `Concept`:
    * ein Wert des Vokabulars
    * Informationen wie Label, Beziehungen
- ## Bsp.: Concept Scheme
  ```
  @prefix colour: <https://example.org/colour-with-hierarchy/> .
  @prefix dct: <http://purl.org/dc/terms/> .
  @prefix skos: <http://www.w3.org/2004/02/skos/core#> .
  
  colour: a skos:ConceptScheme ;
      dct:title "Colour Vocabulary"@en, "Farbvokabular"@de ;
      dct:creator "Hans Dampf"@de ;
      dct:created "2021-11-02" ;
      dct:license <https://creativecommons.org/publicdomain/zero/1.0/> .
  ```
- ## Wichtige SKOS-Properties
  * Verbindung zwischen Vokabular und seinen Werten: `hasTopConcept`, `topConceptOf`, `inScheme`
  * Vorzugsbezeichnung: `prefLabel` 
  * Alternativbezeichnung: `altLabel`
  * hierarchische Informationen: `narrower`/`broader`
- ## Bsp.: SKOS Concept I
  ```
  colour:violet a skos:Concept ;
      skos:prefLabel "Violett"@de, "violet"@en ;
      skos:altLabel "Lila"@de, "purple"@en ;
      skos:topConceptOf colour: .
  
  colour: skos:hasTopConcept colour:violet .
  ```
- ## Bsp.: SKOS Concept II
  ```
  colour:green a skos:Concept ;
      skos:prefLabel "Green"@en, "Grün"@de ;
      skos:narrower colour:grasgreen ;
      skos:topConceptOf colour: .
      
  colour:grassgreen a skos:Concept ;
      skos:prefLabel "grass-green"@en, "Grasgrün"@de ;
      skos:inScheme colour: .
  ```
- ## Sonstige Properties I
  * Notation: `notation`
  * Dokumentation des Vokabulars und seiner Entwicklung: `changeNote`, `definition`, `editorialNote`, `example`, `note`, `historyNote`, `scopeNote`
  * Externe Relationen: `broadMatch`, `narrowMatch`, `exactMatch`, `closeMatch`, `mappingRelation`
- ## Bsp.: SKOS Concept III
  ```
  @prefix skos: <http://www.w3.org/2004/02/skos/core#> .
  
  <https://psyndex.de/vocab/psycharchives-types/conferenceObject>
      a skos:Concept ;
      skos:altLabel "Konferenzveröffentlichung"@de, "conference output"@en ;
      skos:exactMatch <http://purl.org/coar/resource_type/c_c94f> ;
      skos:example "presentation slides, conference programs and abstract collections, posters"@en ;
      skos:inScheme <https://psyndex.de/vocab/psycharchives-types/> ;
      skos:narrowMatch <http://purl.org/spar/fabio/ConferencePoster>, <http://purl.org/spar/fabio/Presentation> ;
      skos:notation "7" ;
      skos:prefLabel "Conference Object"@en, "Konferenzobjekt"@de ;
      skos:scopeNote "conference-related publications"@en ;
      skos:topConceptOf <https://psyndex.de/vocab/psycharchives-types/> .
  ```
  Quelle: http://zpidvokabulare.surge.sh/psyndex.de/vocab/psycharchives-types/conferenceObject.de.html
- ## Sonstige Properties II
  * `Collection`, `OrderedCollection`, `member`, `memberList`
  * `hiddenLabel`
  * `broaderTransitive`, `narrowerTransitive`, `related`, `semanticRelation`
  * Siehe auch diese [erläuterte Liste der Elemente](https://dini-ag-kim.github.io/skos-einfuehrung/#/skos-elemente)
- ## Demo: Publikation mit SkoHub Vocabs