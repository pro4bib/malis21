## JSON ist nur eine Datenstruktur
* die Verwendung von JSON als Datenformat legt nur die Syntax fest, ansonsten können mit JSON beliebige Informationen repräsentiert werden
*  Feldnamen und -inhalte sowie die hierarchische Schachtelung eines JSON-Dokuments können beliebig gewählt werden
* zur Beschreibung eines konkrete JSON-Datenmodells gibt es JSON Schema
## JSON Schema und seine Funktionen
* [https://json-schema.org/](https://json-schema.org/)
* Datenmodellierung
* Dokumentation
* Validierung von Instanzdaten
* Generierung von Webformularen
## Was kann JSON Schema definieren?
* Feldnamen
* Typen von Feldwerten (`string`, `array`, `object`, `number`, `boolean`, `null`)
* Pflichtfeld: ja/nein (`required`)
* Häufigkeit eines Feldes
* Formatierung eines Strings (z.B. `uri`, `date` oder `pattern` mit Regular Expression)
## Ein Beispielschema
URL: https://malis21.acka47.net/assets/beispielschema.json
```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://malis21.acka47.net/data/beispielschema.json",
  "title": "Beispielressource",
  "description": "Dies ist ein generisches Schema zur Beschreibung einer Webressource mit schema.org",
  "type": "object",
  "properties": {
    "@context": {
      "type": "string",
      "const": "https://schema.org"
    },
    "id": {
      "title": "URL",
      "type": "string",
      "format": "uri"
    },
    "type": {
      "title": "Typ",
      "type": "string",
      "enum": [
        "3DModel",
        "AmpStory",
        "Article",
        "Atlas",
        "Audiobook",
        "AudioObject",
        "Blog",
        "Book",
        "BookSeries",
        "Chapter",
        "Clip",
        "Collection",
        "ComicStory",
        "Comment",
        "Conversation",
        "Course",
        "CreativeWorkSeason",
        "CreativeWorkSeries",
        "DataDownload",
        "Diet",
        "DigitalDocument",
        "Drawing",
        "Episode",
        "ExercisePlan",
        "FAQPage",
        "Game",
        "Guide",
        "HowTo",
        "ImageGallery",
        "ImageObject",
        "LearningResource",
        "LegislationObject",
        "Manuscript",
        "Map",
        "MathSolver",
        "MediaGallery",
        "MediaObject",
        "Message",
        "MobileApplication",
        "Movie",
        "MovieClip",
        "MovieSeries",
        "MusicAlbum",
        "MusicComposition",
        "MusicPlaylist",
        "MusicRecording",
        "MusicRelease",
        "MusicVideoObject",
        "NewsArticle",
        "Painting",
        "Periodical",
        "Photograph",
        "Play",
        "PodcastEpisode",
        "PodcastSeason",
        "PodcastSeries",
        "Poster",
        "PresentationDigitalDocument",
        "PublicationIssue",
        "PublicationVolume",
        "Quotation",
        "Quiz",
        "RadioClip",
        "RadioEpisode",
        "RadioSeason",
        "RadioSeries",
        "Recipe",
        "Review",
        "Report",
        "ScholarlyArticle",
        "Sculpture",
        "SheetMusic",
        "ShortStory",
        "SoftwareApplication",
        "SoftwareSourceCode",
        "SpreadsheetDigitalDocument",
        "TVClip",
        "TVEpisode",
        "TVSeason",
        "TVSeries",
        "Thesis",
        "TextDigitalDocument",
        "VideoGallery",
        "VideoGame",
        "VideoGameClip",
        "VideoGameSeries",
        "VideoObject",
        "VisualArtwork",
        "WebApplication",
        "WebContent",
        "WebPage"
      ]
    },
    "name": {
      "title": "Titel",
      "type": "string"
    },
    "creator": {
      "title": "Urheber",
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "type": {
            "title": "Type",
            "type": "string",
            "enum": [
              "Person",
              "Organization"
            ]
          },
          "id": {
            "title": "URL",
            "type": "string",
            "format": "uri"
          },
          "name": {
            "title": "Name",
            "type": "string"
          }
        },
        "required": [
          "name",
          "type"
        ]
      }
    },
    "description": {
      "title": "Beschreibung",
      "type": "string"
    },
    "about": {
      "title": "Schlagwort",
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "type": {
            "type": "string",
            "format": "uri",
            "enum": [
              "https://d-nb.info/standards/elementset/gnd#AuthorityResource"
            ]
          },
          "id": {
            "title": "URI",
            "type": "string",
            "format": "uri",
            "pattern": "^https:\/\/d-nb.info\/gnd\/.*"
          },
          "name": {
            "title": "The preferred label of the subject",
            "type": "string"
          }
        },
        "required": [
          "id"
        ]
      }
    },
    "license": {
      "title": "Lizenz",
      "type": "string",
      "format": "uri",
      "pattern": "^https:\/\/creativecommons.org\/(licenses|licences|publicdomain)\/.*"
    },
    "image": {
      "title": "Bild",
      "type": "string",
      "format": "uri"
    },
    "datePublished": {
      "title": "Publikationsdatum",
      "type": "string",
      "format": "date"
    },
    "inLanguage": {
      "title": "Sprache",
      "type": "string",
      "enum": [
        "en",
        "de",
        "fr",
        "es",
        "tr",
        "ar",
        "ru",
        "zh"
      ]
    },
    "publisher": {
      "title": "Publisher",
      "type": "object",
      "properties": {
        "type": {
          "title": "Type",
          "type": "string",
          "enum": [
            "Organization"
          ]
        },
        "id": {
          "title": "URL",
          "type": "string",
          "format": "uri"
        },
        "name": {
          "title": "Name",
          "type": "string"
        }
      },
      "required": [
        "name",
        "type"
      ]
    },
    "isBasedOn": {
      "title": "Basiert auf",
      "type": "array",
      "items": {
        "type": "string",
        "format": "uri"
      }
    }
  },
  "required": [
    "@context",
    "id",
    "name"
  ]
}
```
## Beginnen wir am Anfang
```json
{
  "$schema":"http://json-schema.org/draft-07/schema#",
  "$id": "https://malis21.acka47.net/data/beispielschema.json",
  "title":"Beispielressource",
  "description":"Dies ist ein generisches Schema zur Beschreibung einer Webressource mit schema.org",
  "type":"object",
  "properties":{
    ...
  }
}
```
## Beschreibung des Wurzelschemas
* Angabe der JSON-Schema-Version: `"$schema": "http://json-schema.org/draft-07/schema#"`
* Angabe der `$id` (muss nicht notwendigerweise eine URL sein)
* Titel und Beschreibung des Schemas: `title`, `description`
* Jedes JSON-Dokument ist ein Objekt: `{ "key": "value" }`, deshalb `"type": "object"`
* Auflistung der inerhalb eines Objekts genutzten Feldnamen Objekts mit `properties`
## Feld mit nicht spezifiziertem String
```json
"name": {
  "title": "Titel",
  "type": "string"
}
```
## Feld mit URI-formatiertem String
```json
    "id": {
      "title": "URL",
      "type": "string",
      "format": "uri"
    },
```
## Aufzählung möglicher Strings
```json
  "type": {
    "title": "Type",
    "type": "string",
    "enum": [
      "3DModel",
      "AmpStory",
      "Article",
      ...
    ]
  }
```
## Objekt als Wert
```json
"publisher": {
      "title": "Publisher",
      "type": "object",
      "properties": {
        ...
      }
    }
```
## Array als Wert
```json
"creator": {
    "title": "Urheber",
    "type": "array",
    "items": {
      "type": "object",
      "properties": {
        ...
      }
    }
}
```
## Lust auf mehr JSON Schema?
-> Aufgabe 2.1