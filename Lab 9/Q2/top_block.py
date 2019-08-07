#!/usr/bin/env python2
# -*- coding: utf-8 -*-
##################################################
# GNU Radio Python Flow Graph
# Title: Top Block
# Generated: Thu Nov  1 10:26:23 2018
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

from PyQt4 import Qt
from gnuradio import analog
from gnuradio import blocks
from gnuradio import digital
from gnuradio import eng_notation
from gnuradio import filter
from gnuradio import gr
from gnuradio import qtgui
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from gnuradio.filter import pfb
from math import pi
from optparse import OptionParser
import numpy
import sip
import sys


class top_block(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Top Block")
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Top Block")
        try:
            self.setWindowIcon(Qt.QIcon.fromTheme('gnuradio-grc'))
        except:
            pass
        self.top_scroll_layout = Qt.QVBoxLayout()
        self.setLayout(self.top_scroll_layout)
        self.top_scroll = Qt.QScrollArea()
        self.top_scroll.setFrameStyle(Qt.QFrame.NoFrame)
        self.top_scroll_layout.addWidget(self.top_scroll)
        self.top_scroll.setWidgetResizable(True)
        self.top_widget = Qt.QWidget()
        self.top_scroll.setWidget(self.top_widget)
        self.top_layout = Qt.QVBoxLayout(self.top_widget)
        self.top_grid_layout = Qt.QGridLayout()
        self.top_layout.addLayout(self.top_grid_layout)

        self.settings = Qt.QSettings("GNU Radio", "top_block")
        self.restoreGeometry(self.settings.value("geometry").toByteArray())

        ##################################################
        # Variables
        ##################################################
        self.sps = sps = 4
        self.nfilts = nfilts = 32
        self.ntaps = ntaps = 11*nfilts*sps
        self.excess_bw = excess_bw = 0.4
        self.tx_taps = tx_taps = firdes.root_raised_cosine(nfilts,nfilts,1.0,excess_bw,ntaps)
        self.timing_bw = timing_bw = 2*pi/100
        self.samp_rate = samp_rate = 320000
        self.rx_taps = rx_taps = filter.firdes.root_raised_cosine(nfilts,nfilts*sps,1.0,excess_bw,ntaps)
        self.freq_bw = freq_bw = 2*pi/100
        self.fll_ntaps = fll_ntaps = 55
        self.const_points = const_points = 8

        ##################################################
        # Blocks
        ##################################################
        self.qtgui_const_sink_x_1 = qtgui.const_sink_c(
        	1024, #size
        	"", #name
        	1 #number of inputs
        )
        self.qtgui_const_sink_x_1.set_update_time(0.10)
        self.qtgui_const_sink_x_1.set_y_axis(-2, 2)
        self.qtgui_const_sink_x_1.set_x_axis(-2, 2)
        self.qtgui_const_sink_x_1.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, "")
        self.qtgui_const_sink_x_1.enable_autoscale(False)
        self.qtgui_const_sink_x_1.enable_grid(False)
        
        if not True:
          self.qtgui_const_sink_x_1.disable_legend()
        
        labels = ["", "", "", "", "",
                  "", "", "", "", ""]
        widths = [1, 1, 1, 1, 1,
                  1, 1, 1, 1, 1]
        colors = ["blue", "red", "red", "red", "red",
                  "red", "red", "red", "red", "red"]
        styles = [0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0]
        markers = [0, 0, 0, 0, 0,
                   0, 0, 0, 0, 0]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
                  1.0, 1.0, 1.0, 1.0, 1.0]
        for i in xrange(1):
            if len(labels[i]) == 0:
                self.qtgui_const_sink_x_1.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_const_sink_x_1.set_line_label(i, labels[i])
            self.qtgui_const_sink_x_1.set_line_width(i, widths[i])
            self.qtgui_const_sink_x_1.set_line_color(i, colors[i])
            self.qtgui_const_sink_x_1.set_line_style(i, styles[i])
            self.qtgui_const_sink_x_1.set_line_marker(i, markers[i])
            self.qtgui_const_sink_x_1.set_line_alpha(i, alphas[i])
        
        self._qtgui_const_sink_x_1_win = sip.wrapinstance(self.qtgui_const_sink_x_1.pyqwidget(), Qt.QWidget)
        self.top_layout.addWidget(self._qtgui_const_sink_x_1_win)
        self.qtgui_const_sink_x_0 = qtgui.const_sink_c(
        	1024, #size
        	"", #name
        	1 #number of inputs
        )
        self.qtgui_const_sink_x_0.set_update_time(0.10)
        self.qtgui_const_sink_x_0.set_y_axis(-2, 2)
        self.qtgui_const_sink_x_0.set_x_axis(-2, 2)
        self.qtgui_const_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, "")
        self.qtgui_const_sink_x_0.enable_autoscale(False)
        self.qtgui_const_sink_x_0.enable_grid(False)
        
        if not True:
          self.qtgui_const_sink_x_0.disable_legend()
        
        labels = ["", "", "", "", "",
                  "", "", "", "", ""]
        widths = [1, 1, 1, 1, 1,
                  1, 1, 1, 1, 1]
        colors = ["blue", "red", "red", "red", "red",
                  "red", "red", "red", "red", "red"]
        styles = [0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0]
        markers = [0, 0, 0, 0, 0,
                   0, 0, 0, 0, 0]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
                  1.0, 1.0, 1.0, 1.0, 1.0]
        for i in xrange(1):
            if len(labels[i]) == 0:
                self.qtgui_const_sink_x_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_const_sink_x_0.set_line_label(i, labels[i])
            self.qtgui_const_sink_x_0.set_line_width(i, widths[i])
            self.qtgui_const_sink_x_0.set_line_color(i, colors[i])
            self.qtgui_const_sink_x_0.set_line_style(i, styles[i])
            self.qtgui_const_sink_x_0.set_line_marker(i, markers[i])
            self.qtgui_const_sink_x_0.set_line_alpha(i, alphas[i])
        
        self._qtgui_const_sink_x_0_win = sip.wrapinstance(self.qtgui_const_sink_x_0.pyqwidget(), Qt.QWidget)
        self.top_layout.addWidget(self._qtgui_const_sink_x_0_win)
        self.pfb_arb_resampler_xxx_0_0 = pfb.arb_resampler_ccf(
        	  sps,
                  taps=(tx_taps),
        	  flt_size=32)
        self.pfb_arb_resampler_xxx_0_0.declare_sample_delay(0)
        	
        self.iir_filter_xxx_1 = filter.iir_filter_ffd(([1.0001,-1]), ([-1,1]), True)
        self.iir_filter_xxx_0 = filter.iir_filter_ffd((0.01, ), ([-1,0.99]), True)
        self.digital_pfb_clock_sync_xxx_0 = digital.pfb_clock_sync_ccf(sps, timing_bw, (rx_taps), 32, 16, 1.5, 1)
        self.digital_chunks_to_symbols_xx_0_0 = digital.chunks_to_symbols_bc((((1.414),(1+1j),(1.414j),(-1+1j),(-1.414),(-1-1j),(-1.414j),(1-1j))), 1)
        self.blocks_vco_c_0 = blocks.vco_c(320000, -5, 1)
        self.blocks_udp_source_0 = blocks.udp_source(gr.sizeof_float*1, "127.0.0.1", 12345, 1472, True)
        self.blocks_udp_sink_0 = blocks.udp_sink(gr.sizeof_float*1, "127.0.0.1", 12345, 1472, True)
        self.blocks_throttle_0_1 = blocks.throttle(gr.sizeof_gr_complex*1, samp_rate,True)
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_gr_complex*1, samp_rate,True)
        self.blocks_multiply_xx_3 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_2 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_1 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_0_0 = blocks.multiply_vcc(1)
        self.blocks_multiply_xx_0 = blocks.multiply_vcc(1)
        self.blocks_multiply_const_vxx_0 = blocks.multiply_const_vff((0.125, ))
        self.blocks_multiply_conjugate_cc_0 = blocks.multiply_conjugate_cc(1)
        self.blocks_delay_1 = blocks.delay(gr.sizeof_float*1, 10)
        self.blocks_delay_0 = blocks.delay(gr.sizeof_gr_complex*1, 1)
        self.blocks_complex_to_arg_1 = blocks.complex_to_arg(1)
        self.blocks_complex_to_arg_0 = blocks.complex_to_arg(1)
        self.analog_sig_source_x_0_0 = analog.sig_source_c(samp_rate*4, analog.GR_COS_WAVE, 10000, 1, 0)
        self.analog_random_source_x_0_0 = blocks.vector_source_b(map(int, numpy.random.randint(0, const_points, 1000)), True)
        self.VCO = blocks.vco_c(80000*4, -80000*4, 1)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.VCO, 0), (self.blocks_multiply_xx_2, 1))    
        self.connect((self.analog_random_source_x_0_0, 0), (self.digital_chunks_to_symbols_xx_0_0, 0))    
        self.connect((self.analog_sig_source_x_0_0, 0), (self.blocks_multiply_xx_0_0, 1))    
        self.connect((self.blocks_complex_to_arg_0, 0), (self.blocks_multiply_const_vxx_0, 0))    
        self.connect((self.blocks_complex_to_arg_1, 0), (self.iir_filter_xxx_0, 0))    
        self.connect((self.blocks_delay_0, 0), (self.blocks_multiply_conjugate_cc_0, 1))    
        self.connect((self.blocks_delay_1, 0), (self.iir_filter_xxx_1, 0))    
        self.connect((self.blocks_multiply_conjugate_cc_0, 0), (self.blocks_complex_to_arg_0, 0))    
        self.connect((self.blocks_multiply_const_vxx_0, 0), (self.VCO, 0))    
        self.connect((self.blocks_multiply_xx_0, 0), (self.blocks_delay_0, 0))    
        self.connect((self.blocks_multiply_xx_0, 0), (self.blocks_multiply_conjugate_cc_0, 0))    
        self.connect((self.blocks_multiply_xx_0_0, 0), (self.digital_pfb_clock_sync_xxx_0, 0))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_xx_3, 0))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_xx_3, 1))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_xx_3, 2))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_xx_3, 3))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_xx_3, 4))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_xx_3, 5))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_xx_3, 6))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_multiply_xx_3, 7))    
        self.connect((self.blocks_multiply_xx_1, 0), (self.blocks_throttle_0, 0))    
        self.connect((self.blocks_multiply_xx_2, 0), (self.blocks_multiply_xx_1, 0))    
        self.connect((self.blocks_multiply_xx_2, 0), (self.blocks_throttle_0_1, 0))    
        self.connect((self.blocks_multiply_xx_3, 0), (self.blocks_complex_to_arg_1, 0))    
        self.connect((self.blocks_throttle_0, 0), (self.qtgui_const_sink_x_0, 0))    
        self.connect((self.blocks_throttle_0_1, 0), (self.qtgui_const_sink_x_1, 0))    
        self.connect((self.blocks_udp_source_0, 0), (self.blocks_delay_1, 0))    
        self.connect((self.blocks_vco_c_0, 0), (self.blocks_multiply_xx_1, 1))    
        self.connect((self.digital_chunks_to_symbols_xx_0_0, 0), (self.pfb_arb_resampler_xxx_0_0, 0))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_0, 0))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_0, 1))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_0, 2))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_0, 3))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_0, 4))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_0, 5))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_0, 6))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_0, 7))    
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.blocks_multiply_xx_2, 0))    
        self.connect((self.iir_filter_xxx_0, 0), (self.blocks_udp_sink_0, 0))    
        self.connect((self.iir_filter_xxx_1, 0), (self.blocks_vco_c_0, 0))    
        self.connect((self.pfb_arb_resampler_xxx_0_0, 0), (self.blocks_multiply_xx_0_0, 0))    

    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "top_block")
        self.settings.setValue("geometry", self.saveGeometry())
        event.accept()


    def get_sps(self):
        return self.sps

    def set_sps(self, sps):
        self.sps = sps
        self.set_ntaps(11*self.nfilts*self.sps)
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts,self.nfilts*self.sps,1.0,self.excess_bw,self.ntaps))
        self.pfb_arb_resampler_xxx_0_0.set_rate(self.sps)

    def get_nfilts(self):
        return self.nfilts

    def set_nfilts(self, nfilts):
        self.nfilts = nfilts
        self.set_ntaps(11*self.nfilts*self.sps)
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts,self.nfilts*self.sps,1.0,self.excess_bw,self.ntaps))
        self.set_tx_taps(firdes.root_raised_cosine(self.nfilts,self.nfilts,1.0,self.excess_bw,self.ntaps))

    def get_ntaps(self):
        return self.ntaps

    def set_ntaps(self, ntaps):
        self.ntaps = ntaps
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts,self.nfilts*self.sps,1.0,self.excess_bw,self.ntaps))
        self.set_tx_taps(firdes.root_raised_cosine(self.nfilts,self.nfilts,1.0,self.excess_bw,self.ntaps))

    def get_excess_bw(self):
        return self.excess_bw

    def set_excess_bw(self, excess_bw):
        self.excess_bw = excess_bw
        self.set_rx_taps(filter.firdes.root_raised_cosine(self.nfilts,self.nfilts*self.sps,1.0,self.excess_bw,self.ntaps))
        self.set_tx_taps(firdes.root_raised_cosine(self.nfilts,self.nfilts,1.0,self.excess_bw,self.ntaps))

    def get_tx_taps(self):
        return self.tx_taps

    def set_tx_taps(self, tx_taps):
        self.tx_taps = tx_taps
        self.pfb_arb_resampler_xxx_0_0.set_taps((self.tx_taps))

    def get_timing_bw(self):
        return self.timing_bw

    def set_timing_bw(self, timing_bw):
        self.timing_bw = timing_bw
        self.digital_pfb_clock_sync_xxx_0.set_loop_bandwidth(self.timing_bw)

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_0_0.set_sampling_freq(self.samp_rate*4)
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.blocks_throttle_0_1.set_sample_rate(self.samp_rate)

    def get_rx_taps(self):
        return self.rx_taps

    def set_rx_taps(self, rx_taps):
        self.rx_taps = rx_taps
        self.digital_pfb_clock_sync_xxx_0.update_taps((self.rx_taps))

    def get_freq_bw(self):
        return self.freq_bw

    def set_freq_bw(self, freq_bw):
        self.freq_bw = freq_bw

    def get_fll_ntaps(self):
        return self.fll_ntaps

    def set_fll_ntaps(self, fll_ntaps):
        self.fll_ntaps = fll_ntaps

    def get_const_points(self):
        return self.const_points

    def set_const_points(self, const_points):
        self.const_points = const_points


def main(top_block_cls=top_block, options=None):

    from distutils.version import StrictVersion
    if StrictVersion(Qt.qVersion()) >= StrictVersion("4.5.0"):
        style = gr.prefs().get_string('qtgui', 'style', 'raster')
        Qt.QApplication.setGraphicsSystem(style)
    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()
    tb.start()
    tb.show()

    def quitting():
        tb.stop()
        tb.wait()
    qapp.connect(qapp, Qt.SIGNAL("aboutToQuit()"), quitting)
    qapp.exec_()


if __name__ == '__main__':
    main()
