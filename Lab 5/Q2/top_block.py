#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Thu Aug 23 17:04:55 2018
##################################################

if __name__ == '__main__':
    import ctypes
    import sys
    if sys.platform.startswith('linux'):
        try:
            x11 = ctypes.cdll.LoadLibrary('libX11.so')
            x11.XInitThreads()
        except:
            print "Warning: failed to XInitThreads()"

from gnuradio import analog
from gnuradio import audio
from gnuradio import blocks
from gnuradio import eng_notation
from gnuradio import filter
from gnuradio import gr
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import wx


class top_block(grc_wxgui.top_block_gui):

    def __init__(self):
        grc_wxgui.top_block_gui.__init__(self, title="Top Block")
        _icon_path = "/usr/share/icons/hicolor/32x32/apps/gnuradio-grc.png"
        self.SetIcon(wx.Icon(_icon_path, wx.BITMAP_TYPE_ANY))

        ##################################################
        # Variables
        ##################################################
        self.samp_rate = samp_rate = 1e6

        ##################################################
        # Blocks
        ##################################################
        self.low_pass_filter_0 = filter.interp_fir_filter_fff(1, firdes.low_pass(
        	1, samp_rate, 50e3, 50, firdes.WIN_HAMMING, 6.76))
        self.hilbert_fc_0_0 = filter.hilbert_fc(5000*2, firdes.WIN_HAMMING, 6.76)
        self.hilbert_fc_0 = filter.hilbert_fc(10000, firdes.WIN_HAMMING, 6.76)
        self.blocks_wavfile_source_0 = blocks.wavfile_source("/home/ritesh/Dropbox/Sem5/EE340_communications_Lab/Lab 5/Q2/vocal.wav", True)
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_float*1, samp_rate,True)
        self.blocks_multiply_xx_1 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0 = blocks.multiply_vff(1)
        self.blocks_complex_to_float_0_1 = blocks.complex_to_float(1)
        self.blocks_complex_to_float_0 = blocks.complex_to_float(1)
        self.blocks_add_xx_0 = blocks.add_vff(1)
        self.audio_sink_0 = audio.sink(48000, "", True)
        self.analog_sig_source_x_0_0 = analog.sig_source_f(samp_rate, analog.GR_COS_WAVE, 100e3, 1, 0)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_sig_source_x_0_0, 0), (self.blocks_multiply_xx_1, 1))    
        self.connect((self.analog_sig_source_x_0_0, 0), (self.hilbert_fc_0_0, 0))    
        self.connect((self.blocks_add_xx_0, 0), (self.blocks_multiply_xx_1, 0))    
        self.connect((self.blocks_complex_to_float_0, 1), (self.blocks_multiply_xx_0, 0))    
        self.connect((self.blocks_complex_to_float_0, 0), (self.blocks_multiply_xx_0_0, 0))    
        self.connect((self.blocks_complex_to_float_0_1, 1), (self.blocks_multiply_xx_0, 1))    
        self.connect((self.blocks_complex_to_float_0_1, 0), (self.blocks_multiply_xx_0_0, 1))    
        self.connect((self.blocks_multiply_xx_0, 0), (self.blocks_add_xx_0, 1))    
        self.connect((self.blocks_multiply_xx_0_0, 0), (self.blocks_add_xx_0, 0))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.low_pass_filter_0, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.hilbert_fc_0, 0))    
        self.connect((self.blocks_wavfile_source_0, 0), (self.blocks_throttle_0, 0))    
        self.connect((self.hilbert_fc_0, 0), (self.blocks_complex_to_float_0, 0))    
        self.connect((self.hilbert_fc_0_0, 0), (self.blocks_complex_to_float_0_1, 0))    
        self.connect((self.low_pass_filter_0, 0), (self.audio_sink_0, 0))    

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_0_0.set_sampling_freq(self.samp_rate)
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.low_pass_filter_0.set_taps(firdes.low_pass(1, self.samp_rate, 50e3, 50, firdes.WIN_HAMMING, 6.76))


def main(top_block_cls=top_block, options=None):

    tb = top_block_cls()
    tb.Start(True)
    tb.Wait()


if __name__ == '__main__':
    main()
