CDF      
      lsmlon        lsmlat        nglcec     
   nglcecp1      numurbl       nlevurb       numrad        nchar         nlevsoi    
   time       lsmpft        natpft        cft          5   Conventions       NCAR-CSM   History_Log       created on: 12-14-17 12:17:03      Logname       sacks      Host      	cheyenne2      Source        Community Land Model: CLM4     Version       �$HeadURL: https://svn-ccsm-models.cgd.ucar.edu/clm2/branches/always_glcmec2/components/clm/tools/mksurfdata_map/src/mkfileMod.F90 $    Revision_Id       5$Id: mkfileMod.F90 88008 2017-12-14 18:01:35Z sacks $      Compiler_Optimized        TRUE   no_inlandwet      TRUE   nglcec           
   Input_grid_dataset        ;map_0.25x0.25_MODIS_to_1x1_brazil_nomask_aave_da_c170321.nc    Input_gridtype        global     VOC_EF_raw_data_file_name         (mksrf_vocef_0.5x0.5_simyr2000.c110531.nc   Inland_lake_raw_data_file_name        3mksrf_LakePnDepth_3x3min_simyr2004_csplk_c151015.nc    !Inland_wetland_raw_data_file_name         mksrf_lanwat.050425.nc     Glacier_raw_data_file_name        )mksrf_glacier_3x3min_simyr2000.c120926.nc      !Glacier_region_raw_data_file_name         .mksrf_GlacierRegion_10x10min_nomask_c170616.nc     #Urban_Topography_raw_data_file_name       mksrf_topo.10min.c080912.nc    Urban_raw_data_file_name      *mksrf_urban_0.05x0.05_simyr2000.c120621.nc     Lai_raw_data_file_name        %mksrf_lai_78pfts_simyr2005.c170413.nc      agfirepkmon_raw_data_file_name        ,mksrf_abm_0.5x0.5_AVHRR_simyr2000.c130201.nc   gdp_raw_data_file_name        ,mksrf_gdp_0.5x0.5_AVHRR_simyr2000.c130228.nc   peatland_raw_data_file_name       .mksrf_peatf_0.5x0.5_AVHRR_simyr2000.c130228.nc     soildepth_raw_data_file_name      7mksf_soilthk_5x5min_ORNL-Soil_simyr1900-2015_c170630.nc    #topography_stats_raw_data_file_name       Imksrf_topostats_1km-merge-10min_HYDRO1K-merge-nomask_simyr2000.c130402.nc      vic_raw_data_file_name        ,mksrf_vic_0.9x1.25_GRDC_simyr2000.c130307.nc   ch4_params_raw_data_file_name         7mksrf_ch4inversion_360x720_cruncep_simyr2000.c130322.nc    map_pft_file_name         ;map_0.25x0.25_MODIS_to_1x1_brazil_nomask_aave_da_c170321.nc    map_lakwat_file       =map_3x3min_MODIS-wCsp_to_1x1_brazil_nomask_aave_da_c160425.nc      map_wetlnd_file       9map_0.5x0.5_AVHRR_to_1x1_brazil_nomask_aave_da_c120717.nc      map_glacier_file      @map_3x3min_GLOBE-Gardner_to_1x1_brazil_nomask_aave_da_c120927.nc   map_glacier_region_file       ;map_10x10min_nomask_to_1x1_brazil_nomask_aave_da_c120717.nc    map_soil_texture_file         <map_5x5min_IGBP-GSDP_to_1x1_brazil_nomask_aave_da_c120717.nc   map_soil_color_file       ;map_0.25x0.25_MODIS_to_1x1_brazil_nomask_aave_da_c170321.nc    map_soil_organic_file         =map_5x5min_ISRIC-WISE_to_1x1_brazil_nomask_aave_da_c120717.nc      map_urban_file        ?map_3x3min_LandScan2004_to_1x1_brazil_nomask_aave_da_c121114.nc    map_fmax_file         7map_3x3min_USGS_to_1x1_brazil_nomask_aave_da_c120927.nc    map_VOC_EF_file       9map_0.5x0.5_AVHRR_to_1x1_brazil_nomask_aave_da_c120717.nc      map_harvest_file      ;map_0.25x0.25_MODIS_to_1x1_brazil_nomask_aave_da_c170321.nc    map_lai_sai_file      ;map_0.25x0.25_MODIS_to_1x1_brazil_nomask_aave_da_c170321.nc    map_urban_topography_file         ;map_10x10min_nomask_to_1x1_brazil_nomask_aave_da_c120717.nc    map_agfirepkmon_file      9map_0.5x0.5_AVHRR_to_1x1_brazil_nomask_aave_da_c120717.nc      map_gdp_file      9map_0.5x0.5_AVHRR_to_1x1_brazil_nomask_aave_da_c120717.nc      map_peatland_file         9map_0.5x0.5_AVHRR_to_1x1_brazil_nomask_aave_da_c120717.nc      map_soildepth_file        <map_5x5min_ORNL-Soil_to_1x1_brazil_nomask_aave_da_c170706.nc   map_topography_stats_file         Pmap_1km-merge-10min_HYDRO1K-merge-nomask_to_1x1_brazil_nomask_aave_da_c130403.nc   map_vic_file      9map_0.9x1.25_GRDC_to_1x1_brazil_nomask_aave_da_c130309.nc      map_ch4_params_file       ;map_360x720_cruncep_to_1x1_brazil_nomask_aave_da_c130326.nc    Soil_texture_raw_data_file_name       mksrf_soitex.10level.c010119.nc    Soil_color_raw_data_file_name         *mksrf_soilcolor_CMIP6_simyr2005.c170623.nc     Fmax_raw_data_file_name       !mksrf_fmax_3x3min_USGS_c120911.nc      !Organic_matter_raw_data_file_name         >mksrf_organic_10level_5x5min_ISRIC-WISE-NCSCD_nlev7_c120830.nc     !Vegetation_type_raw_data_filename         ,mksrf_landuse_histclm50_LUH2_2000.c170629.nc      [   mxsoil_color             	long_name         maximum numbers of soil colors     units         unitless            B(   
