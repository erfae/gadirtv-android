.class public Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;
.super Lcom/visualon/OSMPRender/filter/GlFilter;
.source "GlAdaptiveNightvisionES3Filter.java"


# static fields
.field private static DEBLOCK_SHADER:Ljava/lang/String; = "#version 310 es\n        uniform int iTexelWidth;\n        uniform int iTexelHeight;\n        uniform float fDeblockLevel;\n        uniform sampler2D SamplerRGB;\n        layout(rgba8, binding = 5) writeonly uniform mediump image2D outputTex;\n        layout (local_size_x = 8, local_size_y = 8) in;\n\n        const int istep = 8;\n        const int ihstep = 4; // half step\n        const int ialpha = 182, ibeta = 16;\n        const int igamma = ialpha / 4 + 2;\n\n        int idiff(int a, int b) {\n            if (a > b) return a-b;\n            else return b-a;\n        }\n\n        // Deblocks luminance over 8 interger array\n        void ideblockLum(\n                in    int l3, inout int l2, inout int l1, inout int l0,\n                inout int r0, inout int r1, inout int r2, in    int r3) {\n            int ol0 = l0, ol1 = l1, ol2 = l2, or0 = r0, or1 = r1, or2 = r2;\n            if (idiff(l0,r0) < ialpha && idiff(l1,l0) < ibeta && idiff(r1,r0) < ibeta) {\n                if (idiff(l0,r0) < igamma) { // Compare to gamma\n                    if (idiff(l2,l0) < ibeta) { // Left half\n                        ol0 = (l2 + 2*l1 + 2*l0 + 2*r0 + r1 + 4) / 8;\n                        ol1 = (l2 + l1 + l0 + r0 + 2) / 4;\n                        ol2 = (2*l3 + 3*l2 + l1 + l0 + r0 + 4) / 8;\n                    } else {\n                        ol0 = (2*l1 + l0 + r1 + 2) / 4;\n                    } // End of left half\n\n                    if (idiff(r2,r0) < ibeta) { // Right half\n                        or0 = (l1 + 2*l0 + 2*r0 + 2*r1 + r2 + 4) / 8;\n                        or1 = (l0 + r0 + r1 + r2 + 2) / 4;\n                        or2 = (2*r3 + 3*r2 + r1 + r0 + l0 + 4) / 8;\n                    } else {\n                        or0 = (2*r1 + r0 + l1 + 2) / 4;\n                    } // End of right half\n                } else { // Smaller than gamma\n                    ol0 = (2*l1 + l0 + r1+ 2) / 4;\n                    or0 = (2*r1 + r0 + l1+ 2) / 4;\n                } // End if gamma\n            } // End if\n            l0 = ol0; l1 = ol1; l2 = ol2; r0 = or0; r1 = or1; r2 = or2;\n        } // End function ideblockLum\n\n        // Deblocks chroma over 4 integer array\n        void ideblockChr(in    int l1, inout int l0, inout int r0, in    int r1) {\n            if (idiff(l0,r0) < ialpha && idiff(l1,l0) < ibeta && idiff(r1,r0) < ibeta) {\n                int ol0 = (2*l1 + l0 + r1 + 2) / 4;\n                int or0 = (2*r1 + r0 + l0 + 2) / 4;\n                l0 = ol0; r0 = or0;\n            }\n        } // End function ideblockChr\n\n        /**\n         * This buffer contains 16x16 pixels, which are 2x2 hx264 blocks\n         * Only the center 8x8 region is written to output,\n         * other pixels are only input for deblocking\n         * When step size is 8, pixels other than center region are ignored.\n         */\n        int iBufferOY[256]; // Original\n        int iBufferOU[256]; // Original\n        int iBufferOV[256]; // Original\n        int iBufferDY[256]; // Deblocked\n        int iBufferDU[256]; // Deblocked\n        int iBufferDV[256]; // Deblocked\n\n        const int iss = 8; // Step size for DeblockLum. 8 for faster, 4 for finer\n\n        void main() {\n            float fDeblock = clamp(2. * fDeblockLevel, 0., 1.);\n\n            // To process pixels near border,\n            //   this method trys to read and write pixels outside border too\n            int iTWR = iTexelWidth + 8, iTHR = iTexelHeight + 8;\n\n            int x1 = (iTWR * int(gl_GlobalInvocationID.x)) \n                / int(gl_NumWorkGroups.x) / int(gl_WorkGroupSize.x);\n            int x2 = (iTWR * (1+int(gl_GlobalInvocationID.x))) \n                / int(gl_NumWorkGroups.x) / int(gl_WorkGroupSize.x);\n            int y1 = (iTHR * int(gl_GlobalInvocationID.y)) \n                / int(gl_NumWorkGroups.y) / int(gl_WorkGroupSize.y);\n            int y2 = (iTHR * (1+int(gl_GlobalInvocationID.y))) \n                / int(gl_NumWorkGroups.y) / int(gl_WorkGroupSize.y);\n\n            // always deblocking\n            if (true) {\n                // 0. Some parameters regarding to step size\n                // If step size is 8, we can ignore some pixels for speed\n                int d1 = 0, d2 = 16;\n                if (iss == 8) { \n                    d1 = 4; d2 = 12; \n                }\n\n                // 1. Process Y\n                // xs1 : max int that is multiple of step and <= x1\n                int xs1 = istep * (x1 / istep), xs2 = istep * (x2 / istep), \n                     ys1 = istep * (y1 / istep), ys2 = istep * (y2 / istep);\n                // xc, yc: center of deblocking, multiple of step\n                for (int xc = xs1; xc < xs2; xc+=istep) for (int yc = ys1; yc < ys2; yc+=istep) {\n                    // Load Y. Load size depends on step size.\n                    for (int x = d1; x < d2; x++) for (int y = d1; y < d2; y++) {\n    vec3 yuv = 255. * mat3(0.299, -0.16874, 0.5,\n    0.587, -.3313, -.4187,\n    0.114, 0.5, -0.0813) * texelFetch(SamplerRGB, \n                            ivec2(xc + x - 8, yc + y - 8), 0).xyz;\n                        iBufferDY[x + 16*y] = int(yuv.x);\n                        iBufferDU[x + 16*y] = int(yuv.y);\n                        iBufferDV[x + 16*y] = int(yuv.z);\n                    }\n\n                    // Make a copy. Only center region is required.\n                    for (int x = 4; x < 12; x++) for (int y = 4; y < 12; y++) {\n                        int id = x + 16 * y;\n                        iBufferOY[id] = iBufferDY[id];\n                        iBufferOU[id] = iBufferDU[id];\n                        iBufferOV[id] = iBufferDV[id];\n                    }\n\n                    // H edge for Y\n                    for (int x = 4; x < 12; x++) {\n                        for (int yd = d1; yd + 8 <= d2; yd += 4) {\n                        // yd is 4 for step size 8\n                        // yd is 0, 4, 8 for step size 4\n                            ideblockLum( \n                                iBufferDY[x + 16 * (yd    )], iBufferDY[x + 16 * (yd + 1)], \n                                iBufferDY[x + 16 * (yd + 2)], iBufferDY[x + 16 * (yd + 3)], \n                                iBufferDY[x + 16 * (yd + 4)], iBufferDY[x + 16 * (yd + 5)], \n                                iBufferDY[x + 16 * (yd + 6)], iBufferDY[x + 16 * (yd + 7)]  \n                            );\n                        }\n                    }\n                    for (int x = 4; x < 12; x++) {\n                        for (int yd = d1; yd + 8 <= d2; yd += 4) {\n                        // yd is 4 for step size 8\n                        // yd is 0, 4, 8 for step size 4\n                            ideblockLum( \n                                iBufferDU[x + 16 * (yd    )], iBufferDU[x + 16 * (yd + 1)], \n                                iBufferDU[x + 16 * (yd + 2)], iBufferDU[x + 16 * (yd + 3)], \n                                iBufferDU[x + 16 * (yd + 4)], iBufferDU[x + 16 * (yd + 5)], \n                                iBufferDU[x + 16 * (yd + 6)], iBufferDU[x + 16 * (yd + 7)]  \n                            );\n                        }\n                    }\n                    for (int x = 4; x < 12; x++) {\n                        for (int yd = d1; yd + 8 <= d2; yd += 4) {\n                        // yd is 4 for step size 8\n                        // yd is 0, 4, 8 for step size 4\n                            ideblockLum( \n                                iBufferDV[x + 16 * (yd    )], iBufferDV[x + 16 * (yd + 1)], \n                                iBufferDV[x + 16 * (yd + 2)], iBufferDV[x + 16 * (yd + 3)], \n                                iBufferDV[x + 16 * (yd + 4)], iBufferDV[x + 16 * (yd + 5)], \n                                iBufferDV[x + 16 * (yd + 6)], iBufferDV[x + 16 * (yd + 7)]  \n                            );\n                        }\n                    }\n\n                    // V edge for Y\n                    for (int y = 0; y < 8; y++) {\n                        ideblockLum(\n                            iBufferDY[    8*y], iBufferDY[1 + 8*y],\n                            iBufferDY[2 + 8*y], iBufferDY[3 + 8*y],\n                            iBufferDY[4 + 8*y], iBufferDY[5 + 8*y],\n                            iBufferDY[6 + 8*y], iBufferDY[7 + 8*y]);\n                    }\n                    // V edge for Y\n                    for (int y = 0; y < 8; y++) {\n                        ideblockLum(\n                            iBufferDU[    8*y], iBufferDU[1 + 8*y],\n                            iBufferDU[2 + 8*y], iBufferDU[3 + 8*y],\n                            iBufferDU[4 + 8*y], iBufferDU[5 + 8*y],\n                            iBufferDU[6 + 8*y], iBufferDU[7 + 8*y]);\n                    }\n                    // V edge for Y\n                    for (int y = 0; y < 8; y++) {\n                        ideblockLum(\n                            iBufferDV[    8*y], iBufferDV[1 + 8*y],\n                            iBufferDV[2 + 8*y], iBufferDV[3 + 8*y],\n                            iBufferDV[4 + 8*y], iBufferDV[5 + 8*y],\n                            iBufferDV[6 + 8*y], iBufferDV[7 + 8*y]);\n                    }\n\n                    for (int y = 4; y < 12; y++) {\n                        for (int xd = d1; xd + 8 <= d2; xd += 4) {\n                        // xd is 4 for step size 8\n                        // xd is 0, 4, 8 for step size 4\n                            ideblockLum( \n                                iBufferDY[xd     + 16 * y], iBufferDY[xd + 1 + 16 * y], \n                                iBufferDY[xd + 2 + 16 * y], iBufferDY[xd + 3 + 16 * y], \n                                iBufferDY[xd + 4 + 16 * y], iBufferDY[xd + 5 + 16 * y], \n                                iBufferDY[xd + 6 + 16 * y], iBufferDY[xd + 7 + 16 * y]  \n                            );\n                        }\n                    }\n                    for (int y = 4; y < 12; y++) {\n                        for (int xd = d1; xd + 8 <= d2; xd += 4) {\n                        // xd is 4 for step size 8\n                        // xd is 0, 4, 8 for step size 4\n                            ideblockLum( \n                                iBufferDU[xd     + 16 * y], iBufferDU[xd + 1 + 16 * y], \n                                iBufferDU[xd + 2 + 16 * y], iBufferDU[xd + 3 + 16 * y], \n                                iBufferDU[xd + 4 + 16 * y], iBufferDU[xd + 5 + 16 * y], \n                                iBufferDU[xd + 6 + 16 * y], iBufferDU[xd + 7 + 16 * y]  \n                            );\n                        }\n                    }\n                    for (int y = 4; y < 12; y++) {\n                        for (int xd = d1; xd + 8 <= d2; xd += 4) {\n                        // xd is 4 for step size 8\n                        // xd is 0, 4, 8 for step size 4\n                            ideblockLum( \n                                iBufferDV[xd     + 16 * y], iBufferDV[xd + 1 + 16 * y], \n                                iBufferDV[xd + 2 + 16 * y], iBufferDV[xd + 3 + 16 * y], \n                                iBufferDV[xd + 4 + 16 * y], iBufferDV[xd + 5 + 16 * y], \n                                iBufferDV[xd + 6 + 16 * y], iBufferDV[xd + 7 + 16 * y]  \n                            );\n                        }\n                    }\n\n                    // Store Y\n                    // Only center region is required\n                    for (int x = 4; x < 12; x++) for (int y = 4; y < 12; y++) {\n                        float valY = float(iBufferDY[x+16*y]);\n                        float originalY = float(iBufferOY[x+16*y]);\n                        valY = mix(originalY, valY, fDeblock) / 256.;\n                        float valU = float(iBufferDU[x+16*y]);\n                        float originalU = float(iBufferOU[x+16*y]);\n                        valU = mix(originalU, valU, fDeblock) / 256.;\n                        float valV = float(iBufferDV[x+16*y]);\n                        float originalV = float(iBufferOV[x+16*y]);\n                        valV = mix(originalV, valV, fDeblock) / 256.;\n    vec3 rgb = mat3(      1,       1,      1,\n    0, -.34414, 1.772,\n    1.402, -.71414,      0) * vec3(valY, valU, valV);\n                        imageStore(outputTex, ivec2(xc + x - 8, yc + y - 8), \n                            vec4(rgb, 0.));\n                    }\n                } // End for each block\n\n            } // End 480p if\n        } // End main"

