Vim�UnDo� d�9��F����jz�vZ=�wI&��n8˂N��PO   �                  4       4   4   4    a��    _�                     e        ����                                                                                                                                                                                                                                                                                                                                                             a��$     �   d   f   �      '''5��    d                      �                     5�_�                    e        ����                                                                                                                                                                                                                                                                                                                                                             a��$     �   d   f   �      ''5��    d                      �                     5�_�                    e        ����                                                                                                                                                                                                                                                                                                                                                             a��$     �   d   f   �      '5��    d                      �                     5�_�                    s   '    ����                                                                                                                                                                                                                                                                                                                                                             a��8     �   r   t   �      2evstart = obspy.UTCDateTime('2021-06-15T18:06:00')5��    r   &                 �                    5�_�                    t   &    ����                                                                                                                                                                                                                                                                                                                                                             a��;     �   s   u   �      1evstop = obspy.UTCDateTime('2021-06-15T18:09:00')5��    s   %                 �                    5�_�                    s   *    ����                                                                                                                                                                                                                                                                                                                                                             a��>     �   r   t   �      2evstart = obspy.UTCDateTime('2021-06-13T18:06:00')5��    r   (                 �                    5�_�                    s   *    ����                                                                                                                                                                                                                                                                                                                                                             a��G     �   r   t   �      2evstart = obspy.UTCDateTime('2021-06-13T07:06:00')5��    r   )                 �                    5�_�      	              s   -    ����                                                                                                                                                                                                                                                                                                                                                             a��I     �   r   t   �      2evstart = obspy.UTCDateTime('2021-06-13T06:06:00')5��    r   +                 �                    5�_�      
           	   t   )    ����                                                                                                                                                                                                                                                                                                                                                             a��N     �   s   u   �      1evstop = obspy.UTCDateTime('2021-06-13T18:09:00')5��    s   '                 �                    5�_�   	              
   t   ,    ����                                                                                                                                                                                                                                                                                                                                                             a��Q     �   s   u   �      1evstop = obspy.UTCDateTime('2021-06-13T07:09:00')5��    s   *                 �                    5�_�   
                 w   *    ����                                                                                                                                                                                                                                                                                                                                                             a��_     �   v   x   �      Pevent_time = obspy.UTCDateTime('2021-06-15T18:07:25.7') #from earthquake network5��    v   )                 b                    5�_�                    w   -    ����                                                                                                                                                                                                                                                                                                                                                             a��a     �   v   x   �      Pevent_time = obspy.UTCDateTime('2021-06-13T18:07:25.7') #from earthquake network5��    v   +                 d                    �    v   ,                 e                    5�_�                    w   0    ����                                                                                                                                                                                                                                                                                                                                                             a��f     �   v   x   �      Pevent_time = obspy.UTCDateTime('2021-06-13T07:07:25.7') #from earthquake network5��    v   /                 h                    5�_�                    w   5    ����                                                                                                                                                                                                                                                                                                                                                             a��j     �   v   x   �      Pevent_time = obspy.UTCDateTime('2021-06-13T07:04:25.7') #from earthquake network5��    v   1                 j                    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             a��     �   �   �   �    �   �   �   �    5��    �                      �              8       5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             a��     �   �   �   �      7st = obspy.read('./01_data/Assapaat_landslide/*.mseed')5��    �                      �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             a��     �   �   �   �      7st = obspy.read('./01_data/Assapaat_landslide/*.mseed')5��    �                    �                    �    �   '                 �                    �    �   '                 �                    5�_�                    �   ,    ����                                                                                                                                                                                                                                                                                                                                                             a���     �   �   �   �      Gst = obspy.read('./01_data/archive/164/0000Kssapaat_landslide/*.mseed')5��    �   '                 �                    5�_�                    �   -    ����                                                                                                                                                                                                                                                                                                                                                             a���     �   �   �   �      Hst = obspy.read('./01_data/archive/164/0000K/ssapaat_landslide/*.mseed')5��    �   -                  �                     5�_�                    �   B    ����                                                                                                                                                                                                                                                                                                                                                             a��/     �   �   �   �      �            ax.text(0.02, 0.87,trace.stats.network+'.'+stid['0000I']+'.'+trace.stats.location+'.Z', transform=ax.transAxes, color='black', bbox=dict(facecolor='white', edgecolor='black', boxstyle='round, pad=0.5'))5��    �   A                 �                    5�_�                    �   B    ����                                                                                                                                                                                                                                                                                                                                                             a��2     �   �   �   �      �            ax.text(0.02, 0.87,trace.stats.network+'.'+stid['0000I']+'.'+trace.stats.location+'.X', transform=ax.transAxes, color='black', bbox=dict(facecolor='white', edgecolor='black', boxstyle='round, pad=0.5'))5��    �   A                 �                    5�_�                    �   B    ����                                                                                                                                                                                                                                                                                                                                                             a��4     �   �   �   �      �            ax.text(0.02, 0.87,trace.stats.network+'.'+stid['0000I']+'.'+trace.stats.location+'.Y', transform=ax.transAxes, color='black', bbox=dict(facecolor='white', edgecolor='black', boxstyle='round, pad=0.5'))5��    �   A                 �                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             a��K     �   �   �   �      ;        ax1.set_xlim(et_min.datetime, et_max_zoom.datetime)5��    �                     �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             a��M     �   �   �   �      n        ax.set_title('Lowpass filtered, $f_c$ = '+str(f)+' Hz // Calc. traveltimes: 1.756 s (P), 3.031 s (S)')5��    �                     �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             a��P     �   �   �   �      =        ax.axvline(p_arrival.datetime, color='grey', ls='-.')5��    �                     �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             a��R     �   �   �   �      <        ax.axvline(s_arrival.datetime, color='grey', ls=':')5��    �                     �                     5�_�                    �   g    ����                                                                                                                                                                                                                                                                                                                                                             a��_    �   �   �   �      �        plt.savefig('./02_figures/Assapaat_landslide/'+et_min.strftime('%Y%m%d_%H%M%S')+'_'+stid['0000I']+'_'+trace.stats.channel+'_lp'+str(f)+'Hz_arrivals.png', dpi=300)5��    �   f                                     5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             a���     �   �              '''5��    �                      x                     5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             a���     �   �              ''5��    �                      x                     5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             a���    �   �              '5��    �                      x                     5�_�                     �   1    ����                                                                                                                                                                                                                                                                                                                                                             a��)     �   �   �   �      6st = obspy.read('./01_data/archive/164/0000K/*.mseed')5��    �   1                                       5�_�      !               �   1    ����                                                                                                                                                                                                                                                                                                                                                             a��)    �   �   �   �      5st = obspy.read('./01_data/archive/164/0000K/*.msed')5��    �   1                                       5�_�       "           !   �       ����                                                                                                                                                                                                                                                                                                                                                             a��;     �   �   �   �      �        plt.savefig('./02_figures/Assapaat_landslide/'+et_min.strftime('%Y%m%d_%H%M%S')+'_'+stid['0000K']+'_'+trace.stats.channel+'_lp'+str(f)+'Hz_arrivals.png', dpi=300)5��    �                     �                     5�_�   !   #           "   �        ����                                                                                                                                                                                                                                                                                                                                                             a��}     �   �   �   �       for f in np.arange(0.1,0.4,0.1):5��    �                      u                     5�_�   "   $           #   �       ����                                                                                                                                                                                                                                                                                                                                                             a��    �   �   �   �      #for f in np.arange(1,6,1):5��    �                      Y                     5�_�   #   %           $   �   g    ����                                                                                                                                                                                                                                                                                                                                                             a��     �   �   �   �      �        plt.savefig('./02_figures/Assapaat_landslide/'+evstart.strftime('%Y%m%d_%H%M%S')+'_'+stid['0000I']+'_'+trace.stats.channel+'_lp'+str(f)+'Hz.png', dpi=300)5��    �   g                 �                    5�_�   $   &           %   �        ����                                                                                                                                                                                                                                                                                                                                                             a���    �   �   �   �      #        plt.show()5��    �                      �                     5�_�   %   '           &   e        ����                                                                                                                                                                                                                                                                                                                            s           t   1       v   1    a��     �   d   f   �       5��    d                      �                     5�_�   &   (           '   e       ����                                                                                                                                                                                                                                                                                                                            s           t   1       v   1    a��     �   d   f   �      ''5��    d                     �                     5�_�   '   )           (   e       ����                                                                                                                                                                                                                                                                                                                            s           t   1       v   1    a��     �   d   f   �      ''''5��    d                     �                     5�_�   (   *           )   �        ����                                                                                                                                                                                                                                                                                                                            s           t   1       v   1    a��     �   �               5��    �                      y                     5�_�   )   +           *   �       ����                                                                                                                                                                                                                                                                                                                            s           t   1       v   1    a��     �   �              ''5��    �                     {                     5�_�   *   ,           +   �       ����                                                                                                                                                                                                                                                                                                                            s           t   1       v   1    a��   	 �   �              ''''5��    �                     |                     5�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                                                             a�     �         �      def nearest_pow_2(x):5��                          �                     5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                             a�     �         �       5��                          �                     5�_�   -   /           .   e        ����                                                                                                                                                                                                                                                                                                                                                             a�   
 �   d   f   �       5��    d                      �                     5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                             a�>    �         �       5��                          6                     5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                             a    �         �       5��                          O                     5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                                             a�*    �         �      import numpy as np5��                         V                     �                          W                     5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                             a��     �         �      ##5��                          W                     5�_�   2   4           3           ����                                                                                                                                                                                                                                                                                                                                                             a��     �         �      #5��                          W                     5�_�   3               4           ����                                                                                                                                                                                                                                                                                                                                                             a��    �                 5��                          W                     5��