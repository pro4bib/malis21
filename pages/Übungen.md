## Übung: Request JSON mit curl
id:: 870fc3ef-9689-42ad-9707-7c169c4b72e1
* **Frage:** Lässt sich die Liste der Open Textbook Library unter [https://open.umn.edu/opentextbooks/textbooks?page=1](https://open.umn.edu/opentextbooks/textbooks?page=1) auch als JSON bekommen?
* **Aufgabe:** Finden Sie in der [IANA Liste der Media Types](https://www.iana.org/assignments/media-types/media-types.xhtml) den Typ für JSON und formulieren Sie eine curl-Anfrage mit diesem Typ und der Open Textbook URL (siehe Anleitung in ((61645f8e-7f9f-4e08-95f0-45b0eca901f9))).
- ## Übung: Response Header auswerten mit curl
  id:: 6164943c-d95e-452e-8825-3afe059ced93
  * **Frage**: Lässt sich für eine ORCID JSON ausgeben?
  * **Aufgabe**: Machen Sie ein Request analog zur ((870fc3ef-9689-42ad-9707-7c169c4b72e1)) gegen eine ORCID, z.B. `https://orcid.org/0000-0001-9083-7442`.
  * **Frage**: Warum kommt kein JSON zurück?
  * **Aufgabe**: Lassen Sie sich die Response Headers anzeigen wie in ((61646058-743c-4d05-8397-233e3cf36757)) erläutert. Was ist der Grund für das fehlende JSON?
## Übung: Redirects folgen mit curl
* **Frage**: Bekomme ich JSON von einer ORCID, wenn ich den Redirects folge?
* **Aufgabe**: Ergänzen Sie die ORCID-Abfrage aus ((6164943c-d95e-452e-8825-3afe059ced93)) um die Option zum Folgen von Umleitungen (siehe ((61649878-c8fe-4a4c-81a8-f910fe6760b7))).
## Übung: HTML einer Webseite im Browser manipulieren
id:: 6164a03d-1fba-472c-865c-e668bd6ab2f1
* Editieren Sie eine Webseite Ihrer Wahl im Browser, wie beschrieben in ((61652072-e2cb-4ab8-abe4-78bd6194a7aa))