.field private static ENHANCE_SHADER:Ljava/lang/String; = " #version 310 es\n        uniform int iTexelWidth;\n        uniform int iTexelHeight;\n        layout(location = 1) uniform float fContrast;\n        layout(location = 2) uniform bool enhance;\n        layout(location = 3) uniform bool demoMode;\n        layout(location = 4) uniform sampler2D sTexture;\n        layout(location = 5) uniform sampler2D SamplerH;\n        layout(rgba8, binding = 4) writeonly uniform mediump image2D outputTex;\n        layout (local_size_x = 4, local_size_y = 4) in;\n\n        void main() {\n\n            int iHalfTexelWidth = iTexelWidth / 2;\n            int x1 = (iTexelWidth * int(gl_GlobalInvocationID.x)) \n                / int(gl_NumWorkGroups.x) / int(gl_WorkGroupSize.x);\n            int x2 = (iTexelWidth * (1+int(gl_GlobalInvocationID.x))) \n                / int(gl_NumWorkGroups.x) / int(gl_WorkGroupSize.x);\n            int y1 = (iTexelHeight * int(gl_GlobalInvocationID.y)) \n                / int(gl_NumWorkGroups.y) / int(gl_WorkGroupSize.y);\n            int y2 = (iTexelHeight * (1+int(gl_GlobalInvocationID.y))) \n                / int(gl_NumWorkGroups.y) / int(gl_WorkGroupSize.y);\n\n            for (int ix = x1; ix < x2; ix++) for (int iy = y1; iy < y2; iy++) {\n                float fx = float(ix) / float(iTexelWidth);\n                float fy = float(iy) / float(iTexelHeight);\n                mediump vec3 rgb = texelFetch(sTexture, ivec2(ix, iy), 0).xyz;\n    mediump vec3 yuv;\n    yuv = mat3(0.299, -0.16874, 0.5,\n    0.587, -.3313, -.4187,\n    0.114, 0.5, -0.0813) * rgb;\n                float fval = 0.299 * rgb.x + 0.587 * rgb.y + 0.114 * rgb.z;\n                float fval256 = clamp(fval * 256., 0., 255.);\n                int ival8 = int(fval256) * 8;\n                float fval_ahe; // The output\n\n                // Bilinear interpolate\n                int ixL = (8 * ix + iTexelWidth/2) / iTexelWidth - 1,\n                    iyL = (8 * iy + iTexelHeight/2) / iTexelHeight - 1;\n                int ixR = ixL + 1, iyR = iyL + 1;\n                float fxc = 8.0 * fx - 0.5 - float(ixL),\n                    fyc = 8.0 * fy - 0.5 - float(iyL);\n\n                fxc = clamp(fxc, 0., 1.);\n                fyc = clamp(fyc, 0., 1.);\n\n                if (ixL < 0) ixL = 0; if (iyL < 0) iyL = 0;\n                if (ixR > 7) ixR = 7; if (iyR > 7) iyR = 7;\n\n                // Shift x coor to the right level\n                ixL = ixL + ival8; ixR = ixR + ival8;\n\n                fval_ahe = mix( \n                    mix(texelFetch(SamplerH, ivec2(ixL, iyL), 0).x, \n                        texelFetch(SamplerH, ivec2(ixL, iyR), 0).x, \n                        fyc \n                    ), \n                    mix(texelFetch(SamplerH, ivec2(ixR, iyL), 0).x, \n                        texelFetch(SamplerH, ivec2(ixR, iyR), 0).x, \n                        fyc \n                    ), \n                    fxc \n                );\n\n                // Adjust the level of enhance\n                if (!enhance || (ix < iHalfTexelWidth && demoMode)) {\n                    fval_ahe = fval;\n                } else {\n                    fval_ahe = mix(fval, fval_ahe, fContrast);\n                }\n                fval_ahe = clamp(fval_ahe, 0., 1.);\n                yuv.x = fval_ahe;\n    rgb = mat3(      1,       1,      1,\n    0, -.34414, 1.772,\n    1.402, -.71414,      0) * yuv;\n    rgb.xyz = clamp(rgb.xyz, 0., 1.);\n                imageStore(outputTex, ivec2(ix, iy), vec4(rgb, 0.));\n            }\n\n            memoryBarrier();\n            groupMemoryBarrier();\n            memoryBarrierShared();\n            barrier();\n        }"

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "    precision mediump float;\n    uniform mediump sampler2D sTexture;\n    varying mediump vec2 vTextureCoord;\n    uniform bool enhance;\n    uniform bool demoMode;\n    uniform float saturation;\n    uniform float fStride;\n    /* rgb2hsl, hue2rgb, hsl2rgb are functions for saturation enhancement */\n    /* RGB <-> HSL */\n    vec3 rgb2hsl(vec3 color) {\n        vec3 hsl;\n        float fmin = min(min(color.r, color.g), color.b);\n        float fmax = max(max(color.r, color.g), color.b);\n        float delta = fmax - fmin;\n        float hdelta = delta / 2.0;\n       \n        hsl.z = (fmax + fmin) / 2.0;\n       \n        if (delta == 0.0)\n        {\n            hsl.x = 0.0;\n             hsl.y = 0.0;\n        } else {\n            if (hsl.z < 0.5)\n                hsl.y = delta / (fmax + fmin);\n            else\n                hsl.y = delta / (2.0 - fmax - fmin);\n            float deltaR = (fmax - color.r) / delta;\n            float deltaG = (fmax - color.g) / delta;\n            float deltaB = (fmax - color.b) / delta;\n           \n            if (color.r == fmax)\n                hsl.x = deltaB - deltaG;\n            else if (color.g == fmax)\n                hsl.x = 2.0 + deltaR - deltaB;\n            else\n                hsl.x = 4.0 + deltaG - deltaR;\n            hsl.x = hsl.x / 6.0;\n           \n            if (hsl.x < 0.0)\n                hsl.x += 1.0;\n            else if (hsl.x > 1.0)\n                hsl.x -= 1.0;\n        }\n        return hsl;\n     }\n    \n    float hue2rgb(float f1, float f2, float hue) {\n        if (hue < 0.0) hue += 1.0;\n        else if (hue > 1.0) hue -= 1.0;\n        float res;\n        if ((6.0 * hue) < 1.0) res = f1 + (f2 - f1) * 6.0 * hue;\n        else if ((2.0 * hue) < 1.0) res = f2;\n        else if ((3.0 * hue) < 2.0) res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;\n        else res = f1;\n        return res;\n    }\n    vec3 hsl2rgb(vec3 hsl) {\n        vec3 rgb;\n        if (hsl.y == 0.0) { rgb = vec3(hsl.z);\n        } else {\n            float f2;\n            if (hsl.z < 0.5) f2 = hsl.z * (1.0 + hsl.y);\n            else f2 = hsl.z + hsl.y - hsl.y * hsl.z;\n            float f1 = 2.0 * hsl.z - f2;\n            rgb.r = hue2rgb(f1, f2, hsl.x + (1.0/3.0));\n            rgb.g = hue2rgb(f1, f2, hsl.x);\n            rgb.b = hue2rgb(f1, f2, hsl.x - (1.0/3.0));\n        }\n        return rgb;\n    }\n    /* Main */\n    void main()\n    {\n    vec2 coor_calib;\n    mediump vec3 rgb;\n   \n    coor_calib = vec2(vTextureCoord.x / fStride, vTextureCoord.y);\n    rgb.x = texture2D(sTexture, vTextureCoord).r;\n    rgb.y = texture2D(sTexture, vTextureCoord).g;\n    rgb.z = texture2D(sTexture, vTextureCoord).b;\n    \n    // Enhance saturation\n    if (enhance && saturation > 0. && (!demoMode || coor_calib.x > 0.5)) {\n        vec3 hsl = rgb2hsl(rgb);\n        float s = hsl.y;\n        // Reduced enhancement for red\n        float h = hsl.x;\n        float r_factor = 0.6 + 0.4 * (h * (1. - h) * 4.);\n        // Quadratic curve\n        float satur_diff = 1.2 * r_factor * (1. - s) * s;\n        s = s + saturation * satur_diff;\n        hsl.y = s;\n        rgb = hsl2rgb(hsl);\n    }\n    gl_FragColor = vec4(rgb, 1);\n    }"

