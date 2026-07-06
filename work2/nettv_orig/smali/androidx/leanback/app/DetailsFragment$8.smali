.class Landroidx/leanback/app/DetailsFragment$8;
.super Landroidx/leanback/transition/TransitionListener;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsFragment$8;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/DetailsFragment$8;->this$0:Landroidx/leanback/app/DetailsFragment;

    .line 2
    iget-object v0, p1, Landroidx/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->stopParallax()V

    .line 5
    iget-object v0, v0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->isVideoVisible()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Landroidx/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 8
    iget-object v1, p1, Landroidx/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 9
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Landroidx/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    :cond_1
    return-void
.end method
