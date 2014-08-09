# Usage:
<pre>
docker run -it -p 8181:8181 \
       -v /mediawalker2/deploy \
       -v `pwd`:/mediawalker2/data \
       -w /mediawalker2/deploy \
       mingderwang/mediawalker2-karaf
</pre>

# Support:

Email to ming@katdc.com

# Tutorial:

http://www.liquid-reality.de/display/liquid/2011/02/15/Karaf+Tutorial+Part+1+-+Installation+and+First+application

To install bundles for run above tutorial you can issue following commands under karaf@root> prompt.
<pre>
install -s mvn:org.apache.derby/derby/10.8.2.2
install -s mvn:org.apache.geronimo.specs/geronimo-jpa_2.0_spec/1.1
install -s mvn:commons-collections/commons-collections/3.2.1
install -s mvn:commons-pool/commons-pool/1.5.4
install -s mvn:commons-dbcp/commons-dbcp/1.4
install -s mvn:commons-lang/commons-lang/2.6
install -s wrap:mvn:net.sourceforge.serp/serp/1.13.1
install -s mvn:org.apache.openjpa/openjpa/2.1.1
dynamic-import 196
</pre>

# Articles on Apache Karaf

http://karaf.apache.org/index/community/articles.html


