   M S B A M L   `   `   `  ����c  _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity  5   	   G CDrinksSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:DrinksSystem.Resources.PublicClass"DrinksSystem.Resources.PublicClass 5   	   K GPanuon.UI.Silver, Version=1.1.3.4, Culture=neutral, PublicKeyToken=nullM8clr-namespace:Panuon.UI.Silver;assembly=Panuon.UI.SilverPanuon.UI.Silver 5   	   @   :DrinksSystem.Views.CheckoutCounterView.ProductDetailWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   XiPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity  5   	   ?controls0clr-namespace:DrinksSystem.Resources.PublicClass  5   	   Apu8clr-namespace:Panuon.UI.Silver;assembly=Panuon.UI.Silver  5   	   -   5          �Name$  window��5   	    � WindowStyle$
 None=�5	   	    � AllowsTransparency . ���	#003E3E3E � WindowStartupLocation$ CenterScreen=�5   	   .   (System.Windows.Interactivity.Interaction   Triggers 5      /   )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .   (System.Windows.Interactivity.TriggerBase   Actions. 5      6   0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadedCommand+5        5   
   $ MouseLeftButtonDown��6   . 5         6$   �� *DragMoveCommand+   CommandParameter 6H   �� 	 �� ElementName$	 window��5      
 � 	Resources
 5       �� Source�� 5   
   $D >pack://application:,,,/Panuon.UI.Silver;component/Control.xaml?�6   %    .��5      � $	��420��6   $	��550��6   .+�5   
   �� $	��420��6   $	��550��6   ���#fbfbfd �� CornerRadius$ 10��6?   $��1q�6Q   ���#dfe4ea J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      	Direction$
 -100Q�63      RenderingBias$ Quality=�6D      ShadowDepth$ 1Q�6\      Color$ 	#FFe6e8ec��6l      Opacity$ 1Q�6~   5      � 5    
    � RowDefinitions 5!      �� 5"      $
��1.3* �6    �� 5#      $��5* �6    �� 5$      $��4* �6    �� 5%      $��2* �6    .+�5'      �  � Cursor$
 Hand��6   .+�5(      �� $��选择口味��6   $��14(�6(   $��Center=�66   ���#2c68ff$��20 0 0 0q�5)       �� 5*      $��0 0 0 1q�6   ���#dfe4ea$��	20 0 20 0q�6I   6^   �� 5+       #  MaterialDesignRaisedLightButton#��[  6    � ToolTip$ CloseWindow��6R   $��50��5,      $��Right=�6(   ���#1d1d1f$��0 0 0 0q�6Z   ��6k   Z� ��6�   Z� ��5-      �� *CloseCommand+��6>   �� $	 window��.��5.      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowClose=�6.   5/      50      51      � 52      $��1��6   .+�53      �� $	��140��6   $	��145��6%   $��1q�62   ���#dfe4ea._�54      �� $	��140��6   $	��145��6(   $
��Fill=�6V   ��65   �� *ProductImage+55      56      57      �� 58      $��2��6   .+�59      ��  �� Orientation$ 
Horizontal=�6   $��	0 10 0 0 q�67   .+�5:      �� $��	温度：��6    $��14(�6+   $��Center=�69   ���#1d1d1f$��20 0 0 0q�5;       	� 5<      -   5         	�Name$ temperature1��5<   "   $��0 0 10 0q�6�   $
 Hand��6�   $��70��6�   $��30��6�   $	��冰��6�   (  "Panuon.UI.Silver.RadioButtonHelper   RadioButtonStyle$ Button=�6�      CheckedBackground �#2c68ff��68   �� *TemperatureClick+��6]   �� $	 temperature1��6  	� 5=      -   5        $ temperature2��5=   "   $��0 0 10 0q�6�   $
 Hand��6�   $��70��6�   $��30��6�   $��少冰��6�   $ Button=�6�    �#2c68ff��68   �� *TemperatureClick+��6]   �� $	 temperature2��6  	� 5>      -   5        $ temperature3��5>   "   $��0 0 10 0q�6�   $
 Hand��6�   $��70��6�   $��30��6�   $��常温��6�   $ Button=�6�    �#2c68ff��68   �� *TemperatureClick+��6]   �� $	 temperature3��6  	� 5?      -   5        $ temperature4��5?   "   $��0 0 10 0q�6�   $
 Hand��6�   $��70��6�   $��30��6�   $	��热��6�   $ Button=�6�    �#2c68ff��68   �� *TemperatureClick+��6]   �� $	 temperature4��6  5@      �� 5B      $ 
Horizontal=�6   $��	0 35 0 0 q�67   .+�5C      �� $��	甜度：��6    $��14(�6+   $��Center=�69   ���#1d1d1f$��20 0 0 0q�5D       	� 5E      -   5        $ 
Sweetness1��5E   "   $��0 0 10 0q�6�   $
 Hand��6�   $��70��6�   $��30��6�   $��全糖��6�   $ Button=�6�    �#2c68ff��67   �� *SweetnessClick+��6Z   �� $	 
Sweetness1��6  	� 5F      -   5        $ 
Sweetness2��5F   "   $��0 0 10 0q�6�   $
 Hand��6�   $��70��6�   $��30��6�   $��7分糖��6�   $ Button=�6�    �#2c68ff��67   �� *SweetnessClick+��6Z   �� $	 
Sweetness2��6  	� 5G      -   5        $ 
Sweetness3��5G   "   $��0 0 10 0q�6�   $
 Hand��6�   $��70��6�   $��30��6�   $��5分糖��6�   $ Button=�6�    �#2c68ff��67   �� *SweetnessClick+��6Z   �� $	 
Sweetness3��6  	� 5H      -	   5        $ 
Sweetness4��5H   "   $��0 0 10 0q�6�   $
 Hand��6�   $��70��6�   $��30��6�   $��3分糖��6�   $ Button=�6�    �#2c68ff��67   �� *SweetnessClick+��6Z   �� $	 
Sweetness4��6  5I      �� 5L      $ 
Horizontal=�6   $��	0 35 0 0 q�66   .+�5M      �� $��	数量：��6    $��14(�6+   $��Center=�69   ���#1d1d1f$��20 0 0 0q�5N       �� 5O      $��10 0 0 0q�6   $��30��60   $��30��6<   $��-��6G   #  Panuon.UI.Silver.ButtonHelper   
ClickStyle$
 Sink=�6}   ���#fbfbfd���#a4b0be$
 Hand��5P   n   $��16(�5Q      $
��Bold"�6-      WaitingContent 5O   S   Z�    
HoverBrush 5P   3   Z� ��5Q   ?   �� *ReduceQuantityCommand+�� 5R      $��40��6   $��30��6)    �� TextAlignment$ Center=�65   $��0q�6L   ���#1d1d1f��6m   �� *
Quantity+  �� Mode$  TwoWay=�6�   �� 5S      $��30��6   $��30��6*   $��+��65   $
 Sink=�6k   ���#fbfbfd���#a4b0be$
 Hand��5T   n   $��14(�5U      $
��Bold"�6,    5S   A   Z�  5T   3   Z� ��5U   >   �� *PlusQuantityCommand+5V      5W      � 5X      $��3��6   .+�5Y      �� $	��100��6   $��35��6%   ���#2c68ff # MaterialDesignFlatLightBgButton#��[ 6F   $��添加��5Z      ���#f5f5f7��6;   �� *AddProductCommand+��6b   �� $	 window��5[      5\      5]      5^      