.field private static HISTOGRAM_SHADER:Ljava/lang/String; = "#version 310 es\n        ivec2 coor; // Coor of sampling per invocation\n        uniform int iTexelWidth;\n        uniform int iTexelHeight;\n        uniform int iSampleRatioX;\n        uniform int iSampleRatioY;\n        layout(rgba8, binding = 3) writeonly uniform mediump image2D outputTex;\n        layout (local_size_x = 4, local_size_y = 4) in; // Special layout indicating size\n        layout(location = 1) uniform sampler2D sTexture; // input\n\n        uint t; // Per invocation vars\n        shared int histogram[256];\n        ivec2 storePos;\n        uint numLocalInvocations = gl_WorkGroupSize.x * gl_WorkGroupSize.y;\n        int x1, x2, y1, y2;\n\n        void main() {\n            if (gl_LocalInvocationID == uvec3(0, 0, 0)) {\n                for (int x1 = 0; x1 < 256; x1++) histogram[x1] = 0;\n            }\n            memoryBarrier();\n            groupMemoryBarrier();\n            memoryBarrierShared();\n            barrier();\n\n            x1 = int(gl_GlobalInvocationID.x) * iTexelWidth / int(gl_NumWorkGroups.x) / int(gl_WorkGroupSize.x);\n            x2 = int(int(gl_GlobalInvocationID.x)+1) * iTexelWidth / int(gl_NumWorkGroups.x) / int(gl_WorkGroupSize.x);\n            y1 = int(gl_GlobalInvocationID.y) * iTexelHeight / int(gl_NumWorkGroups.y) / int(gl_WorkGroupSize.y);\n            y2 = int(int(gl_GlobalInvocationID.y)+1) * iTexelHeight / int(gl_NumWorkGroups.y) / int(gl_WorkGroupSize.y);\n\n            for (int _x = x1; _x < x2; _x+=iSampleRatioX) for (int _y = y1; _y < y2; _y+=iSampleRatioY) {\n                vec3 fval = texelFetch(sTexture, ivec2(_x, _y), 0).xyz;\n                float val = 0.299 * fval.x + 0.587 * fval.y + 0.114 * fval.z;\n                val = clamp(255. * val, 0., 255.);\n                atomicAdd(histogram[int(val)], 10);\n            }\n\n            memoryBarrier();\n            groupMemoryBarrier();\n            memoryBarrierShared();\n            barrier();\n\n\n            if (gl_LocalInvocationID == uvec3(0, 0, 0)) {\n\n                // Limit contrast\n                int total_count = 0; for (int i = 0; i < 256; i++) total_count += histogram[i]; // This value can be computed faster\n                float avgBright = 0.;\n                for (int i = 1; i< 256; i++) {\n                    avgBright += float(i * histogram[i])/float(total_count);\n                }\n                avgBright /= 256.;\n                float contrast_limit = 2.0;\n                int limit = int(contrast_limit * float(total_count) / 256.0);\n                int numOverLimit = 0;\n                for (int i = 0; i < 256; i++) if (histogram[i] > limit) {\n                    numOverLimit += int(histogram[i] - limit);\n                    histogram[i] = limit;\n                }\n                numOverLimit /= 256;\n                for (int i = 0; i < 256; i++) histogram[i] += numOverLimit;\n                // Convert to CDF\n                for (int i = 1; i < 256; i++) histogram[i] = histogram[i-1] + histogram[i];\n                for (int i = 0; i < 256; i++) {\n                    storePos = ivec2(i * 8 + int(gl_WorkGroupID.x), int(gl_WorkGroupID.y));\n                    float val = float(256 * histogram[i] / int(histogram[255])) / 256.;\n                    val = val + 0.5 * val * (1. - val);\n                    val = mix(val,float(i)/256.,clamp((avgBright-0.2)/0.3,0.,1.));\n                    imageStore(outputTex, storePos, vec4(\n                        val, 0.0, 0.0, 0.0\n                    ));\n                } // end for\n            } // end if\n\n            memoryBarrier();\n            groupMemoryBarrier();\n            memoryBarrierShared();\n            barrier();\n\n        } // end main"

