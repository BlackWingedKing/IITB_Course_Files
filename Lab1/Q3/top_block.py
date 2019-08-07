#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Sat Sep  1 18:08:19 2018
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

from gnuradio import audio
from gnuradio import blocks
from gnuradio import eng_notation
from gnuradio import filter
from gnuradio import gr
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from gnuradio.wxgui import forms
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
        self.twidth = twidth = 100
        self.samp_rate = samp_rate = 48000
        self.e = e = 1
        self.d = d = 1
        self.c = c = 1
        self.b = b = 1
        self.a = a = 1

        ##################################################
        # Blocks
        ##################################################
        _c_sizer = wx.BoxSizer(wx.VERTICAL)
        self._c_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_c_sizer,
        	value=self.c,
        	callback=self.set_c,
        	label='c',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._c_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_c_sizer,
        	value=self.c,
        	callback=self.set_c,
        	minimum=0.1,
        	maximum=10,
        	num_steps=100,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_c_sizer)
        _e_sizer = wx.BoxSizer(wx.VERTICAL)
        self._e_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_e_sizer,
        	value=self.e,
        	callback=self.set_e,
        	label='e',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._e_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_e_sizer,
        	value=self.e,
        	callback=self.set_e,
        	minimum=0.1,
        	maximum=10,
        	num_steps=100,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_e_sizer)
        _d_sizer = wx.BoxSizer(wx.VERTICAL)
        self._d_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_d_sizer,
        	value=self.d,
        	callback=self.set_d,
        	label='d',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._d_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_d_sizer,
        	value=self.d,
        	callback=self.set_d,
        	minimum=0.1,
        	maximum=10,
        	num_steps=100,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_d_sizer)
        _b_sizer = wx.BoxSizer(wx.VERTICAL)
        self._b_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_b_sizer,
        	value=self.b,
        	callback=self.set_b,
        	label='b',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._b_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_b_sizer,
        	value=self.b,
        	callback=self.set_b,
        	minimum=0.1,
        	maximum=10,
        	num_steps=100,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_b_sizer)
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
        	minimum=0.1,
        	maximum=10,
        	num_steps=100,
        	style=wx.SL_VERTICAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_a_sizer)
        self.blocks_add_xx_0 = blocks.add_vff(1)
        self.band_pass_filter_1_0_0_0 = filter.interp_fir_filter_fff(1, firdes.band_pass(
        	e, samp_rate, 9000, 15000, twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1_0_0 = filter.interp_fir_filter_fff(1, firdes.band_pass(
        	d, samp_rate, 6000, 9000, twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1_0 = filter.interp_fir_filter_fff(1, firdes.band_pass(
        	c, samp_rate, 3000, 6000, twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1 = filter.interp_fir_filter_fff(1, firdes.band_pass(
        	b, samp_rate, 500, 3000, twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_0 = filter.interp_fir_filter_fff(1, firdes.band_pass(
        	a, samp_rate, 20, 500, twidth, firdes.WIN_HAMMING, 6.76))
        self.bach = blocks.wavfile_source("/home/ritesh/Desktop/Sem5/Sem5/EE340_communications_Lab/Lab1/Bach.wav", True)
        self.audio_sink_0 = audio.sink(48000, "", True)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.bach, 0), (self.band_pass_filter_0, 0))    
        self.connect((self.bach, 0), (self.band_pass_filter_1, 0))    
        self.connect((self.bach, 0), (self.band_pass_filter_1_0, 0))    
        self.connect((self.bach, 0), (self.band_pass_filter_1_0_0, 0))    
        self.connect((self.bach, 0), (self.band_pass_filter_1_0_0_0, 0))    
        self.connect((self.bach, 0), (self.blocks_add_xx_0, 5))    
        self.connect((self.band_pass_filter_0, 0), (self.blocks_add_xx_0, 0))    
        self.connect((self.band_pass_filter_1, 0), (self.blocks_add_xx_0, 1))    
        self.connect((self.band_pass_filter_1_0, 0), (self.blocks_add_xx_0, 2))    
        self.connect((self.band_pass_filter_1_0_0, 0), (self.blocks_add_xx_0, 3))    
        self.connect((self.band_pass_filter_1_0_0_0, 0), (self.blocks_add_xx_0, 4))    
        self.connect((self.blocks_add_xx_0, 0), (self.audio_sink_0, 0))    

    def get_twidth(self):
        return self.twidth

    def set_twidth(self, twidth):
        self.twidth = twidth
        self.band_pass_filter_0.set_taps(firdes.band_pass(self.a, self.samp_rate, 20, 500, self.twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1.set_taps(firdes.band_pass(self.b, self.samp_rate, 500, 3000, self.twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1_0_0_0.set_taps(firdes.band_pass(self.e, self.samp_rate, 9000, 15000, self.twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1_0_0.set_taps(firdes.band_pass(self.d, self.samp_rate, 6000, 9000, self.twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1_0.set_taps(firdes.band_pass(self.c, self.samp_rate, 3000, 6000, self.twidth, firdes.WIN_HAMMING, 6.76))

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.band_pass_filter_0.set_taps(firdes.band_pass(self.a, self.samp_rate, 20, 500, self.twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1.set_taps(firdes.band_pass(self.b, self.samp_rate, 500, 3000, self.twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1_0_0_0.set_taps(firdes.band_pass(self.e, self.samp_rate, 9000, 15000, self.twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1_0_0.set_taps(firdes.band_pass(self.d, self.samp_rate, 6000, 9000, self.twidth, firdes.WIN_HAMMING, 6.76))
        self.band_pass_filter_1_0.set_taps(firdes.band_pass(self.c, self.samp_rate, 3000, 6000, self.twidth, firdes.WIN_HAMMING, 6.76))

    def get_e(self):
        return self.e

    def set_e(self, e):
        self.e = e
        self._e_slider.set_value(self.e)
        self._e_text_box.set_value(self.e)
        self.band_pass_filter_1_0_0_0.set_taps(firdes.band_pass(self.e, self.samp_rate, 9000, 15000, self.twidth, firdes.WIN_HAMMING, 6.76))

    def get_d(self):
        return self.d

    def set_d(self, d):
        self.d = d
        self._d_slider.set_value(self.d)
        self._d_text_box.set_value(self.d)
        self.band_pass_filter_1_0_0.set_taps(firdes.band_pass(self.d, self.samp_rate, 6000, 9000, self.twidth, firdes.WIN_HAMMING, 6.76))

    def get_c(self):
        return self.c

    def set_c(self, c):
        self.c = c
        self._c_slider.set_value(self.c)
        self._c_text_box.set_value(self.c)
        self.band_pass_filter_1_0.set_taps(firdes.band_pass(self.c, self.samp_rate, 3000, 6000, self.twidth, firdes.WIN_HAMMING, 6.76))

    def get_b(self):
        return self.b

    def set_b(self, b):
        self.b = b
        self.band_pass_filter_1.set_taps(firdes.band_pass(self.b, self.samp_rate, 500, 3000, self.twidth, firdes.WIN_HAMMING, 6.76))
        self._b_slider.set_value(self.b)
        self._b_text_box.set_value(self.b)

    def get_a(self):
        return self.a

    def set_a(self, a):
        self.a = a
        self.band_pass_filter_0.set_taps(firdes.band_pass(self.a, self.samp_rate, 20, 500, self.twidth, firdes.WIN_HAMMING, 6.76))
        self._a_slider.set_value(self.a)
        self._a_text_box.set_value(self.a)


def main(top_block_cls=top_block, options=None):

    tb = top_block_cls()
    tb.Start(True)
    tb.Wait()


if __name__ == '__main__':
    main()
