tomcat7:
  pkg.latest:
    - pkgs:
      - tomcat7
  service.running:
    - name:
      - tomcat7
    - require:
      - pkg: tomcat7
