I created a script for creating react apps based on https://javascript.plainenglish.io/create-a-react-app-from-scratch-in-2021-8e9948602e9c.

to use:
sh react-from-scratch.sh PROJECT_NAME
move into the new project directory and copy, `"start": "webpack serve --config webpack.config.js"`, to scripts in package.json
npm run start
project will be running at http://localhost:8080/

features:
Generates a new react project

features I'd like to add:
add the start script so that it does not need to be done manually