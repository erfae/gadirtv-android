.class Landroidx/leanback/app/DetailsSupportFragment$8;
.super Landroidx/leanback/transition/TransitionListener;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$8;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$8;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    .line 2
    iget-object v0, p1, Landroidx/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->stopParallax()V

    .line 5
    iget-object v0, v0, Landroidx/leanback/app/DetailsSupportFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->isVideoVisible()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Landroidx/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 8
    iget-object v1, p1, Landroidx/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Landroidx/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method
