import "@babel/polyfill";
import avatar from './111.jpg'
import style from './index.scss'
import createAvatar from './createAvatar.js'

// createAvatar()
var img = document.createElement('img')
img.src = avatar
img.classList.add(style.avatar)
var app = document.getElementById('app')
app.appendChild(img)
console.log(112221)

let x = 12
const a = 12
var qq = () => {
  console.log(1)
}
qq()