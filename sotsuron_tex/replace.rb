#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-
rpl = {
  #black list
  "Deep Learning" => "深層学習",
  /Deep Architecture/i => "深い構造",
  "Representation Learning" => "表現学習",
  "Recommendation System" => "推薦システム",
  "Collaboraitive Filtering" => "協調フィルタリング",
  "Content Filtering" => "コンテンツベースのフィルタリング",
  "Link Prediction" => "リンク予測",
  "Sentiment Analysis" => "感情分析",
  "Learning to Rank" => "順位付け学習",
  "Deep Neural Network" => "深層ニューラルネットワーク",
  /Deep Belief Net(|s|work)/ => "深層信念ネットワーク",
  /Stacked denoising autoencoder/i => "積層雑音除去自己符号器",
  /denoising autoencoder/i => "雑音除去自己符号器",
  /negative log likelihood/i => "負の対数尤度",
  /autoencoder/i => "自己符号器",
  /feed[ -]forward/ => "前送り",
  "Energy-Based Model" => "エネルギーに基づくモデル",
  "Web" => "ウェブ",
  "precision" => "適合率",
  "recall" => "再現率",
  "Support Vector Machine" => "サポートベクターマシン",
  "Stochastic Gradient Descent" => "確率的勾配降下法",  
  "Batch Gradient Descent" => "バッチ勾配降下法",
  "finetuning" => "微調整",
  "fine tuning" => "微調整",
  /unsupervised/i => "教師無し",
  "supervised" => "教師有り",
  "pretraining" => "事前学習",
  "Restricted Boltzman Machine" => "制限付きボルツマンマシン",
  "State of the Art" => "最先端",
  "state of the art" => "最先端",
  /convolutional Neural net(|s|work)/i => "畳み込みニューラルネットワーク",
  "Convolutional Network" => "畳み込みネットワーク",
  "Convolutional Net" => "畳み込みネットワーク",
  "Permutation invariant" => "順序不変",
  "Heaviside" => "ヘビサイド",
  "Sigmoid" => "シグモイド",
  "sigmoid関数" => "シグモイド関数",
  "Graphics Processing Unit" => "グラフィックスプロセッシングユニット",
  /Convolutional Layer/i => "畳み込みレイヤー",
  "robustness" => "頑健性",
  "robust" => "頑堅",
  /Max Pooling Layer/i => "最大値蓄積レイヤー",
  /Max[\ -]Pooling/i => "最大値蓄積",
  /Feature Map/i => "素性写像",
  "filter" => "フィルタ",
  /hyperbolic tangent/i => "双曲線正接",
  /Rectifier/i => "整流",
  /layer/i => "レイヤー",
  "Unit" => "ユニット",
  /softmax/i => "ソフトマックス",
  "ホームページ" => "ウェブページ",
  /logistic/i => "ロジスティック",
  "" => "",
  "" => "",
  
  #white list
  "Greedy Layer-wise 事前学習" => "レイヤー毎の貪欲事前学習",
  "serre2007頑堅" => "serre2007robust",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  #  "" => "",

  #english capitalization
  "numpy" => "Numpy",
  "scipy" => "Scipy",
  "theano" => "Theano",
  "pylearn2" => "Pylearn2",
  /libsvm/i => "LIBSVM",
  /liblinear/i => "LIBLINEAR",

  #remove spaces derived from english
  
}
Dir::glob("*.tex").each {|fname|
  f=File.open(fname,"r")
  buffer = f.read();
  rpl.each{|k,v|
    buffer.gsub!(k, v)
  }
  f=File.open(fname,"w")
  f.write(buffer)
  f.close()
}
