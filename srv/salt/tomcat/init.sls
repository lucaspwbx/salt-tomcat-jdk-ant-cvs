tomcat7:
  pkg.latest:
    - pkgs:
      - tomcat7
  service.running:
    - name:
      - tomcat7
    - watch:
      - file: /etc/tomcat7/server.xml
    - require:
      pkg: tomcat7

/etc/tomcat7/server.xml:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://tomcat/server.xml
    - require:
      - pkg: tomcat7
