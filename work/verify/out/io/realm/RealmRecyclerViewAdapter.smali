.class public abstract Lio/realm/RealmRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RealmRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        "S:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private adapterData:Lio/realm/OrderedRealmCollection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final hasAutoUpdates:Z

.field private final listener:Lio/realm/OrderedRealmCollectionChangeListener;

.field private final updateOnModification:Z


# direct methods
.method public constructor <init>(Lio/realm/OrderedRealmCollection;Z)V
    .registers 4
    .param p1    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/realm/RealmRecyclerViewAdapter;-><init>(Lio/realm/OrderedRealmCollection;ZZ)V

    return-void
.end method

.method public constructor <init>(Lio/realm/OrderedRealmCollection;ZZ)V
    .registers 5
    .param p1    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;ZZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    if-eqz p1, :cond_14

    .line 3
    invoke-interface {p1}, Lio/realm/RealmCollection;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 4
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only use this adapter with managed RealmCollection, for un-managed lists you can just use the BaseRecyclerViewAdapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_14
    :goto_14
    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    .line 6
    iput-boolean p2, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    if-eqz p2, :cond_1f

    .line 7
    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->createListener()Lio/realm/OrderedRealmCollectionChangeListener;

    move-result-object p1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/OrderedRealmCollectionChangeListener;

    .line 8
    iput-boolean p3, p0, Lio/realm/RealmRecyclerViewAdapter;->updateOnModification:Z

    return-void
.end method

.method public static synthetic access$000(Lio/realm/RealmRecyclerViewAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lio/realm/RealmRecyclerViewAdapter;->updateOnModification:Z

    return p0
.end method

.method private addListener(Lio/realm/OrderedRealmCollection;)V
    .registers 4
    .param p1    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/realm/RealmResults;

    if-eqz v0, :cond_c

    .line 2
    check-cast p1, Lio/realm/RealmResults;

    .line 3
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    goto :goto_17

    .line 4
    :cond_c
    instance-of v0, p1, Lio/realm/RealmList;

    if-eqz v0, :cond_18

    .line 5
    check-cast p1, Lio/realm/RealmList;

    .line 6
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    :goto_17
    return-void

    .line 7
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmCollection not supported: "

    .line 8
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createListener()Lio/realm/OrderedRealmCollectionChangeListener;
    .registers 2

    new-instance v0, Lio/realm/RealmRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lio/realm/RealmRecyclerViewAdapter$1;-><init>(Lio/realm/RealmRecyclerViewAdapter;)V

    return-object v0
.end method

.method private isDataValid()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lio/realm/RealmCollection;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private removeListener(Lio/realm/OrderedRealmCollection;)V
    .registers 4
    .param p1    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/realm/RealmResults;

    if-eqz v0, :cond_c

    .line 2
    check-cast p1, Lio/realm/RealmResults;

    .line 3
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    goto :goto_17

    .line 4
    :cond_c
    instance-of v0, p1, Lio/realm/RealmList;

    if-eqz v0, :cond_18

    .line 5
    check-cast p1, Lio/realm/RealmList;

    .line 6
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    :goto_17
    return-void

    .line 7
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmCollection not supported: "

    .line 8
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dataOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Lio/realm/OrderedRealmCollection;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    return-object v0
.end method

.method public getItem(I)Lio/realm/RealmModel;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1e

    .line 1
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    return-object v1

    .line 2
    :cond_e
    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lio/realm/RealmModel;

    :cond_1d
    return-object v1

    .line 3
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only indexes >= 0 are allowed. Input was: "

    .line 4
    invoke-static {v1, p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemCount()I
    .registers 2

    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-boolean p1, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    iget-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-direct {p0, p1}, Lio/realm/RealmRecyclerViewAdapter;->addListener(Lio/realm/OrderedRealmCollection;)V

    :cond_12
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-boolean p1, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    iget-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-direct {p0, p1}, Lio/realm/RealmRecyclerViewAdapter;->removeListener(Lio/realm/OrderedRealmCollection;)V

    :cond_12
    return-void
.end method

.method public updateData(Lio/realm/OrderedRealmCollection;)V
    .registers 3
    .param p1    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    if-eqz v0, :cond_14

    .line 2
    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-direct {p0, v0}, Lio/realm/RealmRecyclerViewAdapter;->removeListener(Lio/realm/OrderedRealmCollection;)V

    :cond_f
    if-eqz p1, :cond_14

    .line 4
    invoke-direct {p0, p1}, Lio/realm/RealmRecyclerViewAdapter;->addListener(Lio/realm/OrderedRealmCollection;)V

    .line 5
    :cond_14
    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