.field private static final TAG:Ljava/lang/String; = "GlAdaptiveNightvisionES3Filter"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "    attribute vec4 aPosition;\n    attribute mediump vec4 aTextureCoord;\n    varying mediump vec2 vTextureCoord;\n    void main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n    }"


# instance fields
.field private deblockHandle:I

.field private deblockShader:I

.field private demoMode:Z

.field private enableDeblock:Z

.field private enhanceHandle:I

.field private enhanceShader:I

.field private height:F

.field private histogramHandle:I

.field private histogramShader:I

.field private m_nTextureDeblocked:I

.field private m_nTextureEnhanced:I

.field private m_nTextureHistogram:I

.field private sampleRatioX:F

.field private sampleRatioY:F

.field private saturation:F

.field private texName:I

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "    attribute vec4 aPosition;\n    attribute mediump vec4 aTextureCoord;\n    varying mediump vec2 vTextureCoord;\n    void main() {\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n    }"

    const-string v1, "    precision mediump float;\n    uniform mediump sampler2D sTexture;\n    varying mediump vec2 vTextureCoord;\n    uniform bool enhance;\n    uniform bool demoMode;\n    uniform float saturation;\n    uniform float fStride;\n    /* rgb2hsl, hue2rgb, hsl2rgb are functions for saturation enhancement */\n    /* RGB <-> HSL */\n    vec3 rgb2hsl(vec3 color) {\n        vec3 hsl;\n        float fmin = min(min(color.r, color.g), color.b);\n        float fmax = max(max(color.r, color.g), color.b);\n        float delta = fmax - fmin;\n        float hdelta = delta / 2.0;\n       \n        hsl.z = (fmax + fmin) / 2.0;\n       \n        if (delta == 0.0)\n        {\n            hsl.x = 0.0;\n             hsl.y = 0.0;\n        } else {\n            if (hsl.z < 0.5)\n                hsl.y = delta / (fmax + fmin);\n            else\n                hsl.y = delta / (2.0 - fmax - fmin);\n            float deltaR = (fmax - color.r) / delta;\n            float deltaG = (fmax - color.g) / delta;\n            float deltaB = (fmax - color.b) / delta;\n           \n            if (color.r == fmax)\n                hsl.x = deltaB - deltaG;\n            else if (color.g == fmax)\n                hsl.x = 2.0 + deltaR - deltaB;\n            else\n                hsl.x = 4.0 + deltaG - deltaR;\n            hsl.x = hsl.x / 6.0;\n           \n            if (hsl.x < 0.0)\n                hsl.x += 1.0;\n            else if (hsl.x > 1.0)\n                hsl.x -= 1.0;\n        }\n        return hsl;\n     }\n    \n    float hue2rgb(float f1, float f2, float hue) {\n        if (hue < 0.0) hue += 1.0;\n        else if (hue > 1.0) hue -= 1.0;\n        float res;\n        if ((6.0 * hue) < 1.0) res = f1 + (f2 - f1) * 6.0 * hue;\n        else if ((2.0 * hue) < 1.0) res = f2;\n        else if ((3.0 * hue) < 2.0) res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;\n        else res = f1;\n        return res;\n    }\n    vec3 hsl2rgb(vec3 hsl) {\n        vec3 rgb;\n        if (hsl.y == 0.0) { rgb = vec3(hsl.z);\n        } else {\n            float f2;\n            if (hsl.z < 0.5) f2 = hsl.z * (1.0 + hsl.y);\n            else f2 = hsl.z + hsl.y - hsl.y * hsl.z;\n            float f1 = 2.0 * hsl.z - f2;\n            rgb.r = hue2rgb(f1, f2, hsl.x + (1.0/3.0));\n            rgb.g = hue2rgb(f1, f2, hsl.x);\n            rgb.b = hue2rgb(f1, f2, hsl.x - (1.0/3.0));\n        }\n        return rgb;\n    }\n    /* Main */\n    void main()\n    {\n    vec2 coor_calib;\n    mediump vec3 rgb;\n   \n    coor_calib = vec2(vTextureCoord.x / fStride, vTextureCoord.y);\n    rgb.x = texture2D(sTexture, vTextureCoord).r;\n    rgb.y = texture2D(sTexture, vTextureCoord).g;\n    rgb.z = texture2D(sTexture, vTextureCoord).b;\n    \n    // Enhance saturation\n    if (enhance && saturation > 0. && (!demoMode || coor_calib.x > 0.5)) {\n        vec3 hsl = rgb2hsl(rgb);\n        float s = hsl.y;\n        // Reduced enhancement for red\n        float h = hsl.x;\n        float r_factor = 0.6 + 0.4 * (h * (1. - h) * 4.);\n        // Quadratic curve\n        float satur_diff = 1.2 * r_factor * (1. - s) * s;\n        s = s + saturation * satur_diff;\n        hsl.y = s;\n        rgb = hsl2rgb(hsl);\n    }\n    gl_FragColor = vec4(rgb, 1);\n    }"

    .line 650
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 634
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->saturation:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 635
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->width:F

    .line 636
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->height:F

    .line 637
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->sampleRatioX:F

    .line 638
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->sampleRatioY:F

    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enableDeblock:Z

    .line 640
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->demoMode:Z

    .line 644
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureHistogram:I

    .line 645
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureEnhanced:I

    .line 646
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureDeblocked:I

    return-void