SOIL_COLOR                     	long_name         
soil color     units         unitless            B,   PCT_SAND                      	long_name         percent sand   units         unitless      P      B0   PCT_CLAY                      	long_name         percent clay   units         unitless      P      B�   ORGANIC                       	long_name         %organic matter density at soil levels      units         .kg/m3 (assumed carbon content 0.58 gC per gOM)        P      B�   FMAX                   	long_name         !maximum fractional saturated area      units         unitless            C    natpft                 	long_name         indices of natural PFTs    units         index         <      C(   cft                	long_name         indices of CFTs    units         index               Cd   LANDFRAC_PFT                   	long_name         land fraction from pft dataset     units         unitless            Cl   PFTDATA_MASK                   	long_name         :land mask from pft dataset, indicative of real/fake points     units         unitless            Ct   
PCT_NATVEG                     	long_name         )total percent natural vegetation landunit      units         unitless            Cx   PCT_CROP                   	long_name         total percent crop landunit    units         unitless            C�   PCT_NAT_PFT                       	long_name         Ipercent plant functional type on the natural veg landunit (% of landunit)      units         unitless      x      C�   PCT_CFT                       	long_name         Apercent crop functional type on the crop landunit (% of landunit)      units         unitless            D    MONTHLY_LAI       	   
                	long_name         monthly leaf area index    units         unitless      �      L�   MONTHLY_SAI       	   
                	long_name         monthly stem area index    units         unitless      �      Mp   MONTHLY_HEIGHT_TOP        	   
                	long_name         monthly height top     units         meters        �      M�   MONTHLY_HEIGHT_BOT        	   
                	long_name         monthly height bottom      units         meters        �      N�   time      	         	long_name         Calendar month     units         month               O   AREA                   	long_name         area   units         km^2            D   LONGXY                     	long_name         	longitude      units         degrees east            D   LATIXY                     	long_name         latitude   units         degrees north               D    EF1_BTR                    	long_name         EF btr (isoprene)      units         unitless            D(   EF1_FET                    	long_name         EF fet (isoprene)      units         unitless            D0   EF1_FDT                    	long_name         EF fdt (isoprene)      units         unitless            D8   EF1_SHR                    	long_name         EF shr (isoprene)      units         unitless            D@   EF1_GRS                    	long_name         EF grs (isoprene)      units         unitless            DH   EF1_CRP                    	long_name         EF crp (isoprene)      units         unitless            DP   
CANYON_HWR                        	long_name         canyon height to width ratio   units         unitless            DX   
EM_IMPROAD                        	long_name         emissivity of impervious road      units         unitless            Dp   
EM_PERROAD                        	long_name         emissivity of pervious road    units         unitless            D�   EM_ROOF                       	long_name         emissivity of roof     units         unitless            D�   EM_WALL                       	long_name         emissivity of wall     units         unitless            D�   HT_ROOF                       	long_name         height of roof     units         meters              D�   
THICK_ROOF                        	long_name         thickness of roof      units         meters              D�   
THICK_WALL                        	long_name         thickness of wall      units         meters              E    T_BUILDING_MIN                        	long_name         %minimum interior building temperature      units         K               E   WIND_HGT_CANYON                       	long_name         height of wind in canyon   units         meters              E0   WTLUNIT_ROOF                      	long_name         fraction of roof   units         unitless            EH   WTROAD_PERV                       	long_name         fraction of pervious road      units         unitless            E`   ALB_IMPROAD_DIR                          	long_name          direct albedo of impervious road   units         unitless      0      Ex   ALB_IMPROAD_DIF                          	long_name         !diffuse albedo of impervious road      units         unitless      0      E�   ALB_PERROAD_DIR                          	long_name         direct albedo of pervious road     units         unitless      0      E�   ALB_PERROAD_DIF                          	long_name         diffuse albedo of pervious road    units         unitless      0      F   ALB_ROOF_DIR                         	long_name         direct albedo of roof      units         unitless      0      F8   ALB_ROOF_DIF                         	long_name         diffuse albedo of roof     units         unitless      0      Fh   ALB_WALL_DIR                         	long_name         direct albedo of wall      units         unitless      0      F�   ALB_WALL_DIF                         	long_name         diffuse albedo of wall     units         unitless      0      F�   TK_ROOF                          	long_name         thermal conductivity of roof   units         W/m*K         x      F�   TK_WALL                          	long_name         thermal conductivity of wall   units         W/m*K         x      Gp   
TK_IMPROAD                           	long_name         'thermal conductivity of impervious road    units         W/m*K         x      G�   CV_ROOF                          	long_name          volumetric heat capacity of roof   units         J/m^3*K       x      H`   CV_WALL                          	long_name          volumetric heat capacity of wall   units         J/m^3*K       x      H�   
CV_IMPROAD                           	long_name         +volumetric heat capacity of impervious road    units         J/m^3*K       x      IP   NLEV_IMPROAD                      	long_name          number of impervious road layers   units         unitless            I�   peatf                      	long_name         peatland fraction      units         unitless            I�   zbedrock                   	long_name         
soil depth     units         m               I�   abm                    	long_name         agricultural fire peak month   units         unitless            I�   gdp                    	long_name         gdp    units         unitless            I�   SLOPE                      	long_name         mean topographic slope     units         degrees             I�   STD_ELEV                   	long_name         standard deviation of elevation    units         m               I�   binfl                      	long_name         <VIC b parameter for the Variable Infiltration Capacity Curve   units         unitless            J    Ws                     	long_name         #VIC Ws parameter for the ARNO curve    units         unitless            J   Dsmax                      	long_name         &VIC Dsmax parameter for the ARNO curve     units         mm/day              J   Ds                     	long_name         #VIC Ds parameter for the ARNO curve    units         unitless            J   	LAKEDEPTH                      	long_name         
lake depth     units         m               J    F0                     	long_name         *maximum gridcell fractional inundated area     units         unitless            J(   P3                     	long_name         ,coefficient for qflx_surf_lag for finundated   units         s/mm            J0   ZWT0                   	long_name         decay factor for finundated    units         m               J8   PCT_WETLAND                    	long_name         percent wetland    units         unitless            J@   PCT_LAKE                   	long_name         percent lake   units         unitless            JH   PCT_GLACIER                    	long_name         percent glacier    units         unitless            JP   GLACIER_REGION                     	long_name         glacier region ID      units         unitless            JX   GLC_MEC                	long_name         Glacier elevation class    units         m         X      J\   PCT_GLC_MEC                       	long_name         @percent glacier for each glacier elevation class (% of landunit)   units         unitless      P      J�   PCT_GLC_MEC_GIC                       	long_name         Vpercent smaller glaciers and ice caps for each glacier elevation class (% of landunit)     units         unitless      P      K   PCT_GLC_MEC_ICESHEET                      	long_name         Bpercent ice sheet for each glacier elevation class (% of landunit)     units         unitless      P      KT   PCT_GLC_GIC                    	long_name         )percent ice caps/glaciers (% of landunit)      units         unitless            K�   PCT_GLC_ICESHEET                   	long_name         !percent ice sheet (% of landunit)      units         unitless            K�   TOPO_GLC_MEC                      	long_name         +mean elevation on glacier elevation classes    units         m         P      K�   	PCT_URBAN                         	long_name         #percent urban for each density type    units         unitless            L   URBAN_REGION_ID                    	long_name         urban region ID    units         unitless            L   CONST_HARVEST_VH1                      	long_name         harvest from primary forest    units         gC/m2/yr            L    CONST_HARVEST_VH2                      	long_name         harvest from primary non-forest    units         gC/m2/yr            L(   CONST_HARVEST_SH1                      	long_name         $harvest from secondary mature-forest   units         gC/m2/yr            L0   CONST_HARVEST_SH2                      	long_name         #harvest from secondary young-forest    units         gC/m2/yr            L8   CONST_HARVEST_SH3                      	long_name         !harvest from secondary non-forest      units         gC/m2/yr            L@   CONST_GRAZING                      	long_name         grazing of herbacous pfts      units         gC/m2/yr            LH   CONST_FERTNITRO_CFT                       	long_name         !nitrogen fertilizer for each crop      units         gN/m2/yr            LP   UNREPRESENTED_PFT_LULCC                       	long_name         )unrepresented PFT gross LULCC transitions      units         unitless      x      L`   UNREPRESENTED_CFT_LULCC                       	long_name         *unrepresented crop gross LULCC transitions     units         unitless            L�      @G      @G      @F      @E�     @D�     @C�     @B�     @B�     @D      @F      @A�     @A�     @B�     @C�     @E      @F      @G      @F�     @D�     @E      @99Y�m�@9�a�tP�@6a��@2sK�V�@-
�'1��@&��_a�,@"���j@Xbq�                ?�e �1�                               	   
                  ?�        @X�2S��t?�f�2��                                @X/�m��p        ?BSG�/��                                                        @
�� @X������        @���s�G�@p�T`�d�@D ��@�@�	��[@��9AxP@��    @�M�j��@w�    @`g=t��@33@   ?����   ?�33@   ?�(��   ?��`   ?��`   ?�ff`   ?�ff`   ?�ff`   ?����   ?��    ?��   ?��/    ?��`   ?��   @^      @D      @.      ?����   ?�ff`   ?��G�   ?�Q�   ?Ӝ�   ?��d    @r      @q�     @q�     @N      @4      @      ?�ff`   ?陙�   ?陙�   ?�UU`   ?�      ?�      ?�p��   ?���    ?���    ?�p��   ?���    ?���    ?�p��   ?���    ?���    ?�p��   ?���    ?���    ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�z�@   ?�Q�   ?��    ?�
=�   ?�Q�   ?��    ?�
=�   ?�Q�   ?��    ?�
=�   ?�Q�   ?��    ?�
=�   ?ə��   ?�;d`   ?�p��   ?ə��   ?�;d`   ?�p��   ?ə��   ?�;d`   ?�p��   ?ə��   ?�;d`   ?�p��   ?�W�   ?�B�`   ?�Y�    ?�W�   ?�B�`   ?�Y�    ?�W�   ?�B�`   ?�Y�    ?�W�   ?�B�`   ?�Y�    ?�W�   ?�B�`   ?�Y�    ?�'��   ?���   ?���   ?�'��   ?���   ?���   ?�'��   ?���   ?���   ?�'��   ?���   ?���   ?�'��   ?���   ?���   ?�ff`   ?��Q�   ?��Q�   ?��    ?��    ?��    ?�
=�                                                                   A!l�    A#���   A*Q��   A!l�    A#���   A*Q��   A!l�    A#���   A*Q��   A!l�    A#���   A*Q��   A!l�    A#���   A*Q��   A0xb�   A-9��   A+u�`   A0xb�   A-9��   A+u�`   A0xb�   A-9��   A+u�`   A0xb�   A-9��   A+u�`   A0xb�   A-9��   A+u�`   A@�    A?p��   A?p��   A;�    A: ��   A: ��   A7��                                                                                     ?��t�y�s   @�_���?��g~�@VwMW�m�?�^[�ۋ?����@4r݅c�?����   @#�]�ƶ?�z�G�{@$      ?�z�G�{                                    @i      @y      @��     @�@     @�P     @�      @�@     @��     @�p     @È     @Y                                                                              @Y                                                                                                                                                              @Y              @Y      @r�     @�0     @��     @��     @��     @�      @��     @�|     @�X                                @O��tq��        ?�ٛF#��                �Ç�                                                                                                                                                                    ?�k�*(�?���  ?�Q�  @-����L?�{���:?���4>?���G�G�?�x��   ?��ʩ���?��w6h]D?����  ?�0�   ?��.ϩ�n@6��۸@���Ğ@���Ğ        ?��DI�?���   ?���  ?�$(~/�?˼K���@?�9���`?���:�w?�X�@  ?��8�U�?�Q��+��?�Gw@  ?���   ?���n@=#?�J�!��?����NX?����NX        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?��X�z?���  ?þ�@  @iI�Umi?�]!,S;|?�v߆_�?�e�1���?�   ?îfS�F?�K��#�p?�`�@  ?Ǯ��   ?�E��jX@`M/���@��/�o@��/�o        ?�>g��"�?��f   ?�N>`  ?�A��6�?�38�O�?�7J�?�fBN��?�2��  ?���?��8?�Q�$��?��m�  ?��l`  ?��p�.r�?�`T��F�?��Z�qm,?��Z�qm,        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?�:��r��?�%    ?�O%   @W��B>?���1���?�hU���@?��b�n ?�4h   ?Ȇ�Jq�}?�u�-�?�\y@  ?Ķs@  ?ۯ���y!@�wbkWC@���P�@���P�        ?�8��f?�ţ`  ?��ހ  ?되��\�?�ϢVyhT?�0Hն�R?�_�l�?��  ?��Y�?�Q�{ia�?��6`  ?��:   ?���0n�?�N
WB)?���{�0?���{�0        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?�/�QӺY?ѫ   ?���   @��q���?�c�S�ϛ?�6kQ��V?��	�e}?���   ?�N��Tv�?�3��&?��C�  ?�1m   ?���O@
��]��@�[H�(@�[H�(        ?�c߱S?�� �  ?��   ?녰��\?�<hc?��s��?��I{b�?� �@  ?����fLL?�Q��?�=�   ?���    ?�,��؎b?�I��ń?����o�b?����o�b        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?�F�s�A?Ү�  ?�p�    @Vd��Z�?���<�~?�w]0��?�����?�-u�  ?���Sj|?ܑ�Y��b?����  ?��$   ?��r\@�腰��@�IUx�@�IUx�        ?��Hbo;?��m@  ?��:�   ?����e?�37d�O�?��i�N�N?�by`?����  ?�I(�E��?��]t�!?�E��  ?�I�?���?���h¿)?�I\��	?����,6?����,6        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?�CC2��?���  ?���`  @%��M�?�l����?�����{h?�F��>�Q?y!��  ?���"�O?�Yt����?��%�  ?�7�  ?�m�:�@��B@tP��	@tP��	        ?�����!�?�4�   ?��1�   ?놏��H?�␧M�>?�����?Ȳ_PL> ?��%   ?�M�]���?�Q�+f)?�?c�  ?�,�`  ?�J�$��?�c���A�?���J�?���J�        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?�f�?�j�@  ?����  @�-6��?�k����?�	n`�"?�/�U��?v��@  ?ŭ��e~�?�z���d�?��f`  ?�)-@  ?�R�vl2N@
+�t�� @Y�R���@Y�R���        ?��5|3?��A�  ?��   ?��^?�[��?�WZ2�?�X5���R?��>�  ?�v6r�_?�Q�<���?��@  ?��m�  ?���;S�?�M�[l�%?�*�����?�*�����        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?�c�T��?�Y:   ?���  @d�.�v>?���VH�?�����q�?��X?n�   ?�{��x�n?�+mk��?�^L   ?�=/`  ?��-�|�@��e���@�g���@@�g���@        ?�(���T�?��C�  ?��@�  ?� mL�1?��Z��3?�҃�C�?�� k+�A?����  ?�h���K�?�4��[�?� �`  ?��/�  ?�����?�լ��ʍ?�K�-6��?�K�-6��        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?���:��?���@  ?�l7   @����s?�p����?�n�ǟ_?݊����?q�,�  ?»��S�a?�J[��;�?�Q�  ?�V @  ?�xu~3�@���u]@�,;�@�,;�        ?��	ID�G?�;o�  ?�+�@  ?딞����?�K(�yJ?�U��fČ?�s����?�U�   ?��y�	#?�Q��?��
�  ?���  ?��l3*��?�ҬCԴ?�Q~F?�Q~F        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���   	        ?��p��W?бi`  ?�to�  @�?Zk�?���J�?��X����?�ol�s?tu�  ?�,+Q?�EĨٌ?�
n�  ?��]�  ?�X��4�@0H�X��@��q��o@��q��o        ?�Q2�^+�?��L�  ?��u�  ?�5/&)|�?���HB<?�?�� iM?�1��n~�?�T-�  ?��B�2.?�Q��?��:@  ?�{��  ?�T�9-�?�W�Q�h?�.�(?�.�(        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���   
        ?�)(��A?�ϯ�  ?�K@  @i�u��??��:e�p?�����&�?������?���  ?���i���?�g�:~�?�`�  ?�e<   ?�\�]�S�@[����F@b�y@b�y        ?�w^��7?��*�  ?���@  ?�@��5/?̕54�4?��n��?�
4
���?�TI�  ?�/��a?�٣�?1?����  ?�z_�  ?�F�Н�?��D޲`?��tK>��?��tK>��        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���           ?� ��?�[�@  ?Īx`   @]>�K?�B)�[~�?��<z�?榺����?ȭ��  ?��Ӗ�%?������?�D+    ?��_�  ?��E�e�>@ڲ	SU�@�w���2@�w���2        ?��8�l�?��D`  ?���@  ?먀F&�?̩U��]?��vu1�?��N֫>?�[%�  ?��}w�?���!�l?�G~   ?��S����?���7��?�Kf�zgo?���j�?���j�        @%e�V�@)   @%��  @@b#�cN�@7����ӱ@'�~Q}�@,���6@-�1   ?�     ?�     ?�     ?�     ?�     ?�     ?�     ?�             @e�V�@   @��  ?��J/���?��쎔@Io�ZŽ@ �Ǻ�#@!��  ?�������?����ĵ?����  ?�z�   ?�z�N�"�?�z�O�?�z�O���?�z�O���   