package com.gadir.tv.player

import android.net.Uri
import androidx.media3.datasource.DataSource
import androidx.media3.datasource.DataSpec
import androidx.media3.datasource.TransferListener
import com.gadir.tv.net.PanelHttp
import java.io.IOException

/** Applies gadir.co IP fallback and Host header for ExoPlayer HTTP requests. */
class HostHeaderDataSource(
    private val upstream: DataSource,
) : DataSource {

    override fun addTransferListener(transferListener: TransferListener) {
        upstream.addTransferListener(transferListener)
    }

    override fun open(dataSpec: DataSpec): Long {
        val resolved = PanelHttp.resolve(dataSpec.uri.toString())
        val headers = LinkedHashMap(dataSpec.httpRequestHeaders)
        resolved.hostHeader?.let { headers["Host"] = it }
        val request = DataSpec.Builder()
            .setUri(Uri.parse(resolved.url))
            .setPosition(dataSpec.position)
            .setLength(dataSpec.length)
            .setKey(dataSpec.key)
            .setFlags(dataSpec.flags)
            .setHttpMethod(dataSpec.httpMethod)
            .setHttpBody(dataSpec.httpBody)
            .setHttpRequestHeaders(headers)
            .setCustomData(dataSpec.customData)
            .build()
        return upstream.open(request)
    }

    @Throws(IOException::class)
    override fun read(buffer: ByteArray, offset: Int, length: Int): Int =
        upstream.read(buffer, offset, length)

    override fun getUri(): Uri? = upstream.uri

    override fun close() {
        upstream.close()
    }

    class Factory(
        private val upstream: DataSource.Factory,
    ) : DataSource.Factory {
        override fun createDataSource(): DataSource =
            HostHeaderDataSource(upstream.createDataSource())
    }
}
