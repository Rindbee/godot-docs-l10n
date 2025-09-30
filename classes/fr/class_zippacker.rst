:github_url: hide

.. _class_ZIPPacker:

ZIPPacker
=========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Permet la création de fichiers ZIP.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe implémente un writer qui permet de stocker de multiples blobs dans une archive ZIP. Voir aussi :ref:`ZIPReader<class_ZIPReader>` et :ref:`PCKPacker<class_PCKPacker>`.

::

    # Créer une archive ZIP avec un seul fichier à sa racine.
    func write_zip_file():
        var writer = ZIPPacker.new()
        var err = writer.open("user://archive.zip")
        if err != OK:
            return err
        writer.start_file("hello.txt")
        writer.write_file("Hello World".to_utf8_buffer())
        writer.close_file()

        writer.close()
        return OK

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`compression_level<class_ZIPPacker_property_compression_level>` | ``-1`` |
   +-----------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close<class_ZIPPacker_method_close>`\ (\ )                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`close_file<class_ZIPPacker_method_close_file>`\ (\ )                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`open<class_ZIPPacker_method_open>`\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`start_file<class_ZIPPacker_method_start_file>`\ (\ path\: :ref:`String<class_String>`\ )                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`write_file<class_ZIPPacker_method_write_file>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ZIPPacker_ZipAppend:

.. rst-class:: classref-enumeration

enum **ZipAppend**: :ref:`🔗<enum_ZIPPacker_ZipAppend>`

.. _class_ZIPPacker_constant_APPEND_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATE** = ``0``

Crée une nouvelle archive zip au chemin indiqué.

.. _class_ZIPPacker_constant_APPEND_CREATEAFTER:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_CREATEAFTER** = ``1``

Ajoute une nouvelle archive zip à la fin du fichier existant à l'emplacement donné.

.. _class_ZIPPacker_constant_APPEND_ADDINZIP:

.. rst-class:: classref-enumeration-constant

:ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` **APPEND_ADDINZIP** = ``2``

Ajoute de nouveaux fichiers à l'archive zip existante à l'emplacement donné.

.. rst-class:: classref-item-separator

----

.. _enum_ZIPPacker_CompressionLevel:

.. rst-class:: classref-enumeration

enum **CompressionLevel**: :ref:`🔗<enum_ZIPPacker_CompressionLevel>`

.. _class_ZIPPacker_constant_COMPRESSION_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_DEFAULT** = ``-1``

Commence un fichier avec le niveau de compression Deflate par défaut (``6``). C'est un bon compromis entre la vitesse et la taille du fichier.

.. _class_ZIPPacker_constant_COMPRESSION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_NONE** = ``0``

Commence un fichier sans compression. Ceci est également connu comme le mode de compression "Store" et est la méthode la plus rapide d'empaquetage de fichier dans une archive ZIP. Envisagez d'utiliser ce mode pour les fichiers déjà compressés (comme les fichiers JPEG, PNG, MP3, ou Ogg Vorbis).

.. _class_ZIPPacker_constant_COMPRESSION_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_FAST** = ``1``

Commence un fichier avec le niveau de compression Deflate le plus rapide (``1``). Ceci est rapide à compresser, mais résulte en de plus grandes tailles de fichiers que :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. La vitesse de décompression n'est généralement pas affectée par le niveau de compression choisi.

.. _class_ZIPPacker_constant_COMPRESSION_BEST:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` **COMPRESSION_BEST** = ``9``

Commence un fichier avec le meilleur niveau de compression Deflate (``1``). Ceci est lent à compresser, mais résulte en de plus petites tailles de fichiers que :ref:`COMPRESSION_DEFAULT<class_ZIPPacker_constant_COMPRESSION_DEFAULT>`. La vitesse de décompression n'est généralement pas affectée par le niveau de compression choisi.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ZIPPacker_property_compression_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compression_level** = ``-1`` :ref:`🔗<class_ZIPPacker_property_compression_level>`

.. rst-class:: classref-property-setget

- |void| **set_compression_level**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_compression_level**\ (\ )

Le niveau de compression utilisé lorsque :ref:`start_file()<class_ZIPPacker_method_start_file>` est appelée. Utilisez :ref:`CompressionLevel<enum_ZIPPacker_CompressionLevel>` comme référence.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ZIPPacker_method_close:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close>`

Ferme les ressources sous-jacentes utilisées par cette instance.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_close_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **close_file**\ (\ ) :ref:`🔗<class_ZIPPacker_method_close_file>`

Arrête d'écrire vers un fichier dans l'archive.

Échouera s'il n'y a pas de fichier ouvert.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ path\: :ref:`String<class_String>`, append\: :ref:`ZipAppend<enum_ZIPPacker_ZipAppend>` = 0\ ) :ref:`🔗<class_ZIPPacker_method_open>`

Ouvre un fichier zip pour l'écriture au chemin donné en utilisant le mode d'écriture spécifié.

Cela doit être appelé avant quoi que ce soit d'autre.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_start_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **start_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ZIPPacker_method_start_file>`

Commence à écrire vers un fichier dans l'archive. Seul un fichier peut être écrit à la fois.

Doit être appelée après :ref:`open()<class_ZIPPacker_method_open>`.

.. rst-class:: classref-item-separator

----

.. _class_ZIPPacker_method_write_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **write_file**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ZIPPacker_method_write_file>`

Écrit les données ``data`` données dans le fichier.

Doit être appelée après :ref:`start_file()<class_ZIPPacker_method_start_file>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
