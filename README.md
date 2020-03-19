# haakco-docker-stack

Welcome this is the central spot for this as yet unnamed project (Suggestions welcome).

# What this is
This project it my answer to the problem of continually having to re-invent the wheel of setting
up a real life project over and over.

I'm sure you like me are tired of having to re-do the same type of code to get up and running
before you are able to get to the actual fun coding and what makes your project actually different.

So I decide to try create a base system with all the pieces that you may need to get up and running.

Also, with the idea that more people can eventually help to make the project even better. That
way we can all keep helping each other :).

Also, the best way to improve is to put things out there, for people to point out ways it
can be made better.

The other problem I'm trying to help solve is to eventually have an example of good practices for
larger projects.

I've hit the problem often, when you are trying to find out how to do something, and you
only find simple examples that don't quiet show you how it then integrates into a real life larger
system.

This is from the server side all the way to frontend code.

I've tried to make sure all the pieces are separate and modular. That way if you want to replace
one of the pieces with something else you can. Or if you use a cloud provider you can use their
managed offerings i.e DB's without much hassle.

# Very much in Beta

This project is still very much in beta and is most likely going to be still going through some
large rapid changes still.

It's still missing some core pieces as an example most of the code for production management and
deployment.

# Demo

Still needs to be done :(

# Core Ideas

##This project is opinionated in its choices.

This is mainly to simplify things and get it all working faster. Though this means if you disagree
with the choice of something like the DB I'm not going to be changing it.

Having said that at a far later stage I would like to have different choices for some pieces.
An example of this is the frontend which is currently written in Angular. I would like to also
have one in ReactJs and possibly Vue. (If you are keen help would be appreciated)

##Try to have smaller separate pieces when it makes sense

This project it going to fall between being a monolith and be as modular as possible.

The main api code for now will be a monolith. This is once again an attempt to simplify things
and get them out. Eventually I would like to move the code into a library, so it's simpler to use
and get updates but unlikely to happen near term.

##Each piece will be hosted in a separate github repository

This is to make it simpler to update each pieces individually.

It will also hopefully eventually allow pieces to be replaceable. Ie the frontend.

# Technologies

## Server Technologies

###Docker

Main piece to run all the code.

Allows for easier repeatable deployment.

### Docker Swarm

This is the current technology for doing the clustering and HA, I am planning to add Kubernetes
to this time permitting.

Main current reason for Docker Swarm is that its very easy for people to set up a cluster and
get up and running.

## Docker shared storage (HA storage)

This is partially solved by MinIO. Though not fully and still needs some work.

It should be solvable with a docker storage plugin using MinIO S3 comparability but
haven't tested. Worried about speed for things like DB as experience on S3 was that
it wasn't good enough.

For now things that require hire through put the plan is to using things like inbuilt
HA (i.e Db replication) to solve this.

Simpler to solve on cloud providers.

I have example script for AWS for this will be releasing time permitting.

### Ansible (Still to be done)

This is to do the production server setup and management.

**I do have script for this just need to spend some time making them clean enough to make public.**

### Packer (Still to be done)

This is for people who will be deploying to cloud providers. This will allow them to prebuild
the images for deployment. (Will use the packer scripts above)

**I do have script for this just need to spend some time making them clean enough to make public.**

### Terraform (Still to be done)

This is to allow an automated setup of cloud providers for production deployment.

This will also use the images with packer.

For now, it won't use the cloud providers managed services to make things simpler. (i.e DB)

Though it's fairly simple to change the scripts to suite what you need and want to do.

Unfortunately for now I won't be able to do ones for all cloud providers.

I'm planning for now to do Digital Ocean and possibly AWS.

**I do have script for this just need to spend some time making them clean enough to make public.**

## Application Technologies

### Api

The main API code is written in PHP using the Laravel framework. Currently, running PHP

### DB

The DB is PostgreSQL.

**I have the basic code and deployment for HA for production done just needs cleanup.**

### Caching/Queuing

Using Redis for caching and queuing.

**Still need to put some work into the code to deploy a HA cluster for production.**

### Mail Relay

Using postfix for basic relaying and queuing of email. Though would highly recommend that you have an up stream relay
and don't send directly.

The docker image can be configured to do both.

## Logging and Future search

Using the ELK stack for logging. Currently, not doing any searching in the main Laravel App,
Though in future this will be done by Elastic.

## File storage

If you are not wanting to do cloud storage, then MinIo which will be the default.

Otherwise, you can either use Google Drive or AWS S3.

## Container updating

Currently, using Ouroboros. Though this may change as it doesn't seem to always work correctly.

Though I haven't had time to test and confirm yet or find a replacement.

## The basic swarm management and overview

Using Portainer for this. Please remember to change your password immediately after deploy.

I previously had this set via an environmental variable, but it had some strange problems.

Still need to re-visit and find a solution. (Maybe fixed as haven't tested in a while)

## HTTP Load balancing (SSL cert generation)

This will be done with traefik. It will also generate letsencrypt certs.

You are able to provide your own certificates buy changing the config and adding them to your
volume mounts.

## Frontend HTML

The frontend is current written in Angular.

As mentioned in the far future I would also like to add some other frontend technologies once
I've stabilised the basic API.

This will most likely at least be ReactJs and possibly Vue.

**Help here would be appreciated. No requirement on the above technologies the more the
merrier :). Happy to point to external repositories**

I'll also most likely be adding and Ionic frontend for Android and IOS.

Main reason for Ionic is the quiet a bit of the Angular code base can just be re-used as is.

**Help here would be appreciated. No requirement on the above technologies the more the
merrier :)**

