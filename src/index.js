import avatar from './111.jpg'
import style from './index.scss'
import createAvatar from './createAvatar.js'

createAvatar()
var img = document.createElement('img')
img.src = avatar
img.classList.add(style.avatar)
var app = document.getElementById('app')
app.appendChild(img)
