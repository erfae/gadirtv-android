.class public abstract Landroidx/leanback/widget/ParallaxEffect;
.super Ljava/lang/Object;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/ParallaxEffect$FloatEffect;,
        Landroidx/leanback/widget/ParallaxEffect$IntEffect;
    }
.end annotation


# instance fields
.field public final mMarkerValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/Parallax$PropertyMarkerValue;",
            ">;"
        }
    .end annotation
.end field

.field public final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/ParallaxTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final mTotalWeights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final mWeights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addTarget(Landroidx/leanback/widget/ParallaxTarget;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract calculateDirectValue(Landroidx/leanback/widget/Parallax;)Ljava/lang/Number;
.end method

.method public abstract calculateFraction(Landroidx/leanback/widget/Parallax;)F
.end method

.method public final getFractionWithWeightAdjusted(FI)F
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4
    iget-object v2, p0, Landroidx/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, p1

    div-float p1, v2, v0

    if-lt p2, v1, :cond_2

    .line 5
    iget-object v2, p0, Landroidx/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    if-lt p2, v1, :cond_2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    :goto_1
    div-float/2addr p2, v0

    add-float/2addr p1, p2

    :cond_2
    return p1
.end method

.method public final getPropertyRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/Parallax$PropertyMarkerValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/ParallaxTarget;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getWeights()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final performMapping(Landroidx/leanback/widget/Parallax;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p0, Landroidx/leanback/widget/ParallaxEffect$IntEffect;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->verifyIntProperties()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->verifyFloatProperties()V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_1
    iget-object v4, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 6
    iget-object v4, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/ParallaxTarget;

    .line 7
    invoke-virtual {v4}, Landroidx/leanback/widget/ParallaxTarget;->isDirectMapping()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ParallaxEffect;->calculateDirectValue(Landroidx/leanback/widget/Parallax;)Ljava/lang/Number;

    move-result-object v1

    .line 9
    :cond_2
    invoke-virtual {v4, v1}, Landroidx/leanback/widget/ParallaxTarget;->directUpdate(Ljava/lang/Number;)V

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    .line 10
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ParallaxEffect;->calculateFraction(Landroidx/leanback/widget/Parallax;)F

    move-result v0

    const/4 v3, 0x1

    .line 11
    :cond_4
    invoke-virtual {v4, v0}, Landroidx/leanback/widget/ParallaxTarget;->update(F)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final removeTarget(Landroidx/leanback/widget/ParallaxTarget;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs setPropertyRanges([Landroidx/leanback/widget/Parallax$PropertyMarkerValue;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    iget-object v3, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs setWeights([F)V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    cmpg-float v3, v4, v3

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 6
    iget-object v4, p0, Landroidx/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v3, v2

    .line 7
    iget-object v2, p0, Landroidx/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final target(Landroidx/leanback/widget/ParallaxTarget;)Landroidx/leanback/widget/ParallaxEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final target(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)Landroidx/leanback/widget/ParallaxEffect;
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;

    invoke-direct {v1, p1, p2}, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;-><init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final target(Ljava/lang/Object;Landroid/util/Property;)Landroidx/leanback/widget/ParallaxEffect;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Number;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;TV;>;)",
            "Landroidx/leanback/widget/ParallaxEffect;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Landroidx/leanback/widget/ParallaxTarget$DirectPropertyTarget;

    invoke-direct {v1, p1, p2}, Landroidx/leanback/widget/ParallaxTarget$DirectPropertyTarget;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final varargs weights([F)Landroidx/leanback/widget/ParallaxEffect;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ParallaxEffect;->setWeights([F)V

    return-object p0
.end method
