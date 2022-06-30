# Postman

My personal Postman sandbox workspace that used to deal with APIs for my development, in an organised, neat way.

## Repository

In this repository, the Postman collections will reside in the `collections` folder. The subfolder `dev` is the folder that contains the collections for my personal projects. On the other hand, the `third-party` folder will include the API endpoints to external API supplier that I am **consuming** within my project.

The `environments` folder will contain all the essential environments for development such as development, staging and production. For non-development works, another environment will be used.

## Postman Screenshots

The following are the screenshots of my Postman client that demonstrates the application of the good practises that makes the whole workspace clean and delightful to work with.

The environments are configured properly as shown.

![Postman screenshot for environments](/images/postman_envs0.png)

Simple crud with variables applied as shown below.

![Postman screenshot for collections](/images/postman_collection.png)

## Importing to Postman

There are a certain steps that needed to be taken before importing the files.

### Environments

For environments, the placeholder variables that contains sensitive data will need to be replaced with the actual value before being imported to Postman. First, copy the `secrets.crt.example` and paste it in the same directory. Rename it to `secrets.crt`. This is the file that contains the absolute value that the Postman environment will be using.

After that, the environments file will need to be processed to produce the version that contains the value for the secrets or environment variable by running the following command.

```
bash scripts/replace_secret.sh
```

This will copy the contents inside the `environments` folder and replace the variable placeholder indicated by double angle bracket `<<>>`.

### Collections

The collections inside the `collections` folder can be imported directly. The variables are handled by Postman itself.

## API Development

The list of useful resource that is helpful for API development workflow.

| Link                                                                                | Description                                          |
| ----------------------------------------------------------------------------------- | ---------------------------------------------------- |
| [Jsonplaceholder](https://jsonplaceholder.typicode.com/)                            | Fake rest API for quick mockups                      |
| [Postman Learning](https://learning.postman.com/docs/getting-started/introduction/) | Full learning resource/docs for dealing with Postman |
| [RapidAPI](https://rapidapi.com/)                                                   | World largest API hub                                |
| [Free API List](https://apipheny.io/free-api/)                                      | List of totally free API for use                     |
| [Swagger](https://swagger.io/)                                                      | API Documentation                                    |

## Acknowledgements

The list of references used to make this repo better.

-   [Sed fails with unknown option to s error](https://stackoverflow.com/questions/9366816/sed-fails-with-unknown-option-to-s-error)
