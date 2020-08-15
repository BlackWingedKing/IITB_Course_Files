#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Thu Oct 11 17:17:53 2018
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
from gnuradio.fft import window
from gnuradio.filter import firdes
from gnuradio.filter import pfb
from gnuradio.wxgui import fftsink2
from gnuradio.wxgui import scopesink2
from grc_gnuradio import wxgui as grc_wxgui
from math import pi
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
        self.txtaps = txtaps = firdes.root_raised_cosine(nfilts,nfilts,1.0,excess_bw,ntaps)
        self.timing_bw = timing_bw = 2*pi/100
        self.samp_rate = samp_rate = 320e3
        self.rx_taps = rx_taps = filter.firdes.root_raised_cosine(nfilts, nfilts*sps, 1.0,
        excess_bw, ntaps)
        self.const_points = const_points = 8

        ##################################################
        # Blocks
        ##################################################
        self.wxgui_scopesink2_0 = scopesink2.scope_sink_c(
        	self.GetWin(),
        	title="Scope Plot",
        	sample_rate=samp_rate/sps,
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
        self.wxgui_fftsink2_0 = fftsink2.fft_sink_c(
        	self.GetWin(),
        	baseband_freq=0,
        	y_per_div=10,
        	y_divs=10,
        	ref_level=0,
        	ref_scale=2.0,
        	sample_rate=samp_rate/sps,
        	fft_size=1024,
        	fft_rate=15,
        	average=False,
        	avg_alpha=None,
        	title="FFT Plot",
        	peak_hold=False,
        )
        self.Add(self.wxgui_fftsink2_0.win)
        self.pfb_arb_resampler_xxx_0 = pfb.arb_resampler_ccf(
        	  sps,
                  taps=(txtaps),
        	  flt_size=32)
        self.pfb_arb_resampler_xxx_0.declare_sample_delay(0)
        	
        self.iir_filter_xxx_1 = filter.iir_filter_ffd(([1.0001,-1]), ([-1,1]), True)
        self.iir_filter_xxx_0 = filter.iir_filter_ffd(([10e-3]), ([-1,990e-3]), True)
        self.digital_pfb_clock_sync_xxx_0 = digital.pfb_clock_sync_ccf(sps, timing_bw, (rx_taps), nfilts, 16, 1.5, 1)
        self.digital_chunks_to_symbols_xx_0 = digital.chunks_to_symbols_bc(((1+0j),(0.707+0.707j),(0+1j),(-0.707+0.707j),(-1+0j),(-0.707-0.707j),(0-1j),(0.707-0.707j)), 1)
        self.blocks_vco_c_0_0 = blocks.vco_c(samp_rate/sps, -5, 1)
        self.blocks_vco_c_0 = blocks.vco_c(samp_rate/sps, samp_rate/sps, 1)
        self.blocks_udp_source_0 = blocks.udp_source(gr.sizeof_float*1, "127.0.0.1", 12345, 1472, True)
        self.blocks_udp_sink_0 = blocks.udp_sink(gr.sizeof_float*1, "127.0.0.1", 12345, 1472, True)
        self.blocks_throttle_0_0 = blocks.throttle(gr.sizeof_gr_complex*1, samp_rate,True)
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_gr_complex*1, samp_rate,True)
        self.blocks_multiply_xx_4 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_3 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_2 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_1 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_0 = blocks.multiply_vcc(1)
        self.blocks_multiply_const_vxx_0_0 = blocks.multiply_const_vff((0.125, ))
        self.blocks_multiply_const_vxx_0 = blocks.multiply_const_vff((0.125, ))
        self.blocks_multiply_conjugate_cc_0 = blocks.multiply_conjugate_cc(1)
        self.blocks_delay_0_0 = blocks.delay(gr.sizeof_float*1, 500)
        self.blocks_delay_0 = blocks.delay(gr.sizeof_gr_complex*1, 1)
        self.blocks_complex_to_arg_1 = blocks.complex_to_arg(1)
        self.blocks_complex_to_arg_0 = blocks.complex_to_arg(1)
        self.analog_sig_source_x_0 = analog.sig_source_c(samp_rate, analog.GR_SIN_WAVE, 10e3, 1, 0)
        self.analog_random_source_x_0 = blocks.vector_source_b(map(int, numpy.random.randint(0, const_points, 1000)), True)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_random_source_x_0, 0), (self.digital_chunks_to_symbols_xx_0, 0))    
        self.connect((self.analog_sig_source_x_0, 0), (self.blocks_throttle_0_0, 0))    
        self.connect((self.blocks_complex_to_arg_0, 0), (self.blocks_multiply_const_vxx_0, 0))    
        self.connect((self.blocks_complex_to_arg_1, 0), (self.blocks_multiply_const_vxx_0_0, 0))    
        self.connect((self.blocks_delay_0, 0), (self.blocks_multiply_conjugate_cc_0, 1))    
        self.connect((self.blocks_delay_0_0, 0), (self.iir_filter_xxx_1, 0))    
        self.connect((self.blocks_multiply_conjugate_cc_0, 0), (self.blocks_complex_to_arg_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_0, 0), (self.blocks_vco_c_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_0_0, 0), (self.iir_filter_xxx_0, 0))    
        self.connect((self.blocks_multiply_xx_0, 0), (self.digital_pfb_clock_sync_xxx_0, 0))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_delay_0, 0))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_conjugate_cc_0, 0))    
        self.connect((self.blocks_multiply_xx_2, 0), (self.blocks_multiply_xx_3, 0))    
        self.connect((self.blocks_multiply_xx_2, 0), (self.wxgui_scopesink2_0, 0))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_multiply_xx_4, 0))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_multiply_xx_4, 1))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_multiply_xx_4, 2))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_multiply_xx_4, 3))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_multiply_xx_4, 4))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_multiply_xx_4, 5))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_multiply_xx_4, 6))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_multiply_xx_4, 7))    
        self.connect((self.blocks_multiply_xx_4, 0), (self.blocks_complex_to_arg_1, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.blocks_multiply_xx_0, 0))    
        self.connect((self.blocks_throttle_0_0, 0), (self.blocks_multiply_xx_0, 1))    
        self.connect((self.blocks_udp_source_0, 0), (self.blocks_delay_0_0, 0))    
        self.connect((self.blocks_vco_c_0, 0), (self.blocks_multiply_xx_2, 0))    
        self.connect((self.blocks_vco_c_0, 0), (self.wxgui_fftsink2_0, 0))    
        self.connect((self.blocks_vco_c_0_0, 0), (self.blocks_multiply_xx_3, 1))    
        self.connect((self.digital_chunks_to_symbols_xx_0, 0), (self.pfb_arb_resampler_xxx_0, 0))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_1, 0))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_1, 1))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_1, 2))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_1, 3))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_1, 4))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_1, 5))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_1, 6))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_1, 7))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_2, 1))    
        self.connect((self.iir_filter_xxx_0, 0), (self.blocks_udp_sink_0, 0))    
        self.connect((self.iir_filter_xxx_1, 0), (self.blocks_vco_c_0_0, 0))    
        self.connect((self.pfb_arb_resampler_xxx_0, 0), (self.blocks_throttle_0, 0))    

    def get_sps(self):
        return self.sps

    def set_sps(self, sps):
        self.sps = sps
        self.set_ntaps(11*self.nfilts*self.sps)
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts, self.nfilts*self.sps, 1.0,
        self.excess_bw, self.ntaps))
        self.pfb_arb_resampler_xxx_0.set_rate(self.sps)
        self.wxgui_fftsink2_0.set_sample_rate(self.samp_rate/self.sps)
        self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate/self.sps)

    def get_nfilts(self):
        return self.nfilts

    def set_nfilts(self, nfilts):
        self.nfilts = nfilts
        self.set_ntaps(11*self.nfilts*self.sps)
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts, self.nfilts*self.sps, 1.0,
        self.excess_bw, self.ntaps))
        self.set_txtaps(firdes.root_raised_cosine(self.nfilts,self.nfilts,1.0,self.excess_bw,self.ntaps))

    def get_ntaps(self):
        return self.ntaps

    def set_ntaps(self, ntaps):
        self.ntaps = ntaps
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts, self.nfilts*self.sps, 1.0,
        self.excess_bw, self.ntaps))
        self.set_txtaps(firdes.root_raised_cosine(self.nfilts,self.nfilts,1.0,self.excess_bw,self.ntaps))

    def get_excess_bw(self):
        return self.excess_bw

    def set_excess_bw(self, excess_bw):
        self.excess_bw = excess_bw
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts, self.nfilts*self.sps, 1.0,
        self.excess_bw, self.ntaps))
        self.set_txtaps(firdes.root_raised_cosine(self.nfilts,self.nfilts,1.0,self.excess_bw,self.ntaps))

    def get_txtaps(self):
        return self.txtaps

    def set_txtaps(self, txtaps):
        self.txtaps = txtaps
        self.pfb_arb_resampler_xxx_0.set_taps((self.txtaps))

    def get_timing_bw(self):
        return self.timing_bw

    def set_timing_bw(self, timing_bw):
        self.timing_bw = timing_bw
        self.digital_pfb_clock_sync_xxx_0.set_loop_bandwidth(self.timing_bw)

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_0.set_sampling_freq(self.samp_rate)
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.blocks_throttle_0_0.set_sample_rate(self.samp_rate)
        self.wxgui_fftsink2_0.set_sample_rate(self.samp_rate/self.sps)
        self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate/self.sps)

    def get_rx_taps(self):
        return self.rx_taps

    def set_rx_taps(self, rx_taps):
        self.rx_taps = rx_taps
        self.digital_pfb_clock_sync_xxx_0.update_taps((self.rx_taps))

    def get_const_points(self):
        return self.const_points

    def set_const_points(self, const_points):
        self.const_points = const_points


def main(top_block_cls=top_block, options=None):

    tb = top_block_cls()
    tb.Start(True)
    tb.Wait()


if __name__ == '__main__':
    main()
