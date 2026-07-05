.class Landroidx/leanback/app/BaseRowFragment$1;
.super Landroidx/leanback/widget/OnChildViewHolderSelectedListener;
.source "BaseRowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BaseRowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BaseRowFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BaseRowFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BaseRowFragment$1;->this$0:Landroidx/leanback/app/BaseRowFragment;

    invoke-direct {p0}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/leanback/app/BaseRowFragment$1;->this$0:Landroidx/leanback/app/BaseRowFragment;

    iget-object v0, p1, Landroidx/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroidx/leanback/app/BaseRowFragment$LateSelectionObserver;

    iget-boolean v0, v0, Landroidx/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-nez v0, :cond_0

    .line 2
    iput p3, p1, Landroidx/leanback/app/BaseRowFragment;->mSelectedPosition:I

    .line 3
    invoke-virtual {p1, p2, p3, p4}, Landroidx/leanback/app/BaseRowFragment;->onRowSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    :cond_0
    return-void
.end method
