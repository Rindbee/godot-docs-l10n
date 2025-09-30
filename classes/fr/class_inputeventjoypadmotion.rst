:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/InputEventJoypadMotion.xml.

.. _class_InputEventJoypadMotion:

InputEventJoypadMotion
======================

**Hérite de :** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Represents axis motions (such as joystick or analog triggers) from a gamepad.

.. rst-class:: classref-introduction-group

Description
-----------

Stores information about joystick motions. One **InputEventJoypadMotion** represents one axis at a time. For gamepad buttons, see :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------+---------------------------------------------------------------------+---------+
   | :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` | :ref:`axis<class_InputEventJoypadMotion_property_axis>`             | ``0``   |
   +-------------------------------------------+---------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                 | :ref:`axis_value<class_InputEventJoypadMotion_property_axis_value>` | ``0.0`` |
   +-------------------------------------------+---------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventJoypadMotion_property_axis:

.. rst-class:: classref-property

:ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` **axis** = ``0`` :ref:`🔗<class_InputEventJoypadMotion_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>`\ )
- :ref:`JoyAxis<enum_@GlobalScope_JoyAxis>` **get_axis**\ (\ )

Identifiant d'axe.

.. rst-class:: classref-item-separator

----

.. _class_InputEventJoypadMotion_property_axis_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **axis_value** = ``0.0`` :ref:`🔗<class_InputEventJoypadMotion_property_axis_value>`

.. rst-class:: classref-property-setget

- |void| **set_axis_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_axis_value**\ (\ )

Position actuelle du joystick sur l'axe donné. La valeur varie de ``-1.0`` à ``1.0``. Une valeur de ``0`` signifie que l'axe est dans sa position de repos.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
