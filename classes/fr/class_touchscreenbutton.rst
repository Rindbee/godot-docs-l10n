:github_url: hide

.. _class_TouchScreenButton:

TouchScreenButton
=================

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Button for touch screen devices for gameplay use.

.. rst-class:: classref-introduction-group

Description
-----------

TouchScreenButton allows you to create on-screen buttons for touch devices. It's intended for gameplay use, such as a unit you have to touch to move. Unlike :ref:`Button<class_Button>`, TouchScreenButton supports multitouch out of the box. Several TouchScreenButtons can be pressed at the same time with touch input.

This node inherits from :ref:`Node2D<class_Node2D>`. Unlike with :ref:`Control<class_Control>` nodes, you cannot set anchors on it. If you want to create menus or user interfaces, you may want to use :ref:`Button<class_Button>` nodes instead. To make button nodes react to touch events, you can enable :ref:`ProjectSettings.input_devices/pointing/emulate_mouse_from_touch<class_ProjectSettings_property_input_devices/pointing/emulate_mouse_from_touch>` in the Project Settings.

You can configure TouchScreenButton to be visible only on touch devices, helping you develop your game both for desktop and mobile devices.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                  | :ref:`action<class_TouchScreenButton_property_action>`                   | ``""``    |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`BitMap<class_BitMap>`                                  | :ref:`bitmask<class_TouchScreenButton_property_bitmask>`                 |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`passby_press<class_TouchScreenButton_property_passby_press>`       | ``false`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Shape2D<class_Shape2D>`                                | :ref:`shape<class_TouchScreenButton_property_shape>`                     |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`shape_centered<class_TouchScreenButton_property_shape_centered>`   | ``true``  |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`shape_visible<class_TouchScreenButton_property_shape_visible>`     | ``true``  |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture_normal<class_TouchScreenButton_property_texture_normal>`   |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture_pressed<class_TouchScreenButton_property_texture_pressed>` |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` | :ref:`visibility_mode<class_TouchScreenButton_property_visibility_mode>` | ``0``     |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_pressed<class_TouchScreenButton_method_is_pressed>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_TouchScreenButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_pressed>`

Émis quand le bouton est pressé.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_signal_released:

.. rst-class:: classref-signal

**released**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_released>`

Émis quand le bouton est relâché.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_TouchScreenButton_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_TouchScreenButton_VisibilityMode>`

.. _class_TouchScreenButton_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

Toujours visible.

.. _class_TouchScreenButton_constant_VISIBILITY_TOUCHSCREEN_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_TOUCHSCREEN_ONLY** = ``1``

Visible que sur les écrans tactiles.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_TouchScreenButton_property_action:

.. rst-class:: classref-property

:ref:`String<class_String>` **action** = ``""`` :ref:`🔗<class_TouchScreenButton_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_action**\ (\ )

L'action du bouton. Les actions peuvent être interceptées avec :ref:`InputEventAction<class_InputEventAction>`.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_bitmask:

.. rst-class:: classref-property

:ref:`BitMap<class_BitMap>` **bitmask** :ref:`🔗<class_TouchScreenButton_property_bitmask>`

.. rst-class:: classref-property-setget

- |void| **set_bitmask**\ (\ value\: :ref:`BitMap<class_BitMap>`\ )
- :ref:`BitMap<class_BitMap>` **get_bitmask**\ (\ )

Le masque binaire du bouton.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_passby_press:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **passby_press** = ``false`` :ref:`🔗<class_TouchScreenButton_property_passby_press>`

.. rst-class:: classref-property-setget

- |void| **set_passby_press**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_passby_press_enabled**\ (\ )

If ``true``, the :ref:`pressed<class_TouchScreenButton_signal_pressed>` and :ref:`released<class_TouchScreenButton_signal_released>` signals are emitted whenever a pressed finger goes in and out of the button, even if the pressure started outside the active area of the button.

\ **Note:** This is a "pass-by" (not "bypass") press mode.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_TouchScreenButton_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

La forme du bouton.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_centered** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_centered>`

.. rst-class:: classref-property-setget

- |void| **set_shape_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_centered**\ (\ )

If ``true``, the button's shape is centered in the provided texture. If no texture is used, this property has no effect.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_visible** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_visible>`

.. rst-class:: classref-property-setget

- |void| **set_shape_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_visible**\ (\ )

If ``true``, the button's shape is visible in the editor.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TouchScreenButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

La texture du bouton pour l'état normal.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TouchScreenButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

La texture du bouton pour l'état appuyé.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_TouchScreenButton_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **get_visibility_mode**\ (\ )

The button's visibility mode.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_TouchScreenButton_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_TouchScreenButton_method_is_pressed>`

Renvoie ``true`` si le bouton est actuellement appuyé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
