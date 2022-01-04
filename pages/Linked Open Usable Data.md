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