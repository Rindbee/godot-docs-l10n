:github_url: hide

.. _class_PackedDataContainer:

PackedDataContainer
===================

**Obsolète :** Use :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>` or :ref:`FileAccess.store_var()<class_FileAccess_method_store_var>` instead. To enable data compression, use :ref:`PackedByteArray.compress()<class_PackedByteArray_method_compress>` or :ref:`FileAccess.open_compressed()<class_FileAccess_method_open_compressed>`.

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Compacte et sérialise efficacement les :ref:`Array<class_Array>` ou :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-introduction-group

Description
-----------

**PackedDataContainer** peut être utilisé pour stocker efficacement des données à partir de conteneurs non-typés. Les données sont compactées en octets bruts et peuvent être sauvegardées dans un fichier. Seuls :ref:`Array<class_Array>` et :ref:`Dictionary<class_Dictionary>` peuvent être stockés de cette façon.

Vous pouvez récupérer les données en itérant sur le conteneur, qui fonctionnera comme s'il itérait sur les données compactées elles-même. Si le conteneur compacté est un :ref:`Dictionary<class_Dictionary>`, les données peuvent être récupérées par des noms de clés (:ref:`String<class_String>`/:ref:`StringName<class_StringName>` seulement).

::

    var donnees = { "cle": "valeur", "autre_cle": 123, "verrou": Vector2() }
    var compact = PackedDataContainer.new()
    compact.pack(donnees)
    ResourceSaver.save(compact, "donnees_compactes.res")

::

    var conteneur = load("donnees_compactes.res")
    for cle in conteneur:
        print(cle, conteneur[cle])

Affiche :

.. code:: text

    cle valeur
    verrou (0, 0)
    autre_cle 123

Les conteneurs imbriqués seront compactés de façon récursive. Lors de l'itération, ils seront renvoyés en tant que :ref:`PackedDataContainerRef<class_PackedDataContainerRef>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedDataContainer_method_pack>`\ (\ value\: :ref:`Variant<class_Variant>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`size<class_PackedDataContainer_method_size>`\ (\ ) |const|                                |
   +---------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PackedDataContainer_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_PackedDataContainer_method_pack>`

Compacte le conteneur donné en une représentation binaire. La valeur ``value`` doit être soit un :ref:`Array<class_Array>` ou un :ref:`Dictionary<class_Dictionary>`, tout autre type entraînera une erreur de données invalides.

\ **Note :** Les appels subséquents à cette méthode écraseront les données existantes.

.. rst-class:: classref-item-separator

----

.. _class_PackedDataContainer_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedDataContainer_method_size>`

Renvoie la taille du conteneur compacté (voir :ref:`Array.size()<class_Array_method_size>` et :ref:`Dictionary.size()<class_Dictionary_method_size>`).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
