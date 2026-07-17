package com.gadir.tv.util

import android.text.method.PasswordTransformationMethod
import android.view.View
import android.widget.EditText

object PinInputHelper {
    fun applyMask(input: EditText) {
        input.transformationMethod = AsteriskPasswordTransformationMethod()
    }

    private class AsteriskPasswordTransformationMethod : PasswordTransformationMethod() {
        override fun getTransformation(source: CharSequence, view: View?): CharSequence =
            AsteriskSequence(source)

        private class AsteriskSequence(private val source: CharSequence) : CharSequence {
            override val length: Int get() = source.length
            override fun get(index: Int): Char = '*'
            override fun subSequence(startIndex: Int, endIndex: Int): CharSequence =
                AsteriskSequence(source.subSequence(startIndex, endIndex))
        }
    }
}
