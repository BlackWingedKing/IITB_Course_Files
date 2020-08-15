#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Thu Nov  1 15:44:31 2018
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

from gnuradio import blocks
from gnuradio import digital
from gnuradio import eng_notation
from gnuradio import filter
from gnuradio import gr
from gnuradio import wxgui
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from gnuradio.wxgui import forms
from gnuradio.wxgui import scopesink2
from grc_gnuradio import wxgui as grc_wxgui
from math import pi
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
        self.sps = sps = 4
        self.samp_rate = samp_rate = 256000
        self.rx_taps = rx_taps = firdes.root_raised_cosine(32,32*sps,1.0,0.35,1408)
        self.loop_bw = loop_bw = 2*pi/100
        self.excess_bw = excess_bw = 0.35
        self.a = a = 0.65

        ##################################################
        # Blocks
        ##################################################
        self.nb = self.nb = wx.Notebook(self.GetWin(), style=wx.NB_TOP)
        self.nb.AddPage(grc_wxgui.Panel(self.nb), "rrc_out")
        self.nb.AddPage(grc_wxgui.Panel(self.nb), "difference")
        self.nb.AddPage(grc_wxgui.Panel(self.nb), "output")
        self.nb.AddPage(grc_wxgui.Panel(self.nb), "parity")
        self.Add(self.nb)
        self.wxgui_scopesink2_4 = scopesink2.scope_sink_f(
        	self.nb.GetPage(3).GetWin(),
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
        self.nb.GetPage(3).Add(self.wxgui_scopesink2_4.win)
        self.wxgui_scopesink2_2 = scopesink2.scope_sink_c(
        	self.nb.GetPage(0).GetWin(),
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
        self.nb.GetPage(0).Add(self.wxgui_scopesink2_2.win)
        self.wxgui_scopesink2_1 = scopesink2.scope_sink_f(
        	self.nb.GetPage(2).GetWin(),
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
        self.nb.GetPage(2).Add(self.wxgui_scopesink2_1.win)
        self.wxgui_scopesink2_0 = scopesink2.scope_sink_c(
        	self.nb.GetPage(1).GetWin(),
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
        self.nb.GetPage(1).Add(self.wxgui_scopesink2_0.win)
        self.digital_pfb_clock_sync_xxx_0 = digital.pfb_clock_sync_ccf(sps, loop_bw, (rx_taps), 32, 16, 1.5, 1)
        self.blocks_threshold_ff_0 = blocks.threshold_ff(0.2, 1.8, 0)
        self.blocks_multiply_const_vxx_2 = blocks.multiply_const_vcc((-1, ))
        self.blocks_multiply_const_vxx_1 = blocks.multiply_const_vff((1/0.85, ))
        self.blocks_multiply_const_vxx_0 = blocks.multiply_const_vff((1/0.5, ))
        self.blocks_float_to_complex_0 = blocks.float_to_complex(1)
        self.blocks_file_source_0 = blocks.file_source(gr.sizeof_gr_complex*1, "/home/ritesh/Dropbox/Sem5/EE340_communications_Lab/File1.dat", True)
        self.blocks_delay_0 = blocks.delay(gr.sizeof_gr_complex*1, 1)
        self.blocks_complex_to_float_1 = blocks.complex_to_float(1)
        self.blocks_complex_to_float_0 = blocks.complex_to_float(1)
        self.blocks_add_xx_1 = blocks.add_vff(1)
        self.blocks_add_xx_0 = blocks.add_vcc(1)
        self.blocks_abs_xx_0 = blocks.abs_ff(1)
        _a_sizer = wx.BoxSizer(wx.VERTICAL)
        self._a_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_a_sizer,
        	value=self.a,
        	callback=self.set_a,
        	label='a',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._a_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_a_sizer,
        	value=self.a,
        	callback=self.set_a,
        	minimum=0,
        	maximum=1,
        	num_steps=100,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_a_sizer)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.blocks_abs_xx_0, 0), (self.blocks_threshold_ff_0, 0))    
        self.connect((self.blocks_add_xx_0, 0), (self.blocks_complex_to_float_1, 0))    
        self.connect((self.blocks_add_xx_0, 0), (self.wxgui_scopesink2_0, 0))    
        self.connect((self.blocks_add_xx_1, 0), (self.wxgui_scopesink2_4, 0))    
        self.connect((self.blocks_complex_to_float_0, 0), (self.blocks_multiply_const_vxx_0, 0))    
        self.connect((self.blocks_complex_to_float_0, 1), (self.blocks_multiply_const_vxx_1, 0))    
        self.connect((self.blocks_complex_to_float_1, 0), (self.blocks_abs_xx_0, 0))    
        self.connect((self.blocks_complex_to_float_1, 1), (self.blocks_add_xx_1, 1))    
        self.connect((self.blocks_complex_to_float_1, 0), (self.blocks_add_xx_1, 0))    
        self.connect((self.blocks_delay_0, 0), (self.blocks_multiply_const_vxx_2, 0))    
        self.connect((self.blocks_file_source_0, 0), (self.digital_pfb_clock_sync_xxx_0, 0))    
        self.connect((self.blocks_float_to_complex_0, 0), (self.blocks_add_xx_0, 1))    
        self.connect((self.blocks_float_to_complex_0, 0), (self.blocks_delay_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_0, 0), (self.blocks_float_to_complex_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_1, 0), (self.blocks_float_to_complex_0, 1))    
        self.connect((self.blocks_multiply_const_vxx_2, 0), (self.blocks_add_xx_0, 0))    
        self.connect((self.blocks_threshold_ff_0, 0), (self.wxgui_scopesink2_1, 0))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_complex_to_float_0, 0))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.wxgui_scopesink2_2, 0))    

    def get_sps(self):
        return self.sps

    def set_sps(self, sps):
        self.sps = sps
        self.set_rx_taps(firdes.root_raised_cosine(32,32*self.sps,1.0,0.35,1408))
        self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate/self.sps)
        self.wxgui_scopesink2_1.set_sample_rate(self.samp_rate/self.sps)
        self.wxgui_scopesink2_2.set_sample_rate(self.samp_rate/self.sps)
        self.wxgui_scopesink2_4.set_sample_rate(self.samp_rate/self.sps)

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.wxgui_scopesink2_0.set_sample_rate(self.samp_rate/self.sps)
        self.wxgui_scopesink2_1.set_sample_rate(self.samp_rate/self.sps)
        self.wxgui_scopesink2_2.set_sample_rate(self.samp_rate/self.sps)
        self.wxgui_scopesink2_4.set_sample_rate(self.samp_rate/self.sps)

    def get_rx_taps(self):
        return self.rx_taps

    def set_rx_taps(self, rx_taps):
        self.rx_taps = rx_taps
        self.digital_pfb_clock_sync_xxx_0.update_taps((self.rx_taps))

    def get_loop_bw(self):
        return self.loop_bw

    def set_loop_bw(self, loop_bw):
        self.loop_bw = loop_bw
        self.digital_pfb_clock_sync_xxx_0.set_loop_bandwidth(self.loop_bw)

    def get_excess_bw(self):
        return self.excess_bw

    def set_excess_bw(self, excess_bw):
        self.excess_bw = excess_bw

    def get_a(self):
        return self.a

    def set_a(self, a):
        self.a = a
        self._a_slider.set_value(self.a)
        self._a_text_box.set_value(self.a)


def main(top_block_cls=top_block, options=None):

    tb = top_block_cls()
    tb.Start(True)
    tb.Wait()


if __name__ == '__main__':
    main()