.end method

.method private compileDeblockShader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1022
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 1023
    aget v1, v1, v0

    iput v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureDeblocked:I

    const v1, 0x84c5

    .line 1024
    invoke-static {v1}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    .line 1025
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureDeblocked:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const-string v1, "create deblock shader 1"

    .line 1026
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 1028
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 1029
    :cond_0
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockShader:I

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 1030
    :cond_1
    invoke-static {}, Landroid/opengl/GLES31;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    const v1, 0x91b9

    .line 1031
    invoke-static {v1}, Landroid/opengl/GLES31;->glCreateShader(I)I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockShader:I

    const-string v1, "create deblock shader 2"

    .line 1033
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 1035
    sget-object v1, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->DEBLOCK_SHADER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "const int iTexelWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->width:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "uniform int iTexelWidth;"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "const int iTexelHeight = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->height:F

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniform int iTexelHeight;"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1037
    iget v7, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockShader:I

    iget v8, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    const-string v9, "deblock shader"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->compileComputeShader(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1041
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 1042
    :cond_2
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockShader:I

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 1043
    :cond_3
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    .line 1044
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockShader:I

    :cond_4
    const-string v0, "create deblock shader 3"

    .line 1047
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method private compileEnhanceShader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 950
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 951
    aget v1, v1, v0

    iput v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureEnhanced:I

    const v1, 0x84c4

    .line 952
    invoke-static {v1}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    .line 953
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureEnhanced:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const-string v1, "create enhance shader 1"

    .line 954
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 956
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 957
    :cond_0
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceShader:I

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 958
    :cond_1
    invoke-static {}, Landroid/opengl/GLES31;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    const v1, 0x91b9

    .line 959
    invoke-static {v1}, Landroid/opengl/GLES31;->glCreateShader(I)I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceShader:I

    const-string v1, "create enhance shader 2"

    .line 960
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 962
    sget-object v1, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->ENHANCE_SHADER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "const int iTexelWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->width:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "uniform int iTexelWidth;"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "const int iTexelHeight = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->height:F

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniform int iTexelHeight;"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 964
    iget v7, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceShader:I

    iget v8, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    const-string v9, "enhance shader"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->compileComputeShader(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 968
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 969
    :cond_2
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceShader:I

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 970
    :cond_3
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    .line 971
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceShader:I

    :cond_4
    const-string v0, "create enhance shader 3"

    .line 974
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method private compileHistogramShader()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 983
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v2, 0x0

    .line 984
    aget v1, v1, v2

    iput v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureHistogram:I

    const v1, 0x84c3

    .line 985
    invoke-static {v1}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    .line 986
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureHistogram:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const v1, 0x8058

    const/16 v4, 0x800

    const/16 v5, 0x8

    .line 988
    invoke-static {v3, v0, v1, v4, v5}, Landroid/opengl/GLES31;->glTexStorage2D(IIIII)V

    .line 989
    iget v7, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureHistogram:I

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x88b9

    const v12, 0x8058

    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    const-string v0, "create histogram shader 1"

    .line 991
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 992
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 993
    :cond_0
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramShader:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 994
    :cond_1
    invoke-static {}, Landroid/opengl/GLES31;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    const v0, 0x91b9

    .line 995
    invoke-static {v0}, Landroid/opengl/GLES31;->glCreateShader(I)I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramShader:I

    const-string v0, "create histogram shader 2"

    .line 997
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 998
    sget-object v0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->HISTOGRAM_SHADER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "const int iTexelWidth = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->width:F

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uniform int iTexelWidth;"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "const int iTexelHeight = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->height:F

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uniform int iTexelHeight;"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "const int iSampleRatioX = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->sampleRatioX:F

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uniform int iSampleRatioX;"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "const int iSampleRatioY = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->sampleRatioY:F

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uniform int iSampleRatioY;"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1002
    iget v7, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramShader:I

    iget v8, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    const-string v9, "histogram shader"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->compileComputeShader(Ljava/lang/String;IIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1006
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 1007
    :cond_2
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramShader:I

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 1008
    :cond_3
    iput v2, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    .line 1009
    iput v2, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramShader:I

    .line 1012
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "program = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HISTOGRAM"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create histogram shader 3"

    .line 1014
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method private runHistogramShader()V
    .locals 4

    const-string v0, "run histogram shader 0"

    .line 841
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 842
    invoke-static {v0}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    .line 843
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES31;->glUseProgram(I)V

    const v1, 0x84c0

    .line 846
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 847
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->texName:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v3, 0x2601

    .line 849
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 850
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v3, 0x812f

    .line 851
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 852
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 855
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v2, "run histogram shader 1"

    .line 857
    invoke-static {v2}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const-string v2, "run histogram shader 2"

    .line 861
    invoke-static {v2}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 867
    invoke-static {v2, v2, v1}, Landroid/opengl/GLES31;->glDispatchCompute(III)V

    const/16 v2, 0x400

    .line 869
    invoke-static {v2}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    .line 870
    invoke-static {v1}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    .line 871
    invoke-static {v0}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    const-string v0, "run histogram shader 3"

    .line 873
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method active_bind_set(ILjava/lang/String;I)V
    .locals 3

    .line 882
    invoke-static {p3}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    const v0, 0x84c0

    sub-int/2addr p3, v0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 895
    sget-object p1, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->TAG:Ljava/lang/String;

    const-string p2, "glError unexpected texid"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 890
    :cond_0
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureEnhanced:I

    goto :goto_0

    .line 889
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureHistogram:I

    :goto_0
    const/16 v1, 0xde1

    .line 898
    invoke-static {v1, v0}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v2, 0x2601

    .line 901
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 902
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 903
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 904
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES31;->glTexParameteri(III)V

    .line 907
    invoke-static {p1, p2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 908
    sget-object v0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location == -1 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_2
    invoke-static {p1, p3}, Landroid/opengl/GLES31;->glUniform1i(II)V

    return-void
.end method

.method compileComputeShader(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 3

    .line 919
    invoke-static {p3, p1}, Landroid/opengl/GLES31;->glShaderSource(ILjava/lang/String;)V

    .line 920
    invoke-static {p3}, Landroid/opengl/GLES31;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    .line 922
    invoke-static {p2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    const v1, 0x8b81

    invoke-static {p3, v1, v0}, Landroid/opengl/GLES31;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 923
    aget v1, p2, v0

    const-string v2, "compileComputeShader"

    if-nez v1, :cond_0

    .line 924
    invoke-static {v2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "create compute shader 1"

    .line 928
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 929
    invoke-static {p4, p3}, Landroid/opengl/GLES31;->glAttachShader(II)V

    .line 930
    invoke-static {p4}, Landroid/opengl/GLES31;->glLinkProgram(I)V

    const p3, 0x8b82

    .line 931
    invoke-static {p2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {p4, p3, v1}, Landroid/opengl/GLES31;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 932
    aget p2, p2, v0

    if-nez p2, :cond_1

    .line 933
    invoke-static {v2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p2, "create compute shader 2"

    .line 937
    invoke-static {p2}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    return p1
.end method

.method public enableDeblock(Z)V
    .locals 0

    .line 654
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enableDeblock:Z

    return-void
.end method

.method public enableDemoMode(Z)V
    .locals 0

    .line 658
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->demoMode:Z

    return-void
.end method

.method protected getTexture()I
    .locals 1

    .line 663
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enableDeblock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureDeblocked:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureEnhanced:I

    :goto_0
    return v0
.end method

.method public onDraw()V
    .locals 2

    const-string v0, "saturation"

    .line 703
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->getHandle(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->saturation:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "fStride"

    .line 704
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->getHandle(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "enhance"

    .line 705
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->getHandle(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v0, "demoMode"

    .line 706
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->getHandle(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->demoMode:Z

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method protected preDraw(I)V
    .locals 0

    .line 712
    iput p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->texName:I

    .line 713
    invoke-direct {p0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->runHistogramShader()V

    .line 714
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->runEnhanceShader()V

    .line 715
    iget-boolean p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enableDeblock:Z

    if-eqz p1, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->runDeblockShader()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1051
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 1052
    :cond_0
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceShader:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    :cond_1
    const/4 v0, 0x0

    .line 1053
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    .line 1054
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceShader:I

    .line 1055
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 1056
    :cond_2
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramShader:I

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 1057
    :cond_3
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    .line 1058
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramShader:I

    .line 1059
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteProgram(I)V

    .line 1060
    :cond_4
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockShader:I

    if-eqz v1, :cond_5

    invoke-static {v1}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 1061
    :cond_5
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    .line 1062
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockShader:I

    .line 1063
    invoke-super {p0}, Lcom/visualon/OSMPRender/filter/GlFilter;->release()V

    return-void
.end method

.method runDeblockShader()V
    .locals 11

    const-string v0, "run deblock shader 0"

    .line 728
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 729
    invoke-static {v0}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    .line 731
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    invoke-static {v0}, Landroid/opengl/GLES31;->glUseProgram(I)V

    .line 734
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    const-string v1, "fDeblockLevel"

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->saturation:F

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    .line 736
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    const-string v1, "SamplerRGB"

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glUniform1i(II)V

    const-string v0, "run deblock shader 1"

    .line 739
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const v0, 0x84c5

    .line 740
    invoke-static {v0}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    .line 741
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureDeblocked:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const-string v0, "run deblock shader 2"

    .line 742
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 753
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->width:F

    float-to-int v0, v0

    iget v2, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->height:F

    float-to-int v2, v2

    const/4 v3, 0x1

    const v4, 0x8058

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/GLES31;->glTexStorage2D(IIIII)V

    .line 756
    invoke-static {}, Lcom/visualon/OSMPRender/EglUtil;->ignoreGlError()V

    const-string v0, "run deblock shader 3"

    .line 757
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 759
    iget v5, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureDeblocked:I

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x88b9

    const v10, 0x8058

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    const-string v0, "run deblock shader 4"

    .line 763
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 764
    invoke-static {v0, v0, v3}, Landroid/opengl/GLES31;->glDispatchCompute(III)V

    const-string v0, "run deblock shader 5"

    .line 766
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 768
    invoke-static {v0}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    const-string v0, "run deblock shader 6"

    .line 770
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method runEnhanceShader()V
    .locals 10

    const-string v0, "run enhance shader 0"

    .line 782
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 783
    invoke-static {v0}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    .line 785
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    invoke-static {v1}, Landroid/opengl/GLES31;->glUseProgram(I)V

    .line 789
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->saturation:F

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/opengl/GLES31;->glUniform1f(IF)V

    const/4 v1, 0x2

    .line 791
    invoke-static {v1, v2}, Landroid/opengl/GLES31;->glUniform1i(II)V

    .line 793
    iget-boolean v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->demoMode:Z

    const/4 v3, 0x3

    invoke-static {v3, v1}, Landroid/opengl/GLES31;->glUniform1i(II)V

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 796
    invoke-static {v1, v4}, Landroid/opengl/GLES31;->glUniform1i(II)V

    const/4 v1, 0x5

    .line 799
    invoke-static {v1, v3}, Landroid/opengl/GLES31;->glUniform1i(II)V

    const-string v1, "run enhance shader 1"

    .line 802
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const v1, 0x84c4

    .line 803
    invoke-static {v1}, Landroid/opengl/GLES31;->glActiveTexture(I)V

    .line 804
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureEnhanced:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES31;->glBindTexture(II)V

    const-string v1, "run enhance shader 2"

    .line 805
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const v1, 0x8058

    .line 816
    iget v4, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->width:F

    float-to-int v4, v4

    iget v5, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->height:F

    float-to-int v5, v5

    invoke-static {v3, v2, v1, v4, v5}, Landroid/opengl/GLES31;->glTexStorage2D(IIIII)V

    .line 819
    invoke-static {}, Lcom/visualon/OSMPRender/EglUtil;->ignoreGlError()V

    const-string v1, "run enhance shader 3"

    .line 820
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 822
    iget v4, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->m_nTextureEnhanced:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x88b9

    const v9, 0x8058

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES31;->glBindImageTexture(IIIZIII)V

    const-string v1, "run enhance shader 4"

    .line 826
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 827
    invoke-static {v1, v1, v2}, Landroid/opengl/GLES31;->glDispatchCompute(III)V

    const-string v1, "run enhance shader 5"

    .line 829
    invoke-static {v1}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    const/16 v1, 0x400

    .line 831
    invoke-static {v1}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    .line 832
    invoke-static {v2}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    .line 833
    invoke-static {v0}, Landroid/opengl/GLES31;->glMemoryBarrier(I)V

    const-string v0, "run enhance shader 6"

    .line 835
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public setEnhancementLevel(F)V
    .locals 0

    .line 668
    iput p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->saturation:F

    return-void
.end method

.method public setFrameSize(II)V
    .locals 3

    .line 674
    sget-object v0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrameSize width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p1, p1

    .line 675
    iput p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->width:F

    int-to-float p1, p2

    .line 676
    iput p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->height:F

    return-void
.end method

.method public setup()V
    .locals 0

    .line 681
    invoke-super {p0}, Lcom/visualon/OSMPRender/filter/GlFilter;->setup()V

    .line 682
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->setupES3filter()V

    return-void
.end method

.method declared-synchronized setupES3filter()V
    .locals 2

    monitor-enter p0

    .line 692
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->compileHistogramShader()V

    .line 693
    invoke-direct {p0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->compileEnhanceShader()V

    .line 694
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enableDeblock:Z

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->compileDeblockShader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 697
    :catch_0
    :try_start_1
    sget-object v0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->TAG:Ljava/lang/String;

    const-string v1, "setupES3filter failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public setupSuccess()Z
    .locals 1

    .line 687
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->histogramHandle:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enhanceHandle:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->enableDeblock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES3Filter;->deblockHandle:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
