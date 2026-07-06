.class Landroidx/leanback/app/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/SearchFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    iget-object v0, v0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    iget-object v2, v1, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eq v0, v2, :cond_1

    .line 3
    iget-object v0, v1, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    iget-object v0, v0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    iget-object v1, v0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    iget-object v0, v0, Landroidx/leanback/app/SearchFragment;->mResultAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/app/BaseRowFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    iget-object v0, v0, Landroidx/leanback/app/SearchFragment;->mRowsFragment:Landroidx/leanback/app/RowsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/app/RowsFragment;->setSelectedPosition(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/SearchFragment;->updateSearchBarVisibility()V

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    iget v1, v0, Landroidx/leanback/app/SearchFragment;->mStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Landroidx/leanback/app/SearchFragment;->updateFocus()V

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$2;->this$0:Landroidx/leanback/app/SearchFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/SearchFragment;->updateSearchBarNextFocusId()V

    return-void
.end method
