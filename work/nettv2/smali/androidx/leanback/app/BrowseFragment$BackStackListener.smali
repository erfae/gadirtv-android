.class final Landroidx/leanback/app/BrowseFragment$BackStackListener;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackStackListener"
.end annotation


# instance fields
.field public mIndexOfHeadersBackStack:I

.field public mLastEntryCount:I

.field public final synthetic this$0:Landroidx/leanback/app/BrowseFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BrowseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "BrowseFragment"

    const-string v2, "getFragmentManager() is null, stack:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 4
    iget v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    if-le v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 6
    iget-object v3, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroidx/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iput v2, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_3

    .line 8
    iget v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-lt v1, v0, :cond_3

    .line 9
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroidx/leanback/app/BrowseFragment;->isHeadersDataReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroidx/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_2
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 13
    iget-object v1, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroidx/leanback/app/BrowseFragment;

    iget-boolean v2, v1, Landroidx/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Landroidx/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    .line 15
    :cond_3
    :goto_0
    iput v0, p0, Landroidx/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    return-void
.end method
