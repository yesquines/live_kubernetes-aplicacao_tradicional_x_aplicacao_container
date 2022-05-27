# Kubernetes - Aplicação Tradicional x Aplicação em Container

## whoami

**Yago Ésquines**

- Coordenador de TI em Software Livre
- Mais de 4 anos de 4Linux
- Formado em Ciência da Computação e Segurança da Informação
- DC Comics é melhor que Marvel! 
- 42 é a resposta para a vida, o universo e tudo mais e o vim pode provar (`vim -c 'help 42'`)
- **Certificações**
  - LPIC-2
  - CKA
  - DevOps Essentials

> Linkedin: [http://linkedin.com/yago.esquines](http://linkedin.com/yago.esquines)

## Objetivos da Live

1. Entender como uma Aplicação Tradicional é implementada
2. Entender vantagens e desavantagens de uma Aplicação Tradicional
3. Converter essa Aplicação em uma Imagem em Container
4. Realizar o deploy da Aplicação em um Ambiente Kubernetes

## Laboratório

* Infraestrutura Tradicional: [Vagrant](https://www.vagrantup.com/)
  - `vagrant up`
  - `vagrant ssh`
* Infraestrutura Kubernetes: [Minikube](https://minikube.sigs.k8s.io/docs/start/)
  - `minikube start --nodes 3 --driver virtualbox --container-runtime cri-o --cni calico --addons ingress --addons metrics-server`
  - `minikube addons disable storage-provisioner default-storageclass`
