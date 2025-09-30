:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/InputEventMouseButton.xml.

.. _class_InputEventMouseButton:

InputEventMouseButton
=====================

**Hérite de :** :ref:`InputEventMouse<class_InputEventMouse>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Represents a mouse button being pressed or released.

.. rst-class:: classref-introduction-group

Description
-----------

Stores information about mouse click events. See :ref:`Node._input()<class_Node_private_method__input>`.

\ **Note:** On Wear OS devices, rotary input is mapped to :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_UP<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_UP>` and :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_DOWN<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_DOWN>`. This can be changed to :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_LEFT<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_LEFT>` and :ref:`@GlobalScope.MOUSE_BUTTON_WHEEL_RIGHT<class_@GlobalScope_constant_MOUSE_BUTTON_WHEEL_RIGHT>` with the :ref:`ProjectSettings.input_devices/pointing/android/rotary_input_scroll_axis<class_ProjectSettings_property_input_devices/pointing/android/rotary_input_scroll_axis>` setting.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Les coordonnées de la souris <../tutorials/inputs/mouse_and_input_coordinates>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`MouseButton<enum_@GlobalScope_MouseButton>` | :ref:`button_index<class_InputEventMouseButton_property_button_index>` | ``0``     |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`canceled<class_InputEventMouseButton_property_canceled>`         | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`double_click<class_InputEventMouseButton_property_double_click>` | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                         | :ref:`factor<class_InputEventMouseButton_property_factor>`             | ``1.0``   |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                           | :ref:`pressed<class_InputEventMouseButton_property_pressed>`           | ``false`` |
   +---------------------------------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventMouseButton_property_button_index:

.. rst-class:: classref-property

:ref:`MouseButton<enum_@GlobalScope_MouseButton>` **button_index** = ``0`` :ref:`🔗<class_InputEventMouseButton_property_button_index>`

.. rst-class:: classref-property-setget

- |void| **set_button_index**\ (\ value\: :ref:`MouseButton<enum_@GlobalScope_MouseButton>`\ )
- :ref:`MouseButton<enum_@GlobalScope_MouseButton>` **get_button_index**\ (\ )

The mouse button identifier, one of the :ref:`MouseButton<enum_@GlobalScope_MouseButton>` button or button wheel constants.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_canceled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **canceled** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_canceled>`

.. rst-class:: classref-property-setget

- |void| **set_canceled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_canceled**\ (\ )

If ``true``, the mouse button event has been canceled.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_double_click:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_click** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_double_click>`

.. rst-class:: classref-property-setget

- |void| **set_double_click**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_double_click**\ (\ )

Si ``true``, l’état du bouton de la souris est un double-clic.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **factor** = ``1.0`` :ref:`🔗<class_InputEventMouseButton_property_factor>`

.. rst-class:: classref-property-setget

- |void| **set_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_factor**\ (\ )

Le montant (ou delta) de l'événement. Lorsqu'il est utilisé pour les événements de défilement de haute précision, cela indique la quantité de défilement (vertical ou horizontal). Cela n'est supporté que sur certaines plateformes, la sensibilité rapportée varie selon la plateforme. Peut être ``0`` si elle n'est pas supportée.

.. rst-class:: classref-item-separator

----

.. _class_InputEventMouseButton_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventMouseButton_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Si ``true``, le bouton de la souris est appuyé. Si ``false``, le bouton de la souris est relâché.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
