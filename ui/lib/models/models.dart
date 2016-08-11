part of fluentd_log_explorer;

class Input {
  String index;
  String type;
  String id;
  String container_id;
  String container_name;
  String source;
  String log;
  String container_type;
  String suffix;
  String level;
  String message;
  String timestamp;

  Input.fromJSON(Map map)
      : this.index = map['_index'],
        this.type = map['_type'],
        this.id = map['_id'],
        this.container_id = map['_source']['container_id'],
        this.container_name = map['_source']['container_name'],
        this.source = map['_source']['source'],
        this.log = map['_source']['log'],
        this.container_type = map['_source']['container_type'],
        this.suffix = map['_source']['suffix'],
        this.level = map['_source']['level'],
        this.message = map['_source']['message'],
        this.timestamp = map['_source']['@timestamp'];

  int get hashCode => quiver_core.hash3(source.hashCode, log.hashCode, timestamp.hashCode);

  bool operator ==(o) =>
      o is Input &&
      quiver_strings.equalsIgnoreCase(container_id, o.container_id) &&
      quiver_strings.equalsIgnoreCase(container_name, o.container_name) &&
      quiver_strings.equalsIgnoreCase(source, o.source) &&
      quiver_strings.equalsIgnoreCase(log, o.log) &&
      quiver_strings.equalsIgnoreCase(container_type, o.container_type) &&
      quiver_strings.equalsIgnoreCase(timestamp, o.timestamp);
}