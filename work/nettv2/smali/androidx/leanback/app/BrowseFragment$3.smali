.class Landroidx/leanback/app/BrowseFragment$3;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BrowseFragment;

.field public final synthetic val$withHeaders:Z


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BrowseFragment;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iput-boolean p2, p0, Landroidx/leanback/app/BrowseFragment$3;->val$withHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mHeadersFragment:Landroidx/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/HeadersFragment;->onTransitionPrepare()Z

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mHeadersFragment:Landroidx/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/HeadersFragment;->onTransitionStart()V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    .line 4
    invoke-static {v0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, v0, Landroidx/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v2, :cond_0

    sget v2, Landroidx/leanback/R$transition;->lb_browse_headers_in:I

    goto :goto_0

    :cond_0
    sget v2, Landroidx/leanback/R$transition;->lb_browse_headers_out:I

    :goto_0
    invoke-static {v1, v2}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 5
    new-instance v2, Landroidx/leanback/app/BrowseFragment$9;

    invoke-direct {v2, v0}, Landroidx/leanback/app/BrowseFragment$9;-><init>(Landroidx/leanback/app/BrowseFragment;)V

    invoke-static {v1, v2}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    .line 6
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroidx/leanback/app/BrowseFragment$BrowseTransitionListener;

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, p0, Landroidx/leanback/app/BrowseFragment$3;->val$withHeaders:Z

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrowseFragment$BrowseTransitionListener;->onHeadersTransitionStart(Z)V

    .line 8
    :cond_1
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseFragment$3;->val$withHeaders:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mSceneWithHeaders:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroidx/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-boolean v1, v0, Landroidx/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    if-eqz v1, :cond_4

    .line 10
    iget-boolean v1, p0, Landroidx/leanback/app/BrowseFragment$3;->val$withHeaders:Z

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroidx/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_2

    .line 13
    :cond_3
    iget-object v1, v0, Landroidx/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroidx/leanback/app/BrowseFragment$BackStackListener;

    iget v1, v1, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-ltz v1, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$3;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    :cond_4
    :goto_2
    return-void
.end method
