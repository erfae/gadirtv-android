.class Lio/realm/RealmRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "RealmRecyclerViewAdapter.java"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmRecyclerViewAdapter;->createListener()Lio/realm/OrderedRealmCollectionChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/RealmRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lio/realm/RealmRecyclerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter$1;->this$0:Lio/realm/RealmRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .locals 7

    .line 1
    invoke-interface {p2}, Lio/realm/OrderedCollectionChangeSet;->getState()Lio/realm/OrderedCollectionChangeSet$State;

    move-result-object p1

    sget-object v0, Lio/realm/OrderedCollectionChangeSet$State;->INITIAL:Lio/realm/OrderedCollectionChangeSet$State;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/realm/RealmRecyclerViewAdapter$1;->this$0:Lio/realm/RealmRecyclerViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 3
    :cond_0
    invoke-interface {p2}, Lio/realm/OrderedCollectionChangeSet;->getDeletionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;

    move-result-object p1

    .line 4
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    aget-object v1, p1, v0

    .line 6
    iget-object v2, p0, Lio/realm/RealmRecyclerViewAdapter$1;->this$0:Lio/realm/RealmRecyclerViewAdapter;

    iget v3, v1, Lio/realm/OrderedCollectionChangeSet$Range;->startIndex:I

    invoke-virtual {v2}, Lio/realm/RealmRecyclerViewAdapter;->dataOffset()I

    move-result v4

    add-int/2addr v4, v3

    iget v1, v1, Lio/realm/OrderedCollectionChangeSet$Range;->length:I

    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p2}, Lio/realm/OrderedCollectionChangeSet;->getInsertionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;

    move-result-object p1

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 9
    iget-object v4, p0, Lio/realm/RealmRecyclerViewAdapter$1;->this$0:Lio/realm/RealmRecyclerViewAdapter;

    iget v5, v3, Lio/realm/OrderedCollectionChangeSet$Range;->startIndex:I

    invoke-virtual {v4}, Lio/realm/RealmRecyclerViewAdapter;->dataOffset()I

    move-result v6

    add-int/2addr v6, v5

    iget v3, v3, Lio/realm/OrderedCollectionChangeSet$Range;->length:I

    invoke-virtual {v4, v6, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lio/realm/RealmRecyclerViewAdapter$1;->this$0:Lio/realm/RealmRecyclerViewAdapter;

    invoke-static {p1}, Lio/realm/RealmRecyclerViewAdapter;->access$000(Lio/realm/RealmRecyclerViewAdapter;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-interface {p2}, Lio/realm/OrderedCollectionChangeSet;->getChangeRanges()[Lio/realm/OrderedCollectionChangeSet$Range;

    move-result-object p1

    .line 12
    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_4

    aget-object v0, p1, v1

    .line 13
    iget-object v2, p0, Lio/realm/RealmRecyclerViewAdapter$1;->this$0:Lio/realm/RealmRecyclerViewAdapter;

    iget v3, v0, Lio/realm/OrderedCollectionChangeSet$Range;->startIndex:I

    invoke-virtual {v2}, Lio/realm/RealmRecyclerViewAdapter;->dataOffset()I

    move-result v4

    add-int/2addr v4, v3

    iget v0, v0, Lio/realm/OrderedCollectionChangeSet$Range;->length:I

    invoke-virtual {v2, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
