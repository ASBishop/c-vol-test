FROM registry.access.redhat.com/rhosp12/openstack-cinder-volume
LABEL description="Red Hat OpenStack Platform 12.0 cinder-volume VendorX PluginY" \
      summary="Red Hat OpenStack Platform 12.0 cinder-volume VendorX PluginY" \
      name="rhosp12/openstack-cinder-volume-vendorx-pluginy" \
      vendor="Plugin Maintainer <vendor@example.com>"

USER root

# Enable a repo to install a package
RUN yum clean all
RUN yum-config-manager --enable rhel-7-server-openstack-12-rpms
RUN yum install -y openstack-nova-novncproxy
RUN yum-config-manager --disable rhel-7-server-openstack-12-rpms

# Add required license info
RUN mkdir /licenses
COPY licensing.txt /licenses

USER cinder
