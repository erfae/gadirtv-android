.class public final Lcom/google/android/material/color/utilities/QuantizerWu;
.super Ljava/lang/Object;
.source "QuantizerWu.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/Quantizer;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/QuantizerWu$Box;,
        Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;,
        Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;,
        Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    }
.end annotation


# static fields
.field private static final INDEX_BITS:I = 0x5

.field private static final INDEX_COUNT:I = 0x21

.field private static final TOTAL_SIZE:I = 0x8c61


# instance fields
.field public cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

.field public moments:[D

.field public momentsB:[I

.field public momentsG:[I

.field public momentsR:[I

.field public weights:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 5
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    goto/16 :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected direction "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 10
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    goto :goto_0

    .line 11
    :cond_2
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 12
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 13
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 14
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    :goto_0
    sub-int/2addr p1, p0

    return p1
.end method

.method public static getIndex(III)I
    .locals 2

    shl-int/lit8 v0, p0, 0xa

    shl-int/lit8 v1, p0, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    shl-int/lit8 p0, p1, 0x5

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method public static top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    invoke-static {p1, v0, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 3
    invoke-static {v0, v1, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    .line 4
    invoke-static {v0, v1, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 5
    invoke-static {v0, p0, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unexpected direction "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p1, p2, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 8
    invoke-static {v0, p2, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 9
    invoke-static {v0, p2, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 10
    invoke-static {v0, p2, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    goto :goto_0

    .line 11
    :cond_2
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {p2, p1, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 12
    invoke-static {p2, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 13
    invoke-static {p2, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 14
    invoke-static {p2, v0, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    :goto_0
    add-int/2addr p1, p0

    return p1
.end method

.method public static volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v0

    aget v0, p1, v0

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 6
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 7
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 8
    invoke-static {v1, v2, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result p0

    aget p0, p1, p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    move-result v3

    .line 2
    iget-object v4, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    invoke-static {v1, v2, v4}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    move-result v4

    .line 3
    iget-object v5, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    invoke-static {v1, v2, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    move-result v5

    .line 4
    iget-object v6, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    invoke-static {v1, v2, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    move/from16 v11, p4

    move-wide v8, v7

    const/4 v10, -0x1

    move/from16 v7, p3

    :goto_0
    if-ge v7, v11, :cond_3

    .line 5
    iget-object v12, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    invoke-static {v1, v2, v7, v12}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    move-result v12

    add-int/2addr v12, v3

    .line 6
    iget-object v13, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    invoke-static {v1, v2, v7, v13}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    move-result v13

    add-int/2addr v13, v4

    .line 7
    iget-object v14, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    invoke-static {v1, v2, v7, v14}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    move-result v14

    add-int/2addr v14, v5

    .line 8
    iget-object v15, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    invoke-static {v1, v2, v7, v15}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    move-result v15

    add-int/2addr v15, v6

    if-nez v15, :cond_0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    mul-int v16, v12, v12

    mul-int v17, v13, v13

    add-int v17, v17, v16

    mul-int v16, v14, v14

    add-int v0, v16, v17

    int-to-double v0, v0

    move/from16 v16, v3

    int-to-double v2, v15

    div-double/2addr v0, v2

    sub-int v2, p5, v12

    sub-int v3, p6, v13

    sub-int v12, p7, v14

    sub-int v13, p8, v15

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    mul-int v2, v2, v2

    mul-int v3, v3, v3

    add-int/2addr v3, v2

    mul-int v12, v12, v12

    add-int/2addr v12, v3

    int-to-double v2, v12

    int-to-double v12, v13

    div-double/2addr v2, v12

    add-double/2addr v2, v0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_2

    move-wide v8, v2

    move v10, v7

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    invoke-direct {v0, v10, v8, v9}, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;-><init>(ID)V

    return-object v0
.end method

.method public quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;
    .locals 28

    move-object/from16 v9, p0

    move/from16 v10, p2

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerMap;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/QuantizerMap;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/google/android/material/color/utilities/QuantizerMap;->quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/material/color/utilities/QuantizerResult;->colorToCount:Ljava/util/Map;

    const v1, 0x8c61

    new-array v2, v1, [I

    .line 3
    iput-object v2, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    new-array v2, v1, [I

    .line 4
    iput-object v2, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    new-array v2, v1, [I

    .line 5
    iput-object v2, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    new-array v2, v1, [I

    .line 6
    iput-object v2, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    new-array v1, v1, [D

    .line 7
    iput-object v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    move-result v3

    .line 12
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    move-result v4

    .line 13
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    move-result v2

    shr-int/lit8 v5, v3, 0x3

    add-int/2addr v5, v11

    shr-int/lit8 v6, v4, 0x3

    add-int/2addr v6, v11

    shr-int/lit8 v7, v2, 0x3

    add-int/2addr v7, v11

    .line 14
    invoke-static {v5, v6, v7}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v5

    .line 15
    iget-object v6, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    aget v7, v6, v5

    add-int/2addr v7, v1

    aput v7, v6, v5

    .line 16
    iget-object v6, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    aget v7, v6, v5

    mul-int v8, v3, v1

    add-int/2addr v8, v7

    aput v8, v6, v5

    .line 17
    iget-object v6, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    aget v7, v6, v5

    mul-int v8, v4, v1

    add-int/2addr v8, v7

    aput v8, v6, v5

    .line 18
    iget-object v6, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    aget v7, v6, v5

    mul-int v8, v2, v1

    add-int/2addr v8, v7

    aput v8, v6, v5

    .line 19
    iget-object v6, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    aget-wide v7, v6, v5

    mul-int v3, v3, v3

    mul-int v4, v4, v4

    add-int/2addr v4, v3

    mul-int v2, v2, v2

    add-int/2addr v2, v4

    mul-int v2, v2, v1

    int-to-double v1, v2

    add-double/2addr v7, v1

    aput-wide v7, v6, v5

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x21

    const/4 v14, 0x0

    if-ge v0, v1, :cond_3

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, v1, [D

    const/4 v7, 0x1

    :goto_2
    if-ge v7, v1, :cond_2

    const/4 v8, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    :goto_3
    if-ge v8, v1, :cond_1

    .line 20
    invoke-static {v0, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v21

    .line 21
    iget-object v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    aget v1, v1, v21

    add-int/2addr v15, v1

    .line 22
    iget-object v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    aget v1, v1, v21

    add-int v16, v16, v1

    .line 23
    iget-object v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    aget v1, v1, v21

    add-int v17, v17, v1

    .line 24
    iget-object v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    aget v1, v1, v21

    add-int v18, v18, v1

    .line 25
    iget-object v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    aget-wide v22, v1, v21

    add-double v19, v19, v22

    .line 26
    aget v1, v2, v8

    add-int/2addr v1, v15

    aput v1, v2, v8

    .line 27
    aget v1, v3, v8

    add-int v1, v1, v16

    aput v1, v3, v8

    .line 28
    aget v1, v4, v8

    add-int v1, v1, v17

    aput v1, v4, v8

    .line 29
    aget v1, v5, v8

    add-int v1, v1, v18

    aput v1, v5, v8

    .line 30
    aget-wide v22, v6, v8

    add-double v22, v22, v19

    aput-wide v22, v6, v8

    add-int/lit8 v1, v0, -0x1

    .line 31
    invoke-static {v1, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v1

    .line 32
    iget-object v12, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    aget v13, v12, v1

    aget v24, v2, v8

    add-int v13, v13, v24

    aput v13, v12, v21

    .line 33
    iget-object v12, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    aget v13, v12, v1

    aget v24, v3, v8

    add-int v13, v13, v24

    aput v13, v12, v21

    .line 34
    iget-object v12, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    aget v13, v12, v1

    aget v24, v4, v8

    add-int v13, v13, v24

    aput v13, v12, v21

    .line 35
    iget-object v12, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    aget v13, v12, v1

    aget v24, v5, v8

    add-int v13, v13, v24

    aput v13, v12, v21

    .line 36
    iget-object v12, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    aget-wide v24, v12, v1

    aget-wide v26, v6, v8

    add-double v24, v24, v26

    aput-wide v24, v12, v21

    add-int/lit8 v8, v8, 0x1

    const/16 v1, 0x21

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x21

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 37
    :cond_3
    new-array v0, v10, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    iput-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_4

    .line 38
    iget-object v1, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    new-instance v2, Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu$Box;-><init>(Lcom/google/android/material/color/utilities/QuantizerWu$1;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 39
    :cond_4
    new-array v12, v10, [D

    .line 40
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v0, v0, v14

    const/16 v1, 0x20

    .line 41
    iput v1, v0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    .line 42
    iput v1, v0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    .line 43
    iput v1, v0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    const/4 v13, 0x1

    const/4 v15, 0x0

    :goto_5
    if-ge v13, v10, :cond_11

    .line 44
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v8, v0, v15

    aget-object v7, v0, v13

    .line 45
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    invoke-static {v8, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v16

    .line 46
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    invoke-static {v8, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v17

    .line 47
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    invoke-static {v8, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v18

    .line 48
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    invoke-static {v8, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v19

    .line 49
    sget-object v20, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    iget v0, v8, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v8, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v20

    move/from16 v5, v16

    move/from16 v6, v17

    move-object v14, v7

    move/from16 v7, v18

    move-object v11, v8

    move/from16 v8, v19

    .line 50
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v8

    .line 51
    sget-object v24, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    const/4 v1, 0x1

    add-int/lit8 v3, v0, 0x1

    iget v4, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v24

    move-object v10, v8

    move/from16 v8, v19

    .line 52
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v8

    .line 53
    sget-object v25, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    const/4 v1, 0x1

    add-int/lit8 v3, v0, 0x1

    iget v4, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v25

    move/from16 v16, v13

    move-object v13, v8

    move/from16 v8, v19

    .line 54
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    move-result-object v0

    .line 55
    iget-wide v1, v10, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    .line 56
    iget-wide v3, v13, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    .line 57
    iget-wide v5, v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    cmpl-double v7, v1, v3

    if-ltz v7, :cond_5

    cmpl-double v7, v1, v5

    if-ltz v7, :cond_5

    .line 58
    iget v1, v10, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    if-gez v1, :cond_7

    .line 59
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_8

    :cond_5
    cmpl-double v7, v3, v1

    if-ltz v7, :cond_6

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_6

    move-object/from16 v20, v24

    goto :goto_6

    :cond_6
    move-object/from16 v20, v25

    .line 60
    :cond_7
    :goto_6
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iput v1, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    .line 61
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iput v1, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    .line 62
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iput v1, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 63
    sget-object v1, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    goto :goto_7

    .line 64
    :cond_8
    iget v0, v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 65
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iput v1, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    .line 66
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iput v1, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 67
    iput v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    goto :goto_7

    .line 68
    :cond_9
    iget v0, v13, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    .line 69
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iput v1, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    .line 70
    iput v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 71
    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    iput v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    goto :goto_7

    .line 72
    :cond_a
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    .line 73
    iput v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    .line 74
    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iput v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    .line 75
    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    iput v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 76
    :goto_7
    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    sub-int/2addr v0, v1

    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    sub-int/2addr v1, v2

    mul-int v1, v1, v0

    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iget v2, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    sub-int/2addr v0, v2

    mul-int v0, v0, v1

    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    .line 77
    iget v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v1, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    sub-int/2addr v0, v1

    iget v1, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v2, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    sub-int/2addr v1, v2

    mul-int v1, v1, v0

    iget v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    iget v2, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    sub-int/2addr v0, v2

    mul-int v0, v0, v1

    iput v0, v14, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    .line 78
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 80
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v1, v0, v15

    iget v1, v1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    aget-object v0, v0, v15

    invoke-virtual {v9, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D

    move-result-wide v0

    goto :goto_9

    :cond_b
    const-wide/16 v0, 0x0

    :goto_9
    aput-wide v0, v12, v15

    .line 81
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v1, v0, v16

    iget v1, v1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    if-le v1, v2, :cond_c

    aget-object v0, v0, v16

    invoke-virtual {v9, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D

    move-result-wide v0

    goto :goto_a

    :cond_c
    const-wide/16 v0, 0x0

    :goto_a
    aput-wide v0, v12, v16

    move/from16 v13, v16

    goto :goto_b

    :cond_d
    const-wide/16 v0, 0x0

    .line 82
    aput-wide v0, v12, v15

    add-int/lit8 v13, v16, -0x1

    :goto_b
    const/4 v0, 0x0

    .line 83
    aget-wide v1, v12, v0

    move-wide v2, v1

    const/4 v1, 0x1

    const/4 v15, 0x0

    :goto_c
    if-gt v1, v13, :cond_f

    .line 84
    aget-wide v4, v12, v1

    cmpl-double v0, v4, v2

    if-lez v0, :cond_e

    .line 85
    aget-wide v2, v12, v1

    move v15, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_f
    const-wide/16 v0, 0x0

    cmpg-double v4, v2, v0

    const/4 v2, 0x1

    if-gtz v4, :cond_10

    add-int/lit8 v0, v13, 0x1

    goto :goto_d

    :cond_10
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, p2

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_11
    move/from16 v0, p2

    .line 86
    :goto_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_13

    .line 87
    iget-object v3, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    aget-object v3, v3, v2

    .line 88
    iget-object v4, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v4

    if-lez v4, :cond_12

    .line 89
    iget-object v5, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    invoke-static {v3, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v5

    div-int/2addr v5, v4

    .line 90
    iget-object v6, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    invoke-static {v3, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v6

    div-int/2addr v6, v4

    .line 91
    iget-object v7, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    invoke-static {v3, v7}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v3

    div-int/2addr v3, v4

    const/high16 v4, -0x1000000

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 93
    :cond_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 96
    :cond_14
    new-instance v1, Lcom/google/android/material/color/utilities/QuantizerResult;

    invoke-direct {v1, v0}, Lcom/google/android/material/color/utilities/QuantizerResult;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    invoke-static {p1, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    invoke-static {p1, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    invoke-static {p1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v4, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v5, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 5
    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v4

    aget-wide v4, v3, v4

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 6
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v6, v3, v6

    sub-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 7
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v6, v3, v6

    sub-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 8
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v6, v3, v6

    add-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 9
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v6, v3, v6

    sub-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 10
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v6, v3, v6

    add-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    .line 11
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v6, v3, v6

    add-double/2addr v4, v6

    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    .line 12
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    move-result v6

    aget-wide v6, v3, v6

    sub-double/2addr v4, v6

    mul-int v0, v0, v0

    mul-int v1, v1, v1

    add-int/2addr v1, v0

    mul-int v2, v2, v2

    add-int/2addr v2, v1

    .line 13
    iget-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    invoke-static {p1, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    move-result p1

    int-to-double v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    sub-double/2addr v4, v0

    return-wide v4
.end method
