.class final Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniform"
.end annotation


# instance fields
.field private final floatValue:[F

.field private intValue:I

.field private final location:I

.field public final name:Ljava/lang/String;

.field private texIdValue:I

.field private texUnitIndex:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->name:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->type:I

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    return-void
.end method

.method public static create(II)Lcom/google/android/exoplayer2/util/GlProgram$Uniform;
    .locals 15

    move v11, p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8b87

    const/4 v12, 0x0

    .line 1
    invoke-static {p0, v2, v1, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-array v13, v0, [I

    aget v2, v1, v12

    .line 2
    new-array v14, v2, [B

    aget v2, v1, v12

    new-array v3, v0, [I

    new-array v5, v0, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v0, p0

    move/from16 v1, p1

    move-object v7, v13

    move-object v9, v14

    .line 3
    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/exoplayer2/util/GlProgram;->access$000([B)I

    move-result v1

    invoke-direct {v0, v14, v12, v1}, Ljava/lang/String;-><init>([BII)V

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/GlProgram;->access$200(ILjava/lang/String;)I

    move-result v1

    .line 6
    new-instance v2, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;

    aget v3, v13, v12

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public bind()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected uniform type: "

    .line 3
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :sswitch_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texIdValue:I

    if-eqz v0, :cond_1

    const v0, 0x84c0

    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texUnitIndex:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 7
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->type:I

    const v1, 0x8b5e    # 4.9996E-41f

    if-ne v0, v1, :cond_0

    const/16 v0, 0xde1

    goto :goto_0

    :cond_0
    const v0, 0x8d65

    .line 9
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texIdValue:I

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->bindTexture(II)V

    .line 11
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texUnitIndex:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 12
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No call to setSamplerTexId() before bind."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :sswitch_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 15
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    goto :goto_1

    .line 16
    :sswitch_2
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 17
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    goto :goto_1

    .line 18
    :sswitch_3
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 19
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    goto :goto_1

    .line 20
    :sswitch_4
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 21
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    goto :goto_1

    .line 22
    :sswitch_5
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 23
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    goto :goto_1

    .line 24
    :sswitch_6
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->location:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->intValue:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1404 -> :sswitch_6
        0x1406 -> :sswitch_5
        0x8b50 -> :sswitch_4
        0x8b51 -> :sswitch_3
        0x8b5b -> :sswitch_2
        0x8b5c -> :sswitch_1
        0x8b5e -> :sswitch_0
        0x8be7 -> :sswitch_0
        0x8d66 -> :sswitch_0
    .end sparse-switch
.end method

.method public setFloat(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setFloats([F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->floatValue:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setInt(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->intValue:I

    return-void
.end method

.method public setSamplerTexId(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texIdValue:I

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlProgram$Uniform;->texUnitIndex:I

    return-void
.end method
