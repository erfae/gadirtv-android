.class Leightbitlab/com/blurview/SizeScaler$Size;
.super Ljava/lang/Object;
.source "SizeScaler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leightbitlab/com/blurview/SizeScaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public final height:I

.field public final scaleFactor:F

.field public final width:I


# direct methods
.method public constructor <init>(IIF)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    .line 3
    iput p2, p0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    .line 4
    iput p3, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 2
    :cond_12
    check-cast p1, Leightbitlab/com/blurview/SizeScaler$Size;

    .line 3
    iget v2, p0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    iget v3, p1, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 4
    :cond_1b
    iget v2, p0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    iget v3, p1, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    if-eq v2, v3, :cond_22

    return v1

    .line 5
    :cond_22
    iget p1, p1, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    iget v2, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_15

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Size{width="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leightbitlab/com/blurview/SizeScaler$Size;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
