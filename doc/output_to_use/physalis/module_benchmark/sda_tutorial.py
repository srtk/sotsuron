#!/usr/bin/env python
"""
a script to do experiments written below without ipython
http://nbviewer.ipython.org/github/lisa-lab/pylearn2/blob/master/pylearn2/scripts/tutorials/stacked_autoencoders.ipynb
"""

from pylearn2.config import yaml_parse
import os
import resource

dae_dir = "../tutorials"

#pretraining for first layer
layer1_yaml = open(os.path.join(dae_dir, 'dae_l1.yaml'), 'r').read()
hyper_params_l1 = {'train_stop' : 50000,
                   'batch_size' : 100,
                   'monitoring_batches' : 5,
                   'nhid' : 500,
                   'max_epochs' : 10,
                   'save_path' : '.'}
layer1_yaml = layer1_yaml % (hyper_params_l1)
print layer1_yaml

train = yaml_parse.load(layer1_yaml)
train.main_loop()

#pretraining for second layer
layer2_yaml = open(os.path.join(dae_dir, 'dae_l2.yaml'), 'r').read()
hyper_params_l2 = {'train_stop' : 50000,
                   'batch_size' : 100,
                   'monitoring_batches' : 5,
                   'nvis' : hyper_params_l1['nhid'],
                   'nhid' : 500,
                   'max_epochs' : 10,
                   'save_path' : '.'}
layer2_yaml = layer2_yaml % (hyper_params_l2)
print layer2_yaml

train = yaml_parse.load(layer2_yaml)
train.main_loop()


#finetuning
mlp_yaml = open(os.path.join(dae_dir, 'dae_mlp.yaml'), 'r').read()
hyper_params_mlp = {'train_stop' : 50000,
                    'valid_stop' : 60000,
                    'batch_size' : 100,
                    'max_epochs' : 50,
                    'save_path' : '.'}
mlp_yaml = mlp_yaml % (hyper_params_mlp)
print mlp_yaml

train = yaml_parse.load(mlp_yaml)
train.main_loop()

print ("max memory usage(ru_maxrss) : %s  (check 'man getrusage' for the unit)" % resource.getrusage(
    resource.RUSAGE_SELF).ru_maxrss)