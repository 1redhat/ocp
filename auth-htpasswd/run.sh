# configure httpasswd in openshift
oc create secret generic htpass-secret --from-file=htpasswd=users.htpasswd -n openshift-config
oc create -f htpasswd.yaml
# oc apply -f htpasswd.yaml

# Assign cluster admin to admin users
#oc adm policy add-role-to-user cluster-admin admin1
oc adm policy add-cluster-role-to-user cluster-admin admin1
oc adm policy add-cluster-role-to-user cluster-admin admin2
oc adm policy add-cluster-role-to-user cluster-admin admin3
oc adm policy add-cluster-role-to-user cluster-admin admin4
oc adm policy add-cluster-role-to-user cluster-admin admin5

