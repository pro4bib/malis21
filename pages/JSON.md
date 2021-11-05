# JSON
[[JavaScript]] Object Notation
## JSON
* Ein einfaches Key-Value-Format für strukturierte Daten
* Key ist immer ein String
* Value ist String, Boolean, Array oder Object
* `{ "foo": "bar" }`
* Quelle: [RFC 8259](https://tools.ietf.org/html/rfc8259)
-
#### Ein JSON-Dokument
```json
{
"name":"JSON",
"type":"Presentation",
"tags":[
  "JSON",
  "JSON Schema"
],
"creator":[
  {
    "name":"Adrian Pohl",
    "type":"Person",
    "affiliation":{
      "type":"Organization",
      "name":"hbz"
    }
  },
  {
    "name":"logseq",
    "type":"Application"
  }
]
}
```
## De-facto Standard für Daten im Web
* JSON über [[HTTP]] ist  seit langem *der* Standard für Web [[APIs]], mit dem jede:r Entwickler:in vertraut ist 
* Target, Sinclair (2017): The Rise and Rise of JSON. URL: https://twobithistory.org/2017/09/21/the-rise-and-rise-of-json.html