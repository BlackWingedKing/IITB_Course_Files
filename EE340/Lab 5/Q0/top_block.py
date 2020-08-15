#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Thu Aug 23 15:28:46 2018
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
from gnuradio.wxgui import forms
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
        self.samp_rate = samp_rate = 1e6
        self.m = m = 50
        self.kf = kf = 17
        self.fm = fm = 1.1e3

        ##################################################
        # Blocks
        ##################################################
        _kf_sizer = wx.BoxSizer(wx.VERTICAL)
        self._kf_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_kf_sizer,
        	value=self.kf,
        	callback=self.set_kf,
        	label='kf',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._kf_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_kf_sizer,
        	value=self.kf,
        	callback=self.set_kf,
        	minimum=0,
        	maximum=25,
        	num_steps=100,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_kf_sizer)
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
        self.message_0 = analog.sig_source_f(samp_rate, analog.GR_COS_WAVE, 11e3, 0.5, 0)
        self.message = analog.sig_source_f(samp_rate, analog.GR_COS_WAVE, 1.1e3, 0.5, 0)
        _m_sizer = wx.BoxSizer(wx.VERTICAL)
        self._m_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_m_sizer,
        	value=self.m,
        	callback=self.set_m,
        	label='m',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._m_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_m_sizer,
        	value=self.m,
        	callback=self.set_m,
        	minimum=1,
        	maximum=80,
        	num_steps=1000,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_m_sizer)
        self.iir_filter_xxx_0 = filter.iir_filter_ffd(([1.0/samp_rate]), ([1,1]), True)
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_gr_complex*1, samp_rate,True)
        self.blocks_multiply_xx_0_0 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_0 = blocks.multiply_vcc(1)
        self.blocks_multiply_const_vxx_0 = blocks.multiply_const_vff((10e3, ))
        self.blocks_delay_0 = blocks.delay(gr.sizeof_gr_complex*1, 1)
        self.blocks_conjugate_cc_0 = blocks.conjugate_cc()
        self.blocks_complex_to_arg_0 = blocks.complex_to_arg(1)
        self.blocks_add_xx_1 = blocks.add_vcc(1)
        self.blocks_add_xx_0 = blocks.add_vff(1)
        self.analog_sig_source_x_0 = analog.sig_source_c(samp_rate, analog.GR_COS_WAVE, 100e3, 1, 0)
        self.analog_phase_modulator_fc_0 = analog.phase_modulator_fc(kf)
        self.analog_noise_source_x_0 = analog.noise_source_c(analog.GR_GAUSSIAN, 0, 0)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_noise_source_x_0, 0), (self.blocks_add_xx_1, 1))    
        self.connect((self.analog_phase_modulator_fc_0, 0), (self.blocks_multiply_xx_0, 0))    
        self.connect((self.analog_sig_source_x_0, 0), (self.blocks_multiply_xx_0, 1))    
        self.connect((self.blocks_add_xx_0, 0), (self.iir_filter_xxx_0, 0))    
        self.connect((self.blocks_add_xx_1, 0), (self.blocks_delay_0, 0))    
        self.connect((self.blocks_add_xx_1, 0), (self.blocks_multiply_xx_0_0, 0))    
        self.connect((self.blocks_complex_to_arg_0, 0), (self.wxgui_fftsink2_0, 0))    
        self.connect((self.blocks_complex_to_arg_0, 0), (self.wxgui_scopesink2_0, 0))    
        self.connect((self.blocks_conjugate_cc_0, 0), (self.blocks_multiply_xx_0_0, 1))    
        self.connect((self.blocks_delay_0, 0), (self.blocks_conjugate_cc_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_0, 0), (self.analog_phase_modulator_fc_0, 0))    
        self.connect((self.blocks_multiply_xx_0, 0), (self.blocks_throttle_0, 0))    
        self.connect((self.blocks_multiply_xx_0_0, 0), (self.blocks_complex_to_arg_0, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.blocks_add_xx_1, 0))    
        self.connect((self.iir_filter_xxx_0, 0), (self.blocks_multiply_const_vxx_0, 0))    
        self.connect((self.message, 0), (self.blocks_add_xx_0, 0))    
        self.connect((self.message_0, 0), (self.blocks_add_xx_0, 1))    

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_0.set_sampling_freq(self.samp_rate)
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.iir_filter_xxx_0.set_taps(([1.0/self.samp_rate]), ([1,1]))
        self.message.set_sampling_freq(self.samp_rate)
        self.message_0.set_sampling_freq(self.samp_rate)
        self.wxgui_fftsink2_0.set_sample_rate(self.samp_rate)
        self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate)

    def get_m(self):
        return self.m

    def set_m(self, m):
        self.m = m
        self._m_slider.set_value(self.m)
        self._m_text_box.set_value(self.m)

    def get_kf(self):
        return self.kf

    def set_kf(self, kf):
        self.kf = kf
        self.analog_phase_modulator_fc_0.set_sensitivity(self.kf)
        self._kf_slider.set_value(self.kf)
        self._kf_text_box.set_value(self.kf)

    def get_fm(self):
        return self.fm

    def set_fm(self, fm):
        self.fm = fm


def main(top_block_cls=top_block, options=None):

    tb = top_block_cls()
    tb.Start(True)
    tb.Wait()


if __name__ == '__main__':
    main()
