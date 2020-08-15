#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Thu Aug  2 16:41:23 2018
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
from gnuradio import blocks
from gnuradio import eng_notation
from gnuradio import filter
from gnuradio import gr
from gnuradio import wxgui
from gnuradio.eng_option import eng_option
from gnuradio.fft import window
from gnuradio.filter import firdes
from gnuradio.wxgui import fftsink2
from gnuradio.wxgui import scopesink2
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
        self.samp_rate = samp_rate = 960e3
        self.m = m = 0.5
        self.fm = fm = 1e3
        self.fc = fc = 100e3

        ##################################################
        # Blocks
        ##################################################
        self.wxgui_scopesink2_0 = scopesink2.scope_sink_f(
        	self.GetWin(),
        	title="Scope Plot",
        	sample_rate=samp_rate,
        	v_scale=0,
        	v_offset=0,
        	t_scale=0,
        	ac_couple=False,
        	xy_mode=False,
        	num_inputs=1,
        	trig_mode=wxgui.TRIG_MODE_AUTO,
        	y_axis_label="Counts",
        )
        self.Add(self.wxgui_scopesink2_0.win)
        self.wxgui_fftsink2_0_0 = fftsink2.fft_sink_f(
        	self.GetWin(),
        	baseband_freq=0,
        	y_per_div=10,
        	y_divs=10,
        	ref_level=0,
        	ref_scale=2.0,
        	sample_rate=samp_rate,
        	fft_size=1024,
        	fft_rate=15,
        	average=False,
        	avg_alpha=None,
        	title="FFT Plot",
        	peak_hold=False,
        )
        self.Add(self.wxgui_fftsink2_0_0.win)
        self.wxgui_fftsink2_0 = fftsink2.fft_sink_f(
        	self.GetWin(),
        	baseband_freq=0,
        	y_per_div=10,
        	y_divs=10,
        	ref_level=0,
        	ref_scale=2.0,
        	sample_rate=samp_rate,
        	fft_size=1024,
        	fft_rate=15,
        	average=False,
        	avg_alpha=None,
        	title="FFT Plot",
        	peak_hold=False,
        )
        self.Add(self.wxgui_fftsink2_0.win)
        self.message = analog.sig_source_f(samp_rate, analog.GR_CONST_WAVE, 1000, 1, 0)
        self.iir_filter_xxx_1 = filter.iir_filter_ffd(([1/samp_rate,-1/samp_rate]), ([1]), True)
        self.iir_filter_xxx_0 = filter.iir_filter_ffd(([1/samp_rate]), ([1,1]), True)
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_float*1, samp_rate,True)
        self.blocks_multiply_xx_0 = blocks.multiply_vcc(1)
        self.blocks_multiply_const_vxx_0 = blocks.multiply_const_vff((2*3.14*m*fm, ))
        self.blocks_complex_to_float_0 = blocks.complex_to_float(1)
        self.blocks_complex_to_arg_1 = blocks.complex_to_arg(1)
        self.band_pass_filter_0 = filter.fir_filter_fff(30, firdes.band_pass(
        	20, samp_rate, 20, 20e3, 1000, firdes.WIN_HAMMING, 6.76))
        self.analog_sig_source_x_0 = analog.sig_source_c(samp_rate, analog.GR_COS_WAVE, fc, 1, 0)
        self.analog_phase_modulator_fc_0 = analog.phase_modulator_fc(1)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_phase_modulator_fc_0, 0), (self.blocks_multiply_xx_0, 0))    
        self.connect((self.analog_sig_source_x_0, 0), (self.blocks_multiply_xx_0, 1))    
        self.connect((self.band_pass_filter_0, 0), (self.wxgui_fftsink2_0_0, 0))    
        self.connect((self.blocks_complex_to_arg_1, 0), (self.iir_filter_xxx_1, 0))    
        self.connect((self.blocks_complex_to_float_0, 0), (self.wxgui_fftsink2_0, 0))    
        self.connect((self.blocks_complex_to_float_0, 0), (self.wxgui_scopesink2_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_0, 0), (self.analog_phase_modulator_fc_0, 0))    
        self.connect((self.blocks_multiply_xx_0, 0), (self.blocks_complex_to_arg_1, 0))    
        self.connect((self.blocks_multiply_xx_0, 0), (self.blocks_complex_to_float_0, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.blocks_multiply_const_vxx_0, 0))    
        self.connect((self.iir_filter_xxx_0, 0), (self.blocks_throttle_0, 0))    
        self.connect((self.iir_filter_xxx_1, 0), (self.band_pass_filter_0, 0))    
        self.connect((self.message, 0), (self.iir_filter_xxx_0, 0))    

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_0.set_sampling_freq(self.samp_rate)
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.iir_filter_xxx_0.set_taps(([1/self.samp_rate]), ([1,1]))
        self.iir_filter_xxx_1.set_taps(([1/self.samp_rate,-1/self.samp_rate]), ([1]))
        self.message.set_sampling_freq(self.samp_rate)
        self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate)
        self.wxgui_fftsink2_0.set_sample_rate(self.samp_rate)
        self.band_pass_filter_0.set_taps(firdes.band_pass(20, self.samp_rate, 20, 20e3, 1000, firdes.WIN_HAMMING, 6.76))
        self.wxgui_fftsink2_0_0.set_sample_rate(self.samp_rate)

    def get_m(self):
        return self.m

    def set_m(self, m):
        self.m = m
        self.blocks_multiply_const_vxx_0.set_k((2*3.14*self.m*self.fm, ))

    def get_fm(self):
        return self.fm

    def set_fm(self, fm):
        self.fm = fm
        self.blocks_multiply_const_vxx_0.set_k((2*3.14*self.m*self.fm, ))

    def get_fc(self):
        return self.fc

    def set_fc(self, fc):
        self.fc = fc
        self.analog_sig_source_x_0.set_frequency(self.fc)


def main(top_block_cls=top_block, options=None):

    tb = top_block_cls()
    tb.Start(True)
    tb.Wait()


if __name__ == '__main__':
    main()