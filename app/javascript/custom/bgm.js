document.addEventListener("turbo:load", () => {
  if (window.location.pathname === '<%= love_maika_path %>') {
    const audio = new Audio('/assets/maou_14_shining_star.mp3');
    audio.loop = true;
    audio.play();
  }
});