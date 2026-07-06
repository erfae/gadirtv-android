.class final Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FragmentHostImpl"
.end annotation


# instance fields
.field public mShowTitleView:Z

.field public final synthetic this$0:Landroidx/leanback/app/BrowseSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BrowseSupportFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    return-void
.end method


# virtual methods
.method public notifyDataReady(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object p1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p1, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p1, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyViewCreated(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, p1, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    .line 2
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p1, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, p1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    :cond_0
    return-void
.end method

.method public showTitleView(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    .line 2
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object p1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p1, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    :cond_2
    :goto_0
    return-void
.end method
