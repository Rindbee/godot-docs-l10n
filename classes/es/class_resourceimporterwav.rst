:github_url: hide

.. _class_ResourceImporterWAV:

ResourceImporterWAV
===================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un archivo de audio WAV para su reproducción.

.. rst-class:: classref-introduction-group

Descripción
----------------------

WAV es un formato sin comprimir, que puede proporcionar mayor calidad en comparación con Ogg Vorbis y MP3. También tiene el costo de CPU más bajo para decodificar. Esto significa que se pueden reproducir grandes cantidades de sonidos WAV al mismo tiempo, incluso en dispositivos de gama baja.

De forma predeterminada, Godot importa archivos WAV utilizando la compresión con pérdida Quite OK Audio. Puedes cambiar esto configurando la propiedad :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importar muestras de audio <../tutorials/assets_pipeline/importing_audio_samples>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterWAV_property_compress/mode>`         | ``2``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`     | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`         | ``-1``    |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>`       | ``0``     |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`edit/trim<class_ResourceImporterWAV_property_edit/trim>`                 | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/8_bit<class_ResourceImporterWAV_property_force/8_bit>`             | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>`       | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>` | ``44100`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`force/mono<class_ResourceImporterWAV_property_force/mono>`               | ``false`` |
   +---------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterWAV_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``2`` :ref:`🔗<class_ResourceImporterWAV_property_compress/mode>`

El modo de compresión a utilizar al importar.

- **PCM (Sin comprimir):** Importa datos de audio sin ninguna forma de compresión, preservando la mayor calidad posible. Tiene el menor costo de CPU, pero el mayor uso de memoria.

- **IMA ADPCM:** Aplica una compresión rápida con pérdida durante la importación, disminuyendo notablemente la calidad, pero con un bajo costo de CPU y uso de memoria. No soporta la búsqueda y solo se soporta el modo de bucle Forward.

- **\ `Quite OK Audio <https://qoaformat.org/>`__:** También aplica compresión con pérdida al importar, teniendo un costo de CPU ligeramente superior al de IMA ADPCM, pero una calidad mucho mayor y el menor uso de memoria.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_begin:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_begin** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_begin>`

El punto de inicio del bucle a usar cuando :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` es **Forward**, **Ping-Pong** o **Backward**. Esto se establece en muestras después del comienzo del archivo de audio.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_end:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_end** = ``-1`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_end>`

El punto final del bucle a usar cuando :ref:`edit/loop_mode<class_ResourceImporterWAV_property_edit/loop_mode>` es **Forward**, **Ping-Pong** o **Backward**. Esto se establece en muestras después del comienzo del archivo de audio. Un valor de ``-1`` usa el final del archivo de audio como el punto final del bucle.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/loop_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **edit/loop_mode** = ``0`` :ref:`🔗<class_ResourceImporterWAV_property_edit/loop_mode>`

Controla cómo se debe repetir el audio.

- **Detectar desde WAV:** Utiliza la información de bucle de los metadatos WAV.

- **Deshabilitado:** No repetir el audio, incluso si los metadatos indican que la reproducción del archivo debe repetirse.

- **Adelante:** Bucle de audio estándar. Reproduce el audio hacia adelante desde el principio hasta :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, luego regresa a :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>` y se repite.

- **Ping-Pong:** Reproduce el audio hacia adelante hasta :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>`, luego hacia atrás hasta :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, repitiendo este ciclo.

- **Atrás:** Reproduce el audio hacia atrás desde :ref:`edit/loop_end<class_ResourceImporterWAV_property_edit/loop_end>` hasta :ref:`edit/loop_begin<class_ResourceImporterWAV_property_edit/loop_begin>`, luego se repite.

\ **Nota:** En :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, la señal :ref:`AudioStreamPlayer.finished<class_AudioStreamPlayer_signal_finished>` no se emitirá para el audio en bucle cuando llegue al final del archivo de audio, ya que el audio seguirá reproduciéndose indefinidamente.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/normalize:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/normalize** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/normalize>`

Si es ``true``, normaliza el volumen del audio para que su volumen máximo sea igual a 0 dB. Cuando está habilitado, la normalización hará que el audio suene más fuerte dependiendo de su volumen máximo original.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_edit/trim:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit/trim** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_edit/trim>`

Si es ``true``, recorta automáticamente el principio y el final del audio si es inferior a -50 dB después de la normalización (véase :ref:`edit/normalize<class_ResourceImporterWAV_property_edit/normalize>`). Esto evita tener archivos con silencio al principio o al final, lo que aumenta su tamaño innecesariamente y agrega latencia al momento en que se reproducen. También se utiliza un período de fundido de entrada/salida de 500 muestras durante el recorte para evitar chasquidos audibles.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/8_bit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/8_bit** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/8_bit>`

Si es ``true``, fuerza al audio importado a usar una cuantificación de 8 bits si el archivo de origen es de 16 bits o superior.

Generalmente no se recomienda habilitar esto, ya que la cuantificación de 8 bits disminuye significativamente la calidad del audio. Si necesitas tamaños de archivo más pequeños, considera usar audio Ogg Vorbis o MP3 en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/max_rate** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate>`

Si se establece en un valor mayor que ``0``, fuerza a que la frecuencia de muestreo del audio se reduzca a un valor inferior o igual al valor especificado en :ref:`force/max_rate_hz<class_ResourceImporterWAV_property_force/max_rate_hz>`.

Esto puede disminuir notablemente el tamaño del archivo en ciertos sonidos, sin afectar la calidad dependiendo del contenido real del sonido. Consulta `Buenas prácticas <../tutorials/assets_pipeline/importing_audio_samples.html#doc-importing-audio-samples-best-practices>`__ para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/max_rate_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **force/max_rate_hz** = ``44100`` :ref:`🔗<class_ResourceImporterWAV_property_force/max_rate_hz>`

La frecuencia a la que se limitará la muestra de audio importada (en Hz). Solo es efectivo si :ref:`force/max_rate<class_ResourceImporterWAV_property_force/max_rate>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterWAV_property_force/mono:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force/mono** = ``false`` :ref:`🔗<class_ResourceImporterWAV_property_force/mono>`

Si es ``true``, fuerza a que el audio importado sea mono si el archivo de origen es estéreo. Esto disminuye el tamaño del archivo en un 50% al fusionar los dos canales en uno.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
