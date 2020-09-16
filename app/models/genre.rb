class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ドラマ' },
    { id: 3, name: 'アクション' },
    { id: 4, name: 'SF' },
    { id: 5, name: 'サスペンス・ミステリー' },
    { id: 6, name: 'コメディ' },
    { id: 7, name: 'ラブストーリー' },
    { id: 8, name: 'ホラー' },
    { id: 9, name: 'ミュージカル' },
    { id: 10, name: '戦争' },
    { id: 11, name: 'ドキュメンタリー' },
    { id: 12, name: 'アニメ' },
    { id: 13, name: 'その他' }
  ]
  end