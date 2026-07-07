.class public Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;
.super Ljava/lang/Object;
.source "voGLExtOesRenderWrapper.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final TAG:Ljava/lang/String; = "EXTERNAL_OESRenderer"

.field private static final VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final VERTICES_DATA_UV_OFFSET:I = 0x3


# instance fields
.field private final mFragmentShader:Ljava/lang/String;

.field private mMMatrix:[F

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mProjMatrix:[F

.field private mSTMatrix:[F

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mTextureID:I

.field private mVMatrix:[F

.field private final mVertexShader:Ljava/lang/String;

.field private mVertices:Ljava/nio/FloatBuffer;

.field private final mVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field private surfaceCallBack:Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;

.field private updateSurface:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 53
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVerticesData:[F

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    .line 63
    iput-object v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVertexShader:Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 74
    iput-object v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mFragmentShader:Ljava/lang/String;

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 83
    iput-object v2, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mMVPMatrix:[F

    new-array v2, v1, [F

    .line 84
    iput-object v2, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mProjMatrix:[F

    new-array v2, v1, [F

    .line 85
    iput-object v2, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mMMatrix:[F

    new-array v2, v1, [F

    .line 86
    iput-object v2, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVMatrix:[F

    new-array v1, v1, [F

    .line 87
    iput-object v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mSTMatrix:[F

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->updateSurface:Z

    .line 106
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 107
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVertices:Ljava/nio/FloatBuffer;

    .line 108
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    iget-object v0, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mSTMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 5

    .line 311
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "EXTERNAL_OESRenderer"

    invoke-static {v4, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 281
    invoke-direct {p0, v0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 285
    invoke-direct {p0, v1, p2}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 290
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    .line 293
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 294
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 295
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 296
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v2, 0x8b82

    .line 298
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 299
    aget p2, p2, v0

    if-eq p2, p1, :cond_2

    const-string p1, "EXTERNAL_OESRenderer"

    const-string p2, "Could not link program: "

    .line 300
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    .line 264
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 267
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v2, 0x8b81

    .line 269
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 270
    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EXTERNAL_OESRenderer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->updateSurface:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 118
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mSTMatrix:[F

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 119
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->updateSurface:Z

    .line 121
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x4100

    .line 125
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 126
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "glUseProgram"

    .line 127
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    const p1, 0x84c0

    .line 129
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p1, 0x8d65

    .line 130
    iget v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mTextureID:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 132
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    iget v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->maPositionHandle:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer maPosition"

    .line 135
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 136
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->maPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray maPositionHandle"

    .line 137
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    iget v2, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->maTextureHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer maTextureHandle"

    .line 142
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 143
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->maTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray maTextureHandle"

    .line 144
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mMMatrix:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 148
    iget-object v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mMVPMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mMMatrix:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 149
    iget-object v11, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mMVPMatrix:[F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mProjMatrix:[F

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v11

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 151
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mMVPMatrix:[F

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 152
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->muSTMatrixHandle:I

    iget-object v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mSTMatrix:[F

    invoke-static {p1, v2, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 154
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 155
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 121
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 260
    :try_start_0
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->updateSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8

    const/4 p1, 0x0

    .line 163
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 164
    iget-object v0, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mProjMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 166
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->surfaceCallBack:Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;

    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1, p2, p3}, Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;->onSurfaceChanged(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 12

    const/16 p1, 0xbe2

    .line 177
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 178
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 179
    invoke-static {p1, p1, p1, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const-string p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mProgram:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "aPosition"

    .line 186
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->maPositionHandle:I

    const-string p1, "glGetAttribLocation aPosition"

    .line 187
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 188
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->maPositionHandle:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    .line 191
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mProgram:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->maTextureHandle:I

    const-string p1, "glGetAttribLocation aTextureCoord"

    .line 192
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 193
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->maTextureHandle:I

    if-eq p1, p2, :cond_4

    .line 197
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mProgram:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->muMVPMatrixHandle:I

    const-string p1, "glGetUniformLocation uMVPMatrix"

    .line 198
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 199
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->muMVPMatrixHandle:I

    if-eq p1, p2, :cond_3

    .line 203
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mProgram:I

    const-string v0, "uSTMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->muSTMatrixHandle:I

    const-string p1, "glGetUniformLocation uSTMatrix"

    .line 204
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 205
    iget p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->muSTMatrixHandle:I

    if-eq p1, p2, :cond_2

    const/4 p1, 0x1

    new-array p2, p1, [I

    const/4 v0, 0x0

    .line 215
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 217
    aget p1, p2, v0

    iput p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mTextureID:I

    const p2, 0x8d65

    .line 218
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "glBindTexture mTextureID"

    .line 219
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    const/16 p1, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    .line 222
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    const v1, 0x46180400    # 9729.0f

    .line 224
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 227
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 229
    invoke-static {p2, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string p1, "glTexParameteri mTextureID"

    .line 231
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->checkGlError(Ljava/lang/String;)V

    .line 237
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget p2, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mTextureID:I

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 238
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 240
    iget-object v1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->mVMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->updateSurface:Z

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->surfaceCallBack:Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;

    if-eqz p1, :cond_1

    .line 250
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;->onSurfaceCreated()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 247
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 206
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uSTMatrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for uMVPMatrix"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for aTextureCoord"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not get attrib location for aPosition"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSurfaceCallBack(Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/visualon/OSMPRender/voGLExtOesRenderWrapper;->surfaceCallBack:Lcom/visualon/OSMPUtils/voGLSurfaceView$SurfaceCallBack;

    return-void
.end method
