// Code generated by moshi-kotlin-codegen. Do not edit.
package app.loup.geolocation.data

import com.squareup.moshi.JsonAdapter
import com.squareup.moshi.JsonReader
import com.squareup.moshi.JsonWriter
import com.squareup.moshi.Moshi
import com.squareup.moshi.internal.Util
import java.lang.NullPointerException
import kotlin.Boolean
import kotlin.String
import kotlin.Suppress
import kotlin.collections.emptySet
import kotlin.text.buildString

@Suppress("DEPRECATION", "unused", "ClassName", "REDUNDANT_PROJECTION")
class PermissionRequestJsonAdapter(
  moshi: Moshi
) : JsonAdapter<PermissionRequest>() {
  private val options: JsonReader.Options = JsonReader.Options.of("value", "openSettingsIfDenied")

  private val permissionAdapter: JsonAdapter<Permission> = moshi.adapter(Permission::class.java,
      emptySet(), "value")

  private val booleanAdapter: JsonAdapter<Boolean> = moshi.adapter(Boolean::class.java, emptySet(),
      "openSettingsIfDenied")

  override fun toString(): String = buildString(39) {
      append("GeneratedJsonAdapter(").append("PermissionRequest").append(')') }

  override fun fromJson(reader: JsonReader): PermissionRequest {
    var value_: Permission? = null
    var openSettingsIfDenied: Boolean? = null
    reader.beginObject()
    while (reader.hasNext()) {
      when (reader.selectName(options)) {
        0 -> value_ = permissionAdapter.fromJson(reader) ?: throw Util.unexpectedNull("value_",
            "value", reader)
        1 -> openSettingsIfDenied = booleanAdapter.fromJson(reader) ?:
            throw Util.unexpectedNull("openSettingsIfDenied", "openSettingsIfDenied", reader)
        -1 -> {
          // Unknown name, skip it.
          reader.skipName()
          reader.skipValue()
        }
      }
    }
    reader.endObject()
    return PermissionRequest(
        value = value_ ?: throw Util.missingProperty("value_", "value", reader),
        openSettingsIfDenied = openSettingsIfDenied ?:
            throw Util.missingProperty("openSettingsIfDenied", "openSettingsIfDenied", reader)
    )
  }

  override fun toJson(writer: JsonWriter, value: PermissionRequest?) {
    if (value == null) {
      throw NullPointerException("value was null! Wrap in .nullSafe() to write nullable values.")
    }
    writer.beginObject()
    writer.name("value")
    permissionAdapter.toJson(writer, value.value)
    writer.name("openSettingsIfDenied")
    booleanAdapter.toJson(writer, value.openSettingsIfDenied)
    writer.endObject()
  }
}
