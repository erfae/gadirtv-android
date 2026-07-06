.class Landroidx/leanback/app/BrowseSupportFragment$3;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BrowseSupportFragment;

.field public final synthetic val$withHeaders:Z


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BrowseSupportFragment;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iput-boolean p2, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->val$withHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/HeadersSupportFragment;->onTransitionPrepare()Z

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/HeadersSupportFragment;->onTransitionStart()V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, v0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v2, :cond_0

    sget v2, Landroidx/leanback/R$transition;->lb_browse_headers_in:I

    goto :goto_0

    :cond_0
    sget v2, Landroidx/leanback/R$transition;->lb_browse_headers_out:I

    :goto_0
    invoke-static {v1, v2}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 5
    new-instance v2, Landroidx/leanback/app/BrowseSupportFragment$9;

    invoke-direct {v2, v0}, Landroidx/leanback/app/BrowseSupportFragment$9;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    invoke-static {v1, v2}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    .line 6
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroidx/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->val$withHeaders:Z

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$BrowseTransitionListener;->onHeadersTransitionStart(Z)V

    .line 8
    :cond_1
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->val$withHeaders:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mSceneWithHeaders:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v1, v0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    if-eqz v1, :cond_4

    .line 10
    iget-boolean v1, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->val$withHeaders:Z

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroidx/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_2

    .line 13
    :cond_3
    iget-object v1, v0, Landroidx/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

    iget v1, v1, Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-ltz v1, :cond_4

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment$3;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getId()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(II)Z

    :cond_4
    :goto_2
    return-void
.end method
