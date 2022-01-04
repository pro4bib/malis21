- ## Aufgabe: ((61c341e4-ccd1-4a33-93b9-8c62e281a470))
- ## Warum LOD?
  * Überführung traditioneller bibl. Praktiken in das Web
  * Sichtbarkeit und Auffindbarkeit im Web erreichen
  * Nachnutzbarkeit ermöglichen
  * Synergieeffekte durch Verlinkung mit anderen Daten
  * Verbesserung der Recherchemöglichkeiten
  Pohl, Adrian / Ostrowski, Felix (2010): 'Linked Data' - und warum wir uns im hbz-Verbund damit beschäftigen." B.I.T. Online 13(3): S. 259-268. [Preprint (PDF)](https://hbz.opus.hbz-nrw.de/files/269/PDFA_Linked_Data_Pohl_Ostrowski_2010.pdf)
- ## Open Definition
  > Wissen ist offen, wenn jedeR darauf frei zugreifen, es nutzen, verändern und teilen kann – eingeschränkt höchstens durch Maßnahmen, die Ursprung und Offenheit des Wissens bewahren. 
  
  [https://opendefinition.org/od/2.1/de/](https://opendefinition.org/od/2.1/de/)
- ## Linked Data: Best Practices
  1. Nutze URIs als Namen für Dinge
  2. Nutze HTTP-URIs, so dass Menschen sie aufrufen können
  3. Wenn jemand einen URI aufruft, biete nützliche Informationen an unter Nutzung der Standards (RDF*, SPARQL)
  4. Nimm Links zu anderen URIs auf, so dass weitere Dinge entdeckt werden können.
  
  [Tim Berners-Lee (2006ff): Linked Data – Design Issues](https://www.w3.org/DesignIssues/LinkedData.html)
- ![](../assets/lod-cup.jpg)
  [https://5stardata.info](https://5stardata.info)
- ## Ein Imageproblem?
   > Ultimately, RDF and the Semantic Web are of no interest to Web developers. They also have a really negative public perception problem. We should stop talking about them. Let’s shift the focus to be on Linked Data, explaining the problems that Web developers face today, and concrete, demonstrable solutions to those problems.
  
  – Manu Sporny, damals Vorsitzender der RDFa Working Group beim W3C, der JSON-LD Community Group & Mitglied weiterer Semantic-Web-Gruppen, beim Schreiben an der JSON-LD-Spezifikation [Sporny (2012)](http://manu.sporny.org/2012/nuclear-rdf/)
- ## Linked Open Usable Data
  ![](../assets/loud-tweet.png)
  Quelle: [Rob Sanderson auf Twitter](https://twitter.com/azaroth42/status/768140561794502656), siehe auch Rob Sanderson's Europeanatech 2018 Keynote ([Slides](https://de.slideshare.net/azaroth42/europeanatech-keynote-shout-it-out-loud), [Aufzeichnung](https://www.youtube.com/watch?v=r4afi8mGVAY))
- ## Using *data*?
  * Daten werden mit existierender Software bearbeitet (ausgewertet, ergänzt, integriert etc.)
  * Entwicklung neuer Software zur Interaktion mit Daten
  * LOUD: Orientierung auf Bedürfnisse und Konventionen rund um Software (Entwicklung, Standards, etc.)
  * Nützliche Daten: Zielgruppe kennen & eigene Angebote auf sie ausrichten
  * Hauptzielgruppe: Entwickler:innen oder Nutzer:innen von Software für Datenzugriff und -manipulation
- ## LOUD = Web-APIs mit JSON-LD
  * Entwickler:innen sind Kernzielgruppe von Open-Data-Publikation
  * APIs sind das User Interface von Entwickler:innen
  > When it comes to APIs, developers are your users. The same principles of user-centred-design apply to the development and publication of APIs (simplicity, obviousness, fit-for-purpose etc).
  
  Quelle: https://apiguide.readthedocs.io/en/latest/principles/empathy.html
- ## JSON-LD
  * "designed to be usable directly as JSON, with no knowledge of RDF" – Es ist richtiges JSON!
  * "also designed to be usable as RDF"
  https://www.w3.org/TR/json-ld/
- ## Warum nicht einfach JSON?
  *Usable* heisst nicht nur dass die Daten strukturell gut nutzbar sind, sondern auch einige Vorteile von Linked Data mit sich bringen:
  1. Implizite Dokumentation: Properties haben URIs und ihre Bedeutung lässt sich nachschlagen
  2. Interoperabilität: wer nicht nachnutzt, muss selbst spezifizieren -> Anreiz zur Nachnutzung gemeinsamer Datenmodelle
  3. Things not strings: Präferenz von URIs über Strings führt zu Erstellung, Nutzung und Pflege von SKOS-Schemas für kontrollierte Wertelisten, für die wiederum 1.) & 2.) gelten
- ## LOUD-Beispiele
  * [lobid](https:/lobid.org) 
  * [IIIF](https://iiif.io/)
  * [Linked Art](https://linked.art/)
  * [OERSI](https://oersi.de) und [AMB](https://w3id.org/kim/amb/)