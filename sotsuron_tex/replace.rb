#!/usr/local/bin/ruby
# -*- coding: utf-8 -*-
rpl = {
  "Deep Learning" => "深層学習",
  "Representation Learning" => "表現学習",
  "Recommendation System" => "推薦システム",
  "Collaboraitive Filtering" => "協調フィルタリング",
  "Content Filtering" => "コンテンツベースのフィルタリング",
  "Link Prediction" => "リンク予測",
  "Sentiment Analysis" => "感情分析",
  "Deep Neural Network" => "深層ニューラルネットワーク",
  "Web" => "ウェブ",
  "precision" => "適合率",
  "recall" => "再現率",
  "Support Vector Machine" => "サポートベクターマシン",
  "Stochastic Gradient Descent" => "確率的勾配降下法",  
  "Batch Gradient Descent" => "バッチ",
  "finetuning" => "微調整",
  "fine tuning" => "微調整",
  "unsupervised" => "教師無し",
  "supervised" => "教師有り",
  "pretraining" => "事前学習",
  "Restricted Boltzman Machine" => "制限付きボルツマンマシン",
  "state of the art" => "最先端",
  "Convolutional Network" => "畳み込みネットワーク",
  "Convolutional Net" => "畳み込みネットワーク",
  "Permutation invariant" => "順序不変",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  "" => "",
  
#  "" => "",
}
Dir::glob("*.tex").each {|fname|
  f=File.open(fname,"r")
  buffer = f.read();
  body = buffer.split(/[\(\{].*[\)\}]./)
  body.each{|b|
    rpl.each{|k,v|
      b.gsub!(k, v)
    }
  }
  b.join
  f=File.open(fname,"w")
  f.write(buffer)
  f.close()
}
