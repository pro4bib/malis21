## JSON ist nur eine Datenstruktur
* die Verwendung von JSON als Datenformat legt nur die Syntax fest, ansonsten können mit JSON beliebige Informationen repräsentiert werden
*  Feldnamen und -inhalte sowie die hierarchische Schachtelung eines JSON-Dokuments können beliebig gewählt werden
* zur Beschreibung eines konkrete JSON-Datenmodells gibt es JSON Schema
## JSON Schema und seine Funktionen
* https://json-schema.org/
* Datenmodellierung
* Dokumentation
* Validierung von Instanzdaten
* Generierung von Webformularen
# Ein Beispielschema
URL: https://malis21.acka47.net/assets/beispielschema.json
```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "Beispielressource",
  "description": "Dies ist ein generisches Schema zur Beschreibung einer Webressource mit schema.org",
  "type": "object",
  "default": {
    "@context": "https://schema.org"
  },
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
      "title": "Type",
      "type": "string",
      "default": "CreativeWork",
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
      "title": "Title",
      "type": "string"
    },
    "creator": {
      "title": "Creator",
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
      "title": "Description",
      "type": "string"
    },
    "about": {
      "title": "Subject",
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
      "title": "License",
      "type": "string",
      "format": "uri",
      "pattern": "^https:\/\/creativecommons.org\/(licenses|licences|publicdomain)\/.*"
    },
    "image": {
      "title": "Image",
      "type": "string",
      "format": "uri"
    },
    "dateCreated": {
      "title": "Creation Date",
      "type": "string",
      "format": "date"
    },
    "inLanguage": {
      "title": "Language",
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
      "type": "array",
      "items": {
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
      }
    },
    "isBasedOn": {
      "title": "Based on",
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
## Feld mit nicht spezifiziertem String
```json
    "name": {
      "title": "Titel",
      "type": "string"
    },
```