.class public Lcom/visualon/OSMPRender/filter/GlFilter;
.super Ljava/lang/Object;
.source "GlFilter.java"


# static fields
.field protected static final DEFAULT_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final DEFAULT_UNIFORM_SAMPLER:Ljava/lang/String; = "sTexture"

.field protected static final DEFAULT_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final VERTICES_DATA:[F

.field protected static final VERTICES_DATA_POS_OFFSET:I = 0x0

.field protected static final VERTICES_DATA_POS_SIZE:I = 0x3

.field protected static final VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field protected static final VERTICES_DATA_UV_OFFSET:I = 0xc

.field protected static final VERTICES_DATA_UV_SIZE:I = 0x2


# instance fields
.field private fragmentShader:I

.field private final fragmentShaderSource:Ljava/lang/String;

.field private final handleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private program:I

.field private vertexBufferName:I

.field private vertexShader:I

.field private final vertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/visualon/OSMPRender/filter/GlFilter;->VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 0

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/visualon/OSMPRender/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->handleMap:Ljava/util/HashMap;

    .line 83
    iput-object p1, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexShaderSource:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->fragmentShaderSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(ILcom/visualon/OSMPRender/EFramebufferObject;)V
    .locals 9

    .line 119
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPRender/filter/GlFilter;->preDraw(I)V

    .line 121
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlFilter;->useProgram()V

    .line 123
    iget p2, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexBufferName:I

    const v0, 0x8892

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string p2, "aPosition"

    .line 124
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const-string v1, "aTextureCoord"

    .line 126
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPRender/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPRender/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/16 v8, 0xc

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 129
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlFilter;->getTexture()I

    move-result v2

    const v3, 0x84c0

    add-int/2addr v3, v2

    .line 130
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/16 v3, 0xde1

    .line 131
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "sTexture"

    .line 132
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPRender/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 134
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlFilter;->onDraw()V

    const/4 p1, 0x5

    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 136
    invoke-static {p1, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPRender/filter/GlFilter;->getHandle(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 140
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 141
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method protected final getHandle(Ljava/lang/String;)I
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->handleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 172
    :cond_0
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->program:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 174
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->program:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    :cond_1
    if-eq v0, v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->handleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get attrib or uniform location for \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTexture()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getVertexBufferName()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexBufferName:I

    return v0
.end method

.method protected onDraw()V
    .locals 0

    return-void
.end method

.method protected preDraw(I)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 4

    .line 106
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->program:I

    .line 108
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexShader:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 109
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexShader:I

    .line 110
    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->fragmentShader:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 111
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->fragmentShader:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 112
    iget v3, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexBufferName:I

    aput v3, v2, v0

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 113
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexBufferName:I

    .line 115
    iget-object v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->handleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setEnhancementLevel(F)V
    .locals 0

    return-void
.end method

.method public setFrameSize(II)V
    .locals 0

    return-void
.end method

.method public setup()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlFilter;->release()V

    .line 89
    iget-object v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexShaderSource:Ljava/lang/String;

    const v1, 0x8b31

    invoke-static {v0, v1}, Lcom/visualon/OSMPRender/EglUtil;->loadShader(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexShader:I

    const-string v0, "loadShader vertex"

    .line 90
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->fragmentShaderSource:Ljava/lang/String;

    const v1, 0x8b30

    invoke-static {v0, v1}, Lcom/visualon/OSMPRender/EglUtil;->loadShader(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->fragmentShader:I

    const-string v0, "loadShader fragment"

    .line 92
    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->checkEglError(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexShader:I

    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->fragmentShader:I

    invoke-static {v0, v1}, Lcom/visualon/OSMPRender/EglUtil;->createProgram(II)I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->program:I

    .line 94
    sget-object v0, Lcom/visualon/OSMPRender/filter/GlFilter;->VERTICES_DATA:[F

    invoke-static {v0}, Lcom/visualon/OSMPRender/EglUtil;->createBuffer([F)I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->vertexBufferName:I

    return-void
.end method

.method public setupSuccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final useProgram()V
    .locals 1

    .line 159
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlFilter;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
