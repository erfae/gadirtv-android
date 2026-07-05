.class final Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;
.super Ljava/lang/Object;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RowViewHolderExtra"
.end annotation


# instance fields
.field public final mRowPresenter:Landroidx/leanback/widget/RowPresenter;

.field public final mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field public final mSelectAnimator:Landroid/animation/TimeAnimator;

.field public mSelectAnimatorDurationInUse:I

.field public mSelectAnimatorInterpolatorInUse:Landroid/view/animation/DecelerateInterpolator;

.field public mSelectLevelAnimDelta:F

.field public mSelectLevelAnimStart:F

.field public final synthetic this$0:Landroidx/leanback/app/RowsSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/RowsSupportFragment;Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/animation/TimeAnimator;

    invoke-direct {p1}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    .line 3
    invoke-virtual {p2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowPresenter;

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    .line 4
    invoke-virtual {p2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 5
    invoke-virtual {p1, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-long p4, p1

    cmp-long v0, p2, p4

    if-ltz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iget-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_0
    long-to-double p2, p2

    int-to-double p4, p1

    div-double/2addr p2, p4

    double-to-float p1, p2

    .line 4
    :goto_0
    iget-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/DecelerateInterpolator;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    .line 6
    :cond_1
    iget p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget p3, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    mul-float p1, p1, p3

    add-float/2addr p1, p2

    .line 7
    iget-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object p3, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, p3, p1}, Landroidx/leanback/widget/RowPresenter;->setSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;F)V

    :cond_2
    return-void
.end method
