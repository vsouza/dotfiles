#!/bin/sh

pip_packages=(
  'virtualenvwrapper'
  'requests'
  'ipdb'
)


install_pip_packages(){
  for packages in pip_packages; do
    pip install $packages
  done
}
