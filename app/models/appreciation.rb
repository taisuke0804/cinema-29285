class Appreciation < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '劇場' },
    { id: 3, name: 'DVD・ブルーレイ' },
    { id: 4, name: '動画配信' },
    { id: 5, name: 'テレビ放送' },
    { id: 6, name: 'その他' }
  ]
  end