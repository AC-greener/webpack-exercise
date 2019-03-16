import './index.scss'
import avatar from './111.jpg'
function createAvatar() {
  var img = document.createElement('img')
  img.src = avatar
  img.classList.add('avatar')
  var app = document.getElementById('app')
  app.appendChild(img)
}
export default createAvatar