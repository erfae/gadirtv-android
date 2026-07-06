.class Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "BaseRowSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BaseRowSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LateSelectionObserver"
.end annotation


# instance fields
.field public mIsLateSelection:Z

.field public final synthetic this$0:Landroidx/leanback/app/BaseRowSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BaseRowSupportFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->this$0:Landroidx/leanback/app/BaseRowSupportFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->mIsLateSelection:Z

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->performLateSelection()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->performLateSelection()V

    return-void
.end method

.method public final performLateSelection()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->mIsLateSelection:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->this$0:Landroidx/leanback/app/BaseRowSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->this$0:Landroidx/leanback/app/BaseRowSupportFragment;

    iget-object v1, v0, Landroidx/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v1, :cond_1

    .line 5
    iget v0, v0, Landroidx/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    :cond_1
    return-void
.end method
