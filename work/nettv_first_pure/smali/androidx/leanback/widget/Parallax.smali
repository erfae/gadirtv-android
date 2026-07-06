.class public abstract Landroidx/leanback/widget/Parallax;
.super Ljava/lang/Object;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;,
        Landroidx/leanback/widget/Parallax$FloatProperty;,
        Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;,
        Landroidx/leanback/widget/Parallax$IntProperty;,
        Landroidx/leanback/widget/Parallax$PropertyMarkerValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyT:",
        "Landroid/util/Property;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/ParallaxEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatValues:[F

.field public final mProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TPropertyT;>;"
        }
    .end annotation
.end field

.field public final mPropertiesReadOnly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TPropertyT;>;"
        }
    .end annotation
.end field

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/Parallax;->mPropertiesReadOnly:Ljava/util/List;

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs addEffect([Landroidx/leanback/widget/Parallax$PropertyMarkerValue;)Landroidx/leanback/widget/ParallaxEffect;
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/leanback/widget/Parallax$IntProperty;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/leanback/widget/ParallaxEffect$IntEffect;

    invoke-direct {v0}, Landroidx/leanback/widget/ParallaxEffect$IntEffect;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;

    invoke-direct {v0}, Landroidx/leanback/widget/ParallaxEffect$FloatEffect;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ParallaxEffect;->setPropertyRanges([Landroidx/leanback/widget/Parallax$PropertyMarkerValue;)V

    .line 5
    iget-object p1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final addProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TPropertyT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/Parallax;->createProperty(Ljava/lang/String;I)Landroid/util/Property;

    move-result-object p1

    .line 3
    instance-of v1, p1, Landroidx/leanback/widget/Parallax$IntProperty;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    array-length v1, v1

    if-ne v1, v0, :cond_1

    mul-int/lit8 v3, v1, 0x2

    .line 5
    new-array v3, v3, [I

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    iget-object v4, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v3, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    .line 8
    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    const v2, 0x7fffffff

    aput v2, v1, v0

    goto :goto_2

    .line 9
    :cond_2
    instance-of v1, p1, Landroidx/leanback/widget/Parallax$FloatProperty;

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    array-length v1, v1

    if-ne v1, v0, :cond_4

    mul-int/lit8 v3, v1, 0x2

    .line 11
    new-array v3, v3, [F

    :goto_1
    if-ge v2, v1, :cond_3

    .line 12
    iget-object v4, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_3
    iput-object v3, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    .line 14
    :cond_4
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    aput v2, v1, v0

    .line 15
    :goto_2
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Property type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract createProperty(Ljava/lang/String;I)Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TPropertyT;"
        }
    .end annotation
.end method

.method public getEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/ParallaxEffect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method public final getFloatPropertyValue(I)F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    aget p1, v0, p1

    return p1
.end method

.method public final getIntPropertyValue(I)I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    aget p1, v0, p1

    return p1
.end method

.method public abstract getMaxValue()F
.end method

.method public final getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TPropertyT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mPropertiesReadOnly:Ljava/util/List;

    return-object v0
.end method

.method public removeAllEffects()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeEffect(Landroidx/leanback/widget/ParallaxEffect;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setFloatPropertyValue(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    aput p2, v0, p1

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final setIntPropertyValue(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    aput p2, v0, p1

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public updateValues()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ParallaxEffect;

    invoke-virtual {v1, p0}, Landroidx/leanback/widget/ParallaxEffect;->performMapping(Landroidx/leanback/widget/Parallax;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final verifyFloatProperties()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 3
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 4
    iget-object v5, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    aget v5, v5, v4

    const/4 v6, 0x3

    const/4 v7, 0x4

    cmpg-float v8, v5, v0

    if-ltz v8, :cond_3

    const v8, -0x800001

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v5, v7, [Ljava/lang/Object;

    add-int/lit8 v7, v4, -0x1

    .line 6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const-string v1, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    .line 8
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v5, v7, [Ljava/lang/Object;

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    sub-int/2addr v4, v3

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const-string v1, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    .line 12
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public final verifyIntProperties()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 3
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 4
    iget-object v5, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    aget v5, v5, v4

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-lt v5, v0, :cond_3

    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_2

    const v0, 0x7fffffff

    if-eq v5, v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v5, v7, [Ljava/lang/Object;

    add-int/lit8 v7, v4, -0x1

    .line 6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const-string v1, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    .line 8
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v5, v7, [Ljava/lang/Object;

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    sub-int/2addr v4, v3

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const-string v1, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    .line 12
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method
