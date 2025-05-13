#!/usr/bin/env bash

use_rirs=--no-use-rirs
#use_rirs=--use-rirs

use_noises=--no-use-noises
# use_noises=--use-noises

SNRS='5:10:15:20'
SAMPLINGFREQ=16000
DETSPKS="fixed"
NUMSPKS=2

KALDIDIR=/mnt/nas/original_datasets/voxpopuli/kaldi

DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
# DIR=/mnt/nas/original_datasets/voxpopuli/EEND_dataprep
AUDIOAMOUNTTR=2480.6
AUDIOAMOUNTVAL=-1
WORKDIR=$DIR/datasets/v1_"$AUDIOAMOUNTTR"hours

SEG_FILE=$DIR/VAD/segments

UTT2SPK_TR=$DIR/Kaldidatadir/train/utt2spk
WAV_SCP_TR=$DIR/Kaldidatadir/train/wav.scp
UTT2SPK_VAL=$DIR/Kaldidatadir/validation/utt2spk
WAV_SCP_VAL=$DIR/Kaldidatadir/validation/wav.scp

# RIRS_SCP=<simulated rirs directory>/simulated_rirs_16k/data/wav.scp
# NOISES_SCP=<MUSAN directory>/data/musan_noise_bg/wav.scp

RTTMS_FILE=/mnt/nas/original_datasets/voxpopuli/train_copy.rttm
