.class Landroidx/leanback/app/PlaybackFragment$3;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/PlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/PlaybackFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/PlaybackFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget v0, p1, Landroidx/leanback/app/PlaybackFragment;->mBgAlpha:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/app/PlaybackFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/app/PlaybackFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setAnimateChildLayout(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget-object p1, p1, Landroidx/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;->onFadeInComplete()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/app/PlaybackFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroidx/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    instance-of v0, v0, Landroidx/leanback/widget/PlaybackRowPresenter;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/PlaybackRowPresenter;

    .line 11
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;

    .line 12
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PlaybackRowPresenter;->onReappear(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 13
    :cond_2
    iget-object p1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    iget-object p1, p1, Landroidx/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Landroidx/leanback/app/PlaybackFragment$OnFadeCompleteListener;->onFadeOutComplete()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/PlaybackFragment$3;->this$0:Landroidx/leanback/app/PlaybackFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/app/PlaybackFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/app/PlaybackFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setAnimateChildLayout(Z)V

    :cond_0
    return-void
.end method
