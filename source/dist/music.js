const ap = new APlayer({
  container: document.getElementById('aplayer'),
  fixed: true,
  autoplay: false,
  lrcType: 0,
  audio: [
    {
      name: "无尽光芒",
      artist: '许巍',
      url: 'http://www.ytmp3.cn/down/57563.mp3',
      cover: 'https://s2.ax1x.com/2019/08/08/e7uwzn.png',
      lrc: 'LRC/许巍-无尽光芒.lrc',
    },
    // {
    //   name: '第三极',
    //   artist: '许巍',
    //   url: 'http://www.ytmp3.cn/down/31601.mp3',
    //   cover: 'https://s2.ax1x.com/2019/08/08/e7M5VK.png',
    // },
    {
      name: '曾经的你',
      artist: '许巍',
      url: 'http://www.ytmp3.cn/down/43808.mp3',
      cover: 'https://s2.ax1x.com/2019/08/08/e7M5VK.png',
    },
    {
      name: '我的爱',
      artist: '许巍',
      url: 'http://www.ytmp3.cn/down/59641.mp3',
      cover: 'https://s2.ax1x.com/2019/08/08/e7M5VK.png',
    }
    // ,
    // {
    //   name: 'My Love',
    //   artist: 'Westlife',
    //   url: 'http://www.ytmp3.cn/down/50091.mp3',
    //   cover: 'https://s2.ax1x.com/2019/08/08/e7M5VK.png',
    // }
  ]
});
