.class Landroidx/leanback/app/SearchSupportFragment$3;
.super Ljava/lang/Object;
.source "SearchSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/SearchSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/SearchSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/SearchSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    iget-object v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/leanback/app/SearchSupportFragment;->mProvider:Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v0}, Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;->getResultsAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    iget-object v2, v1, Landroidx/leanback/app/SearchSupportFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eq v0, v2, :cond_6

    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 4
    iget-object v5, v1, Landroidx/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v2, v5}, Landroidx/leanback/widget/ObjectAdapter;->unregisterObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 5
    iput-object v4, v1, Landroidx/leanback/app/SearchSupportFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 6
    :cond_2
    iget-object v1, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    iput-object v0, v1, Landroidx/leanback/app/SearchSupportFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, v1, Landroidx/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->registerObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 8
    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/SearchSupportFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    :cond_4
    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    iget-object v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/SearchSupportFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/app/BaseRowSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 10
    :cond_5
    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    .line 11
    iget-object v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v2, v0, Landroidx/leanback/app/SearchSupportFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz v2, :cond_6

    .line 12
    iput-object v4, v0, Landroidx/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    .line 13
    iget-object v2, v0, Landroidx/leanback/app/SearchSupportFragment;->mProvider:Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v2, v1}, Landroidx/leanback/app/SearchSupportFragment$SearchResultProvider;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    iget v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mStatus:I

    .line 15
    :cond_6
    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/SearchSupportFragment;->updateSearchBarNextFocusId()V

    .line 16
    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    iget-boolean v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Landroidx/leanback/app/SearchSupportFragment$3;->this$0:Landroidx/leanback/app/SearchSupportFragment;

    iget-object v1, v0, Landroidx/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {v0}, Landroidx/leanback/app/SearchSupportFragment;->updateFocus()V

    :goto_1
    return-void
.end method
