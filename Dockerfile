FROM registry.access.redhat.com/rhosp12/openstack-cinder-volume
LABEL description="Red Hat OpenStack Platform 12.0 cinder-volume (abishop)" \
      summary="Red Hat OpenStack Platform 12.0 cinder-volume (abishop)" \
      name="rhosp12/openstack-cinder-volume-abishop" \
      vendor="Alan Bishop <abishop@redhat.com>"

USER root

# RUN yum repolist all
RUN yum-config-manager --disable rhel-7-server-rpms
RUN yum-config-manager --enable rhel-7-server-rhceph-2-tools-rpms
RUN yum list available

RUN yum-config-manager --enable rhel-7-server-openstack-12-rpms
RUN yum install -y openstack-nova-novncproxy

USER cinder
