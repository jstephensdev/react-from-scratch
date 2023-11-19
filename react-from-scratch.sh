# Create app and move into  its directory
mkdir $1 && cd $1

# Generate a plain old package.json without asking questions 
npm init -y

# Install all the dependencies needed for a react project
npm i webpack babel-loader @babel/preset-react babel-preset-react html-webpack-plugin webpack-dev-server css-loader style-loader @babel/plugin-proposal-class-properties webpack-cli -D && npm i react react-dom -S

# Add src directory, move into directory, create index.js, App.js, and index.html
mkdir src && cd src && touch index.js && touch App.js && touch index.html && touch styles.css

# Fill in initial content for index.js, App.js, index.html, and styles.css
echo "import React from \"react\";
import { createRoot } from \"react-dom/client\";
import App from \"./App.js\";

const rootElement = document.getElementById(\"root\");

const root = createRoot(rootElement);
root.render(<App />);" >| index.js

echo "import React from \"react\";
import \"./styles.css\"

export default function App() {
  return (
    <div className=\"centeringContainer\">
        <p>Hello World</p>
    </div>
  )
}" >| App.js

echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
<meta charset=\"utf-8\">
<title>My React App from Scratch</title>
</head>
 <body>
    <div id=\"root\"></div> 
</body>
</html>" >| index.html

echo ".centeringContainer {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}" >| styles.css

# Change to the projects root directory, add babel and webpack configuration files
cd .. 
touch .babelrc && touch webpack.config.js

# Fill in initial content for .babelrc and webpack.config.js
echo "{
 \"presets\": [\"@babel/preset-react\"],
 \"plugins\": [\"@babel/plugin-proposal-class-properties\"]
}" >| .babelrc

echo "const HtmlWebPackPlugin = require(\"html-webpack-plugin\");
const htmlPlugin = new HtmlWebPackPlugin({
 template: \"./src/index.html\",
 filename: \"./index.html\"
});
module.exports = {
mode: \"development\",
  module: {
  rules: [
  {
   test: /\.js$/,
   exclude: /node_modules/,
   use: {
     loader: \"babel-loader\"
   }
 },
  {
   test: /\.css$/,
   use: [\"style-loader\", \"css-loader\"]
  }
]},
 plugins: [htmlPlugin],
};" >| webpack.config.js

# Copy start command to package.json and use command to start project
printf "Copy to scripts in package.json: \"start\": \"webpack serve --config webpack.config.js\""
