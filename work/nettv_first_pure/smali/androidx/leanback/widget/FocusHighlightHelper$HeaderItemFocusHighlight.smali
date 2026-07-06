.class Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;
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
    name = "HeaderItemFocusHighlight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;
    }
.end annotation


# instance fields
.field private mDuration:I

.field private mInitialized:Z

.field public mScaleEnabled:Z

.field private mSelectScale:F


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mScaleEnabled:Z

    return-void
.end method

.method private viewFocused(Landroid/view/View;Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mInitialized:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 4
    iget-boolean v2, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mScaleEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 5
    sget v2, Landroidx/leanback/R$dimen;->lb_browse_header_select_scale:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 6
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    iput v2, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    .line 8
    :goto_0
    sget v2, Landroidx/leanback/R$dimen;->lb_browse_header_select_duration:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 9
    iget v0, v1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mDuration:I

    .line 10
    iput-boolean v3, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mInitialized:Z

    .line 11
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 12
    sget v0, Landroidx/leanback/R$id;->lb_focus_animator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;

    if-nez v1, :cond_2

    .line 13
    new-instance v1, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;

    iget v2, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mSelectScale:F

    iget v3, p0, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->mDuration:I

    invoke-direct {v1, p1, v2, v3}, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight$HeaderFocusAnimator;-><init>(Landroid/view/View;FI)V

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v1, p2, p1}, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->animateFocus(ZZ)V

    return-void
.end method


# virtual methods
.method public onInitializeView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemFocused(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;->viewFocused(Landroid/view/View;Z)V

    return-void
.end method
