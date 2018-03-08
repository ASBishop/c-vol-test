FROM registry.access.redhat.com/rhosp12/openstack-cinder-volume
LABEL description="Red Hat OpenStack Platform 12.0 cinder-volume (abishop)" \
      summary="Red Hat OpenStack Platform 12.0 cinder-volume (abishop)" \
      name="rhosp12/openstack-cinder-volume-abishop" \
      vendor="Alan Bishop <abishop@redhat.com>"

USER ROOT

RUN yum-config-manager --enable rhel-7-server-rpms
RUN yum install -y tmux

USER CINDER
