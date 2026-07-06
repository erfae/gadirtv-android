.class Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"

# interfaces
.implements Landroidx/leanback/widget/FocusHighlightHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/FocusHighlightHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrowseItemFocusHighlight"
.end annotation


# static fields
.field private static final DURATION_MS:I = 0x96


# instance fields
.field private mScaleIndex:I

.field private final mUseDimmer:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Landroidx/leanback/widget/FocusHighlightHelper;->getResId(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    iput p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mScaleIndex:I

    .line 4
    iput-boolean p2, p0, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mUseDimmer:Z

    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unhandled zoom index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getOrCreateAnimator(Landroid/view/View;)Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;
    .locals 5

    .line 1
    sget v0, Landroidx/leanback/R$id;->lb_focus_animator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->getScale(Landroid/content/res/Resources;)F

    move-result v2

    iget-boolean v3, p0, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mUseDimmer:Z

    const/16 v4, 0x96

    invoke-direct {v1, p1, v2, v3, v4}, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;-><init>(Landroid/view/View;FZI)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method private getScale(Landroid/content/res/Resources;)F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->mScaleIndex:I

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Landroidx/leanback/widget/FocusHighlightHelper;->getResId(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public onInitializeView(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->getOrCreateAnimator(Landroid/view/View;)Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->animateFocus(ZZ)V

    return-void
.end method

.method public onItemFocused(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;->getOrCreateAnimator(Landroid/view/View;)Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->animateFocus(ZZ)V

    return-void
.end method
