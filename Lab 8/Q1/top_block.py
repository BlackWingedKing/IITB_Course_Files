#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Fri Oct  5 20:45:44 2018
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
from gnuradio import digital
from gnuradio import eng_notation
from gnuradio import filter
from gnuradio import gr
from gnuradio import wxgui
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from gnuradio.filter import pfb
from gnuradio.wxgui import forms
from gnuradio.wxgui import scopesink2
from grc_gnuradio import wxgui as grc_wxgui
from optparse import OptionParser
import numpy
import wx


class top_block(grc_wxgui.top_block_gui):

    def __init__(self):
        grc_wxgui.top_block_gui.__init__(self, title="Top Block")
        _icon_path = "/usr/share/icons/hicolor/32x32/apps/gnuradio-grc.png"
        self.SetIcon(wx.Icon(_icon_path, wx.BITMAP_TYPE_ANY))

        ##################################################
        # Variables
        ##################################################
        self.sps = sps = 4
        self.nfilts = nfilts = 32
        self.ntaps = ntaps = 11*nfilts*sps
        self.excess_bw = excess_bw = 0.4
        self.tx_taps = tx_taps = firdes.root_raised_cosine (nfilts, nfilts, 1.1, 0.4, ntaps)
        self.timing_bw = timing_bw = 2*3.14/100
        self.samp_rate = samp_rate = 64000
        self.rx_taps = rx_taps = filter.firdes.root_raised_cosine(nfilts, nfilts*sps, 1.0,
        excess_bw, ntaps)
        self.gain = gain = 0.001
        self.freq_bw = freq_bw = 2*3.14/100
        self.fll_ntaps = fll_ntaps = 55
        self.const_points = const_points = 8
        self.b4 = b4 = 0.0625
        self.b3 = b3 = -0.125
        self.b2 = b2 = 0.25
        self.b1 = b1 = -0.5

        ##################################################
        # Blocks
        ##################################################
        _gain_sizer = wx.BoxSizer(wx.VERTICAL)
        self._gain_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_gain_sizer,
        	value=self.gain,
        	callback=self.set_gain,
        	label='gain',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._gain_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_gain_sizer,
        	value=self.gain,
        	callback=self.set_gain,
        	minimum=0,
        	maximum=0.01,
        	num_steps=1000,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_gain_sizer)
        _b4_sizer = wx.BoxSizer(wx.VERTICAL)
        self._b4_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_b4_sizer,
        	value=self.b4,
        	callback=self.set_b4,
        	label='b4',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._b4_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_b4_sizer,
        	value=self.b4,
        	callback=self.set_b4,
        	minimum=-1,
        	maximum=1,
        	num_steps=1000,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_b4_sizer)
        _b3_sizer = wx.BoxSizer(wx.VERTICAL)
        self._b3_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_b3_sizer,
        	value=self.b3,
        	callback=self.set_b3,
        	label='b3',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._b3_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_b3_sizer,
        	value=self.b3,
        	callback=self.set_b3,
        	minimum=-1,
        	maximum=1,
        	num_steps=1000,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_b3_sizer)
        _b2_sizer = wx.BoxSizer(wx.VERTICAL)
        self._b2_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_b2_sizer,
        	value=self.b2,
        	callback=self.set_b2,
        	label='b2',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._b2_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_b2_sizer,
        	value=self.b2,
        	callback=self.set_b2,
        	minimum=-1,
        	maximum=1,
        	num_steps=1000,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_b2_sizer)
        _b1_sizer = wx.BoxSizer(wx.VERTICAL)
        self._b1_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_b1_sizer,
        	value=self.b1,
        	callback=self.set_b1,
        	label='b1',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._b1_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_b1_sizer,
        	value=self.b1,
        	callback=self.set_b1,
        	minimum=-1,
        	maximum=1,
        	num_steps=1000,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_b1_sizer)
        self.wxgui_scopesink2_1_0 = scopesink2.scope_sink_c(
        	self.GetWin(),
        	title="Scope Plot",
        	sample_rate=samp_rate/4,
        	v_scale=0,
        	v_offset=0,
        	t_scale=0,
        	ac_couple=False,
        	xy_mode=False,
        	num_inputs=1,
        	trig_mode=wxgui.TRIG_MODE_AUTO,
        	y_axis_label="Counts",
        )
        self.Add(self.wxgui_scopesink2_1_0.win)
        self.wxgui_scopesink2_1 = scopesink2.scope_sink_c(
        	self.GetWin(),
        	title="Scope Plot",
        	sample_rate=samp_rate/4,
        	v_scale=0,
        	v_offset=0,
        	t_scale=0,
        	ac_couple=False,
        	xy_mode=False,
        	num_inputs=1,
        	trig_mode=wxgui.TRIG_MODE_AUTO,
        	y_axis_label="Counts",
        )
        self.Add(self.wxgui_scopesink2_1.win)
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
        self.pfb_arb_resampler_xxx_0 = pfb.arb_resampler_ccf(
        	  sps,
                  taps=(tx_taps),
        	  flt_size=32)
        self.pfb_arb_resampler_xxx_0.declare_sample_delay(0)
        	
        self.iir_filter_xxx_0 = filter.iir_filter_ffd(([0.001]), ([1,0.98]), True)
        self.digital_pfb_clock_sync_xxx_0 = digital.pfb_clock_sync_ccf(sps, timing_bw, (rx_taps), nfilts, 16, 1.5, 1)
        self.digital_costas_loop_cc_0 = digital.costas_loop_cc(freq_bw, const_points, False)
        self.digital_cma_equalizer_cc_0 = digital.cma_equalizer_cc(100, 1, gain, 1)
        self.digital_chunks_to_symbols_xx_0 = digital.chunks_to_symbols_bc(((1+0j),(0.707+0.707j),(0+1j),(-0.707+0.707j),(-1+0j),(-0.707-0.707j),(0-1j),(0.707-0.707j)), 1)
        self.blocks_multiply_const_vxx_1_2 = blocks.multiply_const_vcc((b4, ))
        self.blocks_multiply_const_vxx_1_1 = blocks.multiply_const_vcc((b2, ))
        self.blocks_multiply_const_vxx_1_0 = blocks.multiply_const_vcc((b3, ))
        self.blocks_multiply_const_vxx_1 = blocks.multiply_const_vcc((b1, ))
        self.blocks_multiply_const_vxx_0 = blocks.multiply_const_vcc((0.5, ))
        self.blocks_delay_0_3 = blocks.delay(gr.sizeof_gr_complex*1, 1)
        self.blocks_delay_0_2 = blocks.delay(gr.sizeof_gr_complex*1, 1)
        self.blocks_delay_0_1 = blocks.delay(gr.sizeof_gr_complex*1, 1)
        self.blocks_delay_0_0 = blocks.delay(gr.sizeof_gr_complex*1, 1)
        self.blocks_delay_0 = blocks.delay(gr.sizeof_gr_complex*1, sps)
        self.blocks_complex_to_mag_squared_0 = blocks.complex_to_mag_squared(1)
        self.blocks_add_xx_1 = blocks.add_vcc(1)
        self.blocks_add_xx_0_0_2 = blocks.add_vcc(1)
        self.blocks_add_xx_0_0_1 = blocks.add_vcc(1)
        self.blocks_add_xx_0_0_0 = blocks.add_vcc(1)
        self.blocks_add_xx_0_0 = blocks.add_vcc(1)
        self.blocks_add_xx_0 = blocks.add_vcc(1)
        self.blocks_add_const_vxx_0 = blocks.add_const_vff((-1, ))
        self.blocks_abs_xx_0 = blocks.abs_ff(1)
        self.analog_random_source_x_0 = blocks.vector_source_b(map(int, numpy.random.randint(0, const_points, 1000)), True)
        self.analog_noise_source_x_0 = analog.noise_source_c(analog.GR_GAUSSIAN, 0.01, 0)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_noise_source_x_0, 0), (self.blocks_add_xx_1, 1))    
        self.connect((self.analog_random_source_x_0, 0), (self.digital_chunks_to_symbols_xx_0, 0))    
        self.connect((self.blocks_abs_xx_0, 0), (self.iir_filter_xxx_0, 0))    
        self.connect((self.blocks_add_const_vxx_0, 0), (self.blocks_abs_xx_0, 0))    
        self.connect((self.blocks_add_xx_0, 0), (self.digital_pfb_clock_sync_xxx_0, 0))    
        self.connect((self.blocks_add_xx_0_0, 0), (self.blocks_add_xx_0_0_0, 1))    
        self.connect((self.blocks_add_xx_0_0_0, 0), (self.blocks_add_xx_0_0_1, 1))    
        self.connect((self.blocks_add_xx_0_0_1, 0), (self.blocks_add_xx_0_0_2, 1))    
        self.connect((self.blocks_add_xx_0_0_2, 0), (self.blocks_complex_to_mag_squared_0, 0))    
        self.connect((self.blocks_add_xx_0_0_2, 0), (self.wxgui_scopesink2_1_0, 0))    
        self.connect((self.blocks_add_xx_1, 0), (self.blocks_add_xx_0, 0))    
        self.connect((self.blocks_add_xx_1, 0), (self.blocks_delay_0, 0))    
        self.connect((self.blocks_complex_to_mag_squared_0, 0), (self.blocks_add_const_vxx_0, 0))    
        self.connect((self.blocks_delay_0, 0), (self.blocks_multiply_const_vxx_0, 0))    
        self.connect((self.blocks_delay_0_0, 0), (self.blocks_delay_0_1, 0))    
        self.connect((self.blocks_delay_0_0, 0), (self.blocks_multiply_const_vxx_1, 0))    
        self.connect((self.blocks_delay_0_1, 0), (self.blocks_delay_0_2, 0))    
        self.connect((self.blocks_delay_0_1, 0), (self.blocks_multiply_const_vxx_1_1, 0))    
        self.connect((self.blocks_delay_0_2, 0), (self.blocks_delay_0_3, 0))    
        self.connect((self.blocks_delay_0_2, 0), (self.blocks_multiply_const_vxx_1_0, 0))    
        self.connect((self.blocks_delay_0_3, 0), (self.blocks_multiply_const_vxx_1_2, 0))    
        self.connect((self.blocks_multiply_const_vxx_0, 0), (self.blocks_add_xx_0, 1))    
        self.connect((self.blocks_multiply_const_vxx_1, 0), (self.blocks_add_xx_0_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_1_0, 0), (self.blocks_add_xx_0_0_1, 0))    
        self.connect((self.blocks_multiply_const_vxx_1_1, 0), (self.blocks_add_xx_0_0_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_1_2, 0), (self.blocks_add_xx_0_0_2, 0))    
        self.connect((self.digital_chunks_to_symbols_xx_0, 0), (self.pfb_arb_resampler_xxx_0, 0))    
        self.connect((self.digital_cma_equalizer_cc_0, 0), (self.digital_costas_loop_cc_0, 0))    
        self.connect((self.digital_costas_loop_cc_0, 0), (self.wxgui_scopesink2_1, 0))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_add_xx_0_0, 1))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_delay_0_0, 0))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.digital_cma_equalizer_cc_0, 0))    
        self.connect((self.iir_filter_xxx_0, 0), (self.wxgui_scopesink2_0, 0))    
        self.connect((self.pfb_arb_resampler_xxx_0, 0), (self.blocks_add_xx_1, 0))    

    def get_sps(self):
        return self.sps

    def set_sps(self, sps):
        self.sps = sps
        self.set_ntaps(11*self.nfilts*self.sps)
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts, self.nfilts*self.sps, 1.0,
        self.excess_bw, self.ntaps))
        self.blocks_delay_0.set_dly(self.sps)
        self.pfb_arb_resampler_xxx_0.set_rate(self.sps)

    def get_nfilts(self):
        return self.nfilts

    def set_nfilts(self, nfilts):
        self.nfilts = nfilts
        self.set_ntaps(11*self.nfilts*self.sps)
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts, self.nfilts*self.sps, 1.0,
        self.excess_bw, self.ntaps))
        self.set_tx_taps(firdes.root_raised_cosine (self.nfilts, self.nfilts, 1.1, 0.4, self.ntaps))

    def get_ntaps(self):
        return self.ntaps

    def set_ntaps(self, ntaps):
        self.ntaps = ntaps
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts, self.nfilts*self.sps, 1.0,
        self.excess_bw, self.ntaps))
        self.set_tx_taps(firdes.root_raised_cosine (self.nfilts, self.nfilts, 1.1, 0.4, self.ntaps))

    def get_excess_bw(self):
        return self.excess_bw

    def set_excess_bw(self, excess_bw):
        self.excess_bw = excess_bw
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts, self.nfilts*self.sps, 1.0,
        self.excess_bw, self.ntaps))

    def get_tx_taps(self):
        return self.tx_taps

    def set_tx_taps(self, tx_taps):
        self.tx_taps = tx_taps
        self.pfb_arb_resampler_xxx_0.set_taps((self.tx_taps))

    def get_timing_bw(self):
        return self.timing_bw

    def set_timing_bw(self, timing_bw):
        self.timing_bw = timing_bw
        self.digital_pfb_clock_sync_xxx_0.set_loop_bandwidth(self.timing_bw)

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate)
        self.wxgui_scopesink2_1.set_sample_rate(self.samp_rate/4)
        self.wxgui_scopesink2_1_0.set_sample_rate(self.samp_rate/4)

    def get_rx_taps(self):
        return self.rx_taps

    def set_rx_taps(self, rx_taps):
        self.rx_taps = rx_taps
        self.digital_pfb_clock_sync_xxx_0.update_taps((self.rx_taps))

    def get_gain(self):
        return self.gain

    def set_gain(self, gain):
        self.gain = gain
        self._gain_slider.set_value(self.gain)
        self._gain_text_box.set_value(self.gain)
        self.digital_cma_equalizer_cc_0.set_gain(self.gain)

    def get_freq_bw(self):
        return self.freq_bw

    def set_freq_bw(self, freq_bw):
        self.freq_bw = freq_bw
        self.digital_costas_loop_cc_0.set_loop_bandwidth(self.freq_bw)

    def get_fll_ntaps(self):
        return self.fll_ntaps

    def set_fll_ntaps(self, fll_ntaps):
        self.fll_ntaps = fll_ntaps

    def get_const_points(self):
        return self.const_points

    def set_const_points(self, const_points):
        self.const_points = const_points

    def get_b4(self):
        return self.b4

    def set_b4(self, b4):
        self.b4 = b4
        self._b4_slider.set_value(self.b4)
        self._b4_text_box.set_value(self.b4)
        self.blocks_multiply_const_vxx_1_2.set_k((self.b4, ))

    def get_b3(self):
        return self.b3

    def set_b3(self, b3):
        self.b3 = b3
        self._b3_slider.set_value(self.b3)
        self._b3_text_box.set_value(self.b3)
        self.blocks_multiply_const_vxx_1_0.set_k((self.b3, ))

    def get_b2(self):
        return self.b2

    def set_b2(self, b2):
        self.b2 = b2
        self._b2_slider.set_value(self.b2)
        self._b2_text_box.set_value(self.b2)
        self.blocks_multiply_const_vxx_1_1.set_k((self.b2, ))

    def get_b1(self):
        return self.b1

    def set_b1(self, b1):
        self.b1 = b1
        self._b1_slider.set_value(self.b1)
        self._b1_text_box.set_value(self.b1)
        self.blocks_multiply_const_vxx_1.set_k((self.b1, ))


def main(top_block_cls=top_block, options=None):

    tb = top_block_cls()
    tb.Start(True)
    tb.Wait()


if __name__ == '__main__':
    main()
