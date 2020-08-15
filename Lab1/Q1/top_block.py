#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Sat Sep  1 18:02:14 2018
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
        self.sen = sen = 25
        self.samp_rate = samp_rate = 32000

        ##################################################
        # Blocks
        ##################################################
        _sen_sizer = wx.BoxSizer(wx.VERTICAL)
        self._sen_text_box = forms.text_box(
        	parent=self.GetWin(),
        	sizer=_sen_sizer,
        	value=self.sen,
        	callback=self.set_sen,
        	label='sen',
        	converter=forms.float_converter(),
        	proportion=0,
        )
        self._sen_slider = forms.slider(
        	parent=self.GetWin(),
        	sizer=_sen_sizer,
        	value=self.sen,
        	callback=self.set_sen,
        	minimum=10,
        	maximum=100,
        	num_steps=75,
        	style=wx.SL_HORIZONTAL,
        	cast=float,
        	proportion=1,
        )
        self.Add(_sen_sizer)
        self.blocks_vector_source_x_0 = blocks.vector_source_f((262, 262, 294,262,350,330,0,262,262,294,262,392,350,0,262,262,524,440,392,350,330,0,467,467,440,350,392,350), True, 1, [])
        self.blocks_vco_f_0 = blocks.vco_f(samp_rate, 30, 1)
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_float*1, samp_rate,True)
        self.blocks_repeat_0 = blocks.repeat(gr.sizeof_float*1, 16000)
        self.audio_sink_0 = audio.sink(samp_rate, "", True)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.blocks_repeat_0, 0), (self.blocks_vco_f_0, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.audio_sink_0, 0))    
        self.connect((self.blocks_vco_f_0, 0), (self.blocks_throttle_0, 0))    
        self.connect((self.blocks_vector_source_x_0, 0), (self.blocks_repeat_0, 0))    

    def get_sen(self):
        return self.sen

    def set_sen(self, sen):
        self.sen = sen
        self._sen_slider.set_value(self.sen)
        self._sen_text_box.set_value(self.sen)

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)


def main(top_block_cls=top_block, options=None):

    tb = top_block_cls()
    tb.Start(True)
    tb.Wait()


if __name__ == '__main__':
    main()
