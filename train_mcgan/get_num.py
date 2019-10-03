import argparse
import load


parser = argparse.ArgumentParser(description='get #datas in a hdf5 dataset.')
parser.add_argument('--data_file', dest='data_file', help='the location of dataset file', default='../datasets/outdoor_64.hdf5', type=str)
args = parser.parse_args()
_, _, _, _, ntrain, ntest = load.load_imgs(ntrain=None, ntest=None, batch_size=128, data_file=args.data_file)
print('dataset: %s; #training datas: %d; #test datas: %d' % (args.data_file, ntrain, ntest))