**Help here would be appreciated. No requirement on the above technologies the more the
merrier :). Happy to point to external repositories**

## Api Documentation

The Api wil be documented in OpenAPI. Currently, it's sitting here:
[Api Documentation](https://app.swaggerhub.com/apis/HaakCo/HaakCo/1.0.1)

The plan is to move this inside the code base and have it display on a route endpoint,
but very low on the priority list. (Will allow people simply customise the documentation to their
own app)

**Help here would really be appreciated. The file is in public just need to do the html and JS.
Tried to do it quickly but could not get it looking and working like the API link above**

Before anyone asks I have looked at things like
[L5-Swagger](https://github.com/DarkaOnLine/L5-Swagger),
and my experience was that it was simpler to just edit the OpenApi yaml file and that it
got very messy really fast.

# How get it all running

## Quick Note

For now, I am only going to cover the Development environment. Production environment examples are
still to come. Though they will be very similar and will differ mainly in adding HA to the system
and running on multiple servers.

Unfortunately as this maid from several smaller pieces there isn't just one repository that you need
to grab to get up and running.

In the far future I would like to add an electron app to handle this and make it simpler.

## OS compatibility

As this runs in Docker you should be able to set this up on Windows, Linux or Mac.

Unfortunately as I don't really use Windows the current scripts are all for Mac and Linux.

I will be adding examples for Windows at some point but not sure when.

**Any help to get this done would be appreciated**

I will be assuming that you have Docker installed. For Mac, I assume it is
[Docker for Mac](https://docs.docker.com/docker-for-mac/install/) and
for Windows I assume it's [Docker for Windows](https://docs.docker.com/docker-for-windows/install/).

## 1: Make sure [Docker Swarm](https://docs.docker.com/engine/swarm/) is enabled

```shell script
docker swarm init
```

## 2: Grab all the relevant repositories

Create a directory for the code and run the following to clone the relevant pieces.

If you are wanting to create a new project to code on you may want to first clone the Laravel
and Angular projects so that you can easily commit your own changes.

```shell script
git clone https://github.com/haakco/haakco-deploy-stack.git
git clone https://github.com/haakco/haakco-gui-ng.git
git clone https://github.com/haakco/haakco-api.git
```

## 3: Certificates

The current deploy repository has some dev certs in already for you which you can already use.

The certs are for dev.haak.co and *.dev.haak.co which point at localhost to make life easier for
testing.

To my knowledge it should be safe to have these public. Though it may not, so be prepared to have
them removed and invalidated.

You are able to generate your own certs though it requires that you have your own DNS server.

If you don't I would recommend [CloudFlair](https://www.cloudflare.com/) as it's free to use.

There are example scripts for both AWS hosted DNS and [CloudFlair](https://www.cloudflare.com/)
hosted DNS.

Just set your credential in the relevant file and update the scripts to your DNS settings.

The scripts are

  * haakco-deploy-stack/dev/dev-certs-gen/genDevCertsViaAWS.sh
  * haakco-deploy-stack/dev/dev-certs-gen/genDevCertsViaCloudFlare.sh

## 4: Settings for your specific local dev

Ok we are now close to being done.

The next is the config for your actual system.

Most setting can be left as is. The following are ones that your are most likely going to need to change.

All setting are done in the **runAll.sh** file.

### Rename runAll.Example.sh to runAll.sh
The first step is to rename runAll.Example.sh to runAll.sh.

All changes should be done to **runAll.sh** so when you pull updates it won't be overwritten.

**runAll.sh** is excluded from git, so you can't accidentally commit it.

```shell script
cp runAll.Example.sh runAll.sh
```

### DNS/URL names

If you have generated your own certs you will need the new DNS names.

Update the following if have.

```shell script
export ADMIN_DOMAIN='dev.haak.co'
export DNS_DOMAIN='dev.haak.co'
```

### Timezone

Set the following to your local timezone

```shell script
export TIME_ZONE='Africa/Johannesburg'
```

### Mail Relay

For development, I recommend signing up at (mailtrap.io)[https://mailtrap.io/].

Once you have your relevant setting update the following.

```shell script
export MAIL_RELAY_HOST='smtp.mailtrap.io'
export MAIL_RELAY_PORT='465'
export MAIL_RELAY_SMTP_USER_NAME=''
export MAIL_RELAY_SMTP_PASS=''
export MAIL_RELAY_DOMAIN='haak.co'
export MAIL_RELAY_ALLOWED_SENDER_DOMAINS=''
```

### Initial Super Admin User and Setting

Change the following to what ever you prefer.

```shell script
export APP_NAME='haakco'
```

```shell script
export API_HAAK_COMPANY_NAME="HaakCo"
export API_HAAK_ADMIN_USER="Tim Haak"
export API_HAAK_ADMIN_USER_NAME="timhaak"
export API_HAAK_ADMIN_EMAIL="tim@haak.co"
export API_HAAK_ADMIN_PASSWORD="RuexVeQEvdDNCP"
export API_HAAK_SERVER_ADMIN_EMAIL_NAME="Server Admin"
export API_HAAK_SERVER_ADMIN_EMAIL="serveradmin@haak.co"
```

### Any other settings

The rest of the setting should be fine for Dev. Though feel free to play with them if you want.

It's very simple for you to revert to what you need.

### Memory considerations

The current setting are tuned for a system that has at least 4G ram.

If you using Docker for Mac or Docker for Windows please change the default ram to at least
4G and the swap as high as possible.

## NFS Mount

On Mac and I assume on Windows using NFS mount is significantly faster and has a very noticeable
speed difference.

The default stack file for the api is set to not use this.

Though I would recommend that you do. It can be the difference of an api call being 1s vs 250ms.

It is easier than it sounds.

Use the scripts here [NFS Setup Scripts](https://gist.github.com/seanhandley/7dad300420e5f8f02e7243b7651c6657).

Then uncomment

```shell script
#docker stack deploy --compose-file ./stack-files/stack-laravel-api-nfs.yml --prune --with-registry-auth "${APP_NAME}-laravel" &
```

And comment

```shell script
docker stack deploy --compose-file ./stack-files/stack-laravel-api.yml --prune --with-registry-auth "${APP_NAME}-laravel" &
```

### Using this on production

Most thing are there to use this in production. You just need to change the relevant enviromental
 options in **runAll.sh**.

The most important being the default passwords and keys.


## Run the scripts

Ok now just run the **runAll.sh** script.

This will bring everything up except the Angular frontend.

## Angular Frontend

I found it simpler to just run the Angular frontend locally during development than inside a
docker container.

I'll most likely set up a docker container in the future though just to make other peoples lives
easier.

### 1: Make sure you have the latest node installed

Please make sure you have latest node installed. [Node install](https://nodejs.org/en/download/)

### 2: Do an npm install to get the dependencies

Go into the directory **haakco-gui-ng** that you cloned down earlier.

Run the npm install

```shell script
npm install
```

### 3: Do the development watch start
Run the following which will do a development build start a test web server and watch for changes
in files and rebuild if they change.

```shell script
npm run start
```

### 4: Now open site

Just open the following URL in your browser

[http://dev.haak.co:4200/](http://dev.haak.co:4200/)

## Play time

That covers the basics on getting the environment up and running.

Feel free to play :).

# Things that are missing but really shouldn't be
## !! Documentation
Need to document lots of things still. Most likely will occur once I've stabilised the API
a bit more.

Things that are missing are things like all the helper libraries in the code and how to use them.

As an example the models are autogenerated directly from the DB.

## !!Tests :(
This is an area I know is awful and lacking.

It is high on my list once I have stabilised the API.

**Any help here would be appreciated**

##More to follow, as I remember

# Links to all github repositories used in this project






