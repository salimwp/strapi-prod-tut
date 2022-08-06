if [ ! -d data ] 
then
    mkdir data
fi

nerdctl run --name strapiDB -e POSTGRES_PASSWORD=strapi -e POSTGRES_USER=strapi -e POSTGRES_DB=strapi -v data:/var/lib/postgresql/data postgres:14.4