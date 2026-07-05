.class public final Landroidx/leanback/widget/ShadowOverlayHelper$Builder;
.super Ljava/lang/Object;
.source "ShadowOverlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/ShadowOverlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private keepForegroundDrawable:Z

.field private needsOverlay:Z

.field private needsRoundedCorner:Z

.field private needsShadow:Z

.field private options:Landroidx/leanback/widget/ShadowOverlayHelper$Options;

.field private preferZOrder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    .line 3
    sget-object v0, Landroidx/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroidx/leanback/widget/ShadowOverlayHelper$Options;

    iput-object v0, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroidx/leanback/widget/ShadowOverlayHelper$Options;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroidx/leanback/widget/ShadowOverlayHelper;
    .locals 6

    .line 1
    new-instance v0, Landroidx/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v0}, Landroidx/leanback/widget/ShadowOverlayHelper;-><init>()V

    .line 2
    iget-boolean v1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay:Z

    iput-boolean v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    .line 3
    iget-boolean v1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayHelper;->supportsRoundedCorner()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    .line 4
    iget-boolean v1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsShadow:Z

    .line 5
    iget-boolean v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroidx/leanback/widget/ShadowOverlayHelper$Options;

    .line 7
    invoke-virtual {v1}, Landroidx/leanback/widget/ShadowOverlayHelper$Options;->getRoundedCornerRadius()I

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 9
    sget v4, Landroidx/leanback/R$dimen;->lb_rounded_rect_corner_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Landroidx/leanback/widget/ShadowOverlayHelper$Options;->getRoundedCornerRadius()I

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mRoundedCornerRadius:I

    .line 11
    :cond_3
    :goto_2
    iget-boolean v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsShadow:Z

    if-eqz v1, :cond_9

    .line 12
    iget-boolean v1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayHelper;->supportsDynamicShadow()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x3

    .line 13
    iput v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    .line 14
    iget-object v1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroidx/leanback/widget/ShadowOverlayHelper$Options;

    .line 15
    invoke-virtual {v1}, Landroidx/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowUnfocusedZ()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 17
    sget v1, Landroidx/leanback/R$dimen;->lb_material_shadow_focused_z:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    .line 18
    sget v1, Landroidx/leanback/R$dimen;->lb_material_shadow_normal_z:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v1}, Landroidx/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowFocusedZ()F

    move-result p1

    iput p1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mFocusedZ:F

    .line 20
    invoke-virtual {v1}, Landroidx/leanback/widget/ShadowOverlayHelper$Options;->getDynamicShadowUnfocusedZ()F

    move-result p1

    iput p1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mUnfocusedZ:F

    .line 21
    :goto_3
    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayHelper;->supportsForeground()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    iput-boolean v2, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p1, 0x2

    .line 22
    iput p1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    .line 23
    iput-boolean v3, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    goto :goto_5

    .line 24
    :cond_9
    iput v3, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    .line 25
    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayHelper;->supportsForeground()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    if-eqz p1, :cond_b

    :cond_a
    iget-boolean p1, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    :cond_b
    iput-boolean v2, v0, Landroidx/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    :goto_5
    return-object v0
.end method

.method public keepForegroundDrawable(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    return-object p0
.end method

.method public needsOverlay(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay:Z

    return-object p0
.end method

.method public needsRoundedCorner(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner:Z

    return-object p0
.end method

.method public needsShadow(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow:Z

    return-object p0
.end method

.method public options(Landroidx/leanback/widget/ShadowOverlayHelper$Options;)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroidx/leanback/widget/ShadowOverlayHelper$Options;

    return-object p0
.end method

.method public preferZOrder(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    return-object p0
.end method
