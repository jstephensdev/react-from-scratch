# React From Scratch

I created a script for creating react apps based on https://javascript.plainenglish.io/create-a-react-app-from-scratch-in-2021-8e9948602e9c.

## Local Startup:
1. fork project
2. sh react-from-scratch.sh PROJECT_NAME
3. prompt should appear, requesting to move into the new project directory and copy `"start": "webpack serve --config webpack.config.js"` to scripts in package.json
4. npm run start
5. project will be running at `http://localhost:8080/`

## Completed Features:
1. Generates a new react project built with webpack

## Incomplete features:
1. add the start script to package.json 
2. add gitignore with content node_modules
3. generate the index.html file in a public directory
4. add webpack build command