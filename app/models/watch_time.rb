class WatchTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '初見' },
    { id: 3, name: '2回目' },
    { id: 4, name: '3回目~9回目' },
    { id: 5, name: '10回以上' },
    { id: 6, name: 'その他' }
  ]
  end