.class public Lcom/visualon/OSMPRender/filter/GlPreviewFilter;
.super Lcom/visualon/OSMPRender/filter/GlFilter;
.source "GlPreviewFilter.java"


# static fields
.field public static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nuniform float uCRatio;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\nvec4 scaledPos = aPosition;\nscaledPos.x = scaledPos.x * uCRatio;\ngl_Position = uMVPMatrix * scaledPos;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private final texTarget:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 39
    invoke-static {p1}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->createFragmentShaderSourceOESIfNeed(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nuniform float uCRatio;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\nvec4 scaledPos = aPosition;\nscaledPos.x = scaledPos.x * uCRatio;\ngl_Position = uMVPMatrix * scaledPos;\nvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPRender/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput p1, p0, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->texTarget:I

    return-void
.end method

.method private static createFragmentShaderSourceOESIfNeed(I)Ljava/lang/String;
    .locals 3

    const-string v0, "precision mediump float;\nvarying highp vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    const v1, 0x8d65

    if-ne p0, v1, :cond_0

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sampler2D"

    const-string v2, "samplerExternalOES"

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(I[F[FF)V
    .locals 9

    .line 54
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->useProgram()V

    const-string v0, "uMVPMatrix"

    .line 56
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p2, "uSTMatrix"

    .line 57
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p2, "uCRatio"

    .line 58
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 60
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getVertexBufferName()I

    move-result p2

    const p3, 0x8892

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string p2, "aPosition"

    .line 61
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const-string p4, "aTextureCoord"

    .line 63
    invoke-virtual {p0, p4}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 64
    invoke-virtual {p0, p4}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    const/16 v8, 0xc

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v0, 0x84c0

    .line 66
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 67
    iget v0, p0, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->texTarget:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "sTexture"

    .line 68
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 v0, 0x4

    .line 70
    invoke-static {p1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 73
    invoke-virtual {p0, p4}, Lcom/visualon/OSMPRender/filter/GlPreviewFilter;->getHandle(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 74
    invoke-static {p3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 p1, 0xde1

    .line 75
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
