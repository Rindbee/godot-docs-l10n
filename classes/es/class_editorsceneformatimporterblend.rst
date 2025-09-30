:github_url: hide

.. _class_EditorSceneFormatImporterBlend:

EditorSceneFormatImporterBlend
==============================

**Hereda:** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importer for Blender's ``.blend`` scene file format.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Imports Blender scenes in the ``.blend`` file format through the glTF 2.0 3D import pipeline. This importer requires Blender to be installed by the user, so that it can be used to export the scene as glTF 2.0.

The location of the Blender binary is set via the :ref:`EditorSettings.filesystem/import/blender/blender_path<class_EditorSettings_property_filesystem/import/blender/blender_path>` setting.

This importer is only used if :ref:`ProjectSettings.filesystem/import/blender/enabled<class_ProjectSettings_property_filesystem/import/blender/enabled>` is enabled, otherwise ``.blend`` files present in the project folder are not imported.

Blend import requires Blender 3.0.

Internally, the EditorSceneFormatImporterBlend uses the Blender glTF "Use Original" mode to reference external textures.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
