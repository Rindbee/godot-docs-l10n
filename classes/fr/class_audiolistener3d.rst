:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/AudioListener3D.xml.

.. _class_AudioListener3D:

AudioListener3D
===============

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Remplace la position d'où les sons sont entendus.

.. rst-class:: classref-introduction-group

Description
-----------

Une fois ajouté à l'arbre de scène et activé en utilisant :ref:`make_current()<class_AudioListener3D_method_make_current>`, ce nœud remplacera la localisation d'où les sons sont entendus. Cela peut être utilisé pour écouter à partir d'un emplacement différent de la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` | :ref:`doppler_tracking<class_AudioListener3D_property_doppler_tracking>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear_current<class_AudioListener3D_method_clear_current>`\ (\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_listener_transform<class_AudioListener3D_method_get_listener_transform>`\ (\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_current<class_AudioListener3D_method_is_current>`\ (\ ) |const|                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`make_current<class_AudioListener3D_method_make_current>`\ (\ )                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_AudioListener3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_AudioListener3D_DopplerTracking>`

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

Désactive la simulation de `l'effet Doppler <https://fr.wikipedia.org/wiki/Effet_Doppler>`__ (par défaut).

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

Simule `l'effet Doppler <https://fr.wikipedia.org/wiki/Effet_Doppler>`__ en suivant la position des objets qui ont changé lors de ``_process``. Les changements dans la vitesse relative de cet auditeur par rapport à ces objets affectent la façon dont l'audio est perçu (changement de la hauteur :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>` de l'audio).

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

Simule `l'effet Doppler <https://fr.wikipedia.org/wiki/Effet_Doppler>`__ en suivant la position des objets qui ont changé lors de ``_process``. Les changements dans la vitesse relative de cet auditeur par rapport à ces objets affectent la façon dont l'audio est perçu (changement de la hauteur :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>` de l'audio).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AudioListener3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_AudioListener3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

If not :ref:`DOPPLER_TRACKING_DISABLED<class_AudioListener3D_constant_DOPPLER_TRACKING_DISABLED>`, this listener will simulate the `Doppler effect <https://en.wikipedia.org/wiki/Doppler_effect>`__ for objects changed in particular ``_process`` methods.

\ **Note:** The Doppler effect will only be heard on :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`\ s if :ref:`AudioStreamPlayer3D.doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` is not set to :ref:`AudioStreamPlayer3D.DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioListener3D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener3D_method_clear_current>`

Désactive l'écouteur pour utiliser à la place celui de la caméra actuelle.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_get_listener_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_listener_transform**\ (\ ) |const| :ref:`🔗<class_AudioListener3D_method_get_listener_transform>`

Renvoie le :ref:`Transform3D<class_Transform3D>` global orthonormalisé de l'auditeur.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener3D_method_is_current>`

Renvoie ``true`` si l'auditeur a été rendu courant en utilisant :ref:`make_current()<class_AudioListener3D_method_make_current>`, ``false`` sinon.

\ **Note :** Il peut y avoir plus d'un AudioListener3D marqué comme "current" (courant) dans l'arbre de scène, mais seulement celui qui a été rendu courant en dernier sera utilisé.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener3D_method_make_current>`

Active cet écouteur. Cela va remplacer celui de la caméra actuelle.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
