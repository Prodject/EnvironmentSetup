# cat >/tmp/demo-equals-separated.sh <<'EOF'
# #!/bin/bash

for i in "$@"
do
case $i in
  # EXAMPLE OF KEY/VALUE ARGUMENT
  -u=*|--windows-user=*|--user=*)
  WINDOWS_USER="${i#*=}"
  shift # past argument=value
  ;;

  # EXAMPLE OF UNARY ARGUMENT
  --default)
  DEFAULT=YES
  shift # past argument with no value
  ;;
  
#! DEV TOOLS OPTIONS
  # node and nvm options
  --node)
  INSTALL_NODE=YES
  shift # past argument with no value
  ;;

  # yarn options
  --yarn)
  INSTALL_YARN=YES
  shift # past argument with no value
  ;;

  # unknown option
  *)
  ;;
esac
done

# echo "WINDOWS USER    = ${WINDOWS_USER}"
# echo "DEFAULT         = ${DEFAULT}"
# echo "INSTALL_NODE    = ${INSTALL_NODE}"

# EOF

# chmod +x /tmp/demo-equals-separated.sh

# /tmp/demo-equals-separated.sh -u=Ragan