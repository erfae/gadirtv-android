.class public abstract Lio/realm/RealmBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "RealmBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field public adapterData:Lio/realm/OrderedRealmCollection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final listener:Lio/realm/RealmChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/OrderedRealmCollection;)V
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
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-eqz p1, :cond_14

    .line 2
    invoke-interface {p1}, Lio/realm/RealmCollection;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 3
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only use this adapter with managed list, for un-managed lists you can just use the BaseAdapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_14
    :goto_14
    iput-object p1, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    .line 5
    new-instance v0, Lio/realm/RealmBaseAdapter$1;

    invoke-direct {v0, p0}, Lio/realm/RealmBaseAdapter$1;-><init>(Lio/realm/RealmBaseAdapter;)V

    iput-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    .line 6
    invoke-direct {p0}, Lio/realm/RealmBaseAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 7
    invoke-direct {p0, p1}, Lio/realm/RealmBaseAdapter;->addListener(Lio/realm/OrderedRealmCollection;)V

    :cond_26
    return-void
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
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    goto :goto_17

    .line 4
    :cond_c
    instance-of v0, p1, Lio/realm/RealmList;

    if-eqz v0, :cond_18

    .line 5
    check-cast p1, Lio/realm/RealmList;

    .line 6
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->addChangeListener(Lio/realm/RealmChangeListener;)V

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

.method private isDataValid()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

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
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    goto :goto_17

    .line 4
    :cond_c
    instance-of v0, p1, Lio/realm/RealmList;

    if-eqz v0, :cond_18

    .line 5
    check-cast p1, Lio/realm/RealmList;

    .line 6
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->removeChangeListener(Lio/realm/RealmChangeListener;)V

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
.method public getCount()I
    .registers 2

    invoke-direct {p0}, Lio/realm/RealmBaseAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public getItem(I)Lio/realm/RealmModel;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/realm/RealmBaseAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/RealmBaseAdapter;->getItem(I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
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
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    if-eqz v0, :cond_1a

    .line 2
    invoke-direct {p0}, Lio/realm/RealmBaseAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-direct {p0, v0}, Lio/realm/RealmBaseAdapter;->removeListener(Lio/realm/OrderedRealmCollection;)V

    :cond_f
    if-eqz p1, :cond_1a

    .line 4
    invoke-interface {p1}, Lio/realm/RealmCollection;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5
    invoke-direct {p0, p1}, Lio/realm/RealmBaseAdapter;->addListener(Lio/realm/OrderedRealmCollection;)V

    .line 6
    :cond_1a
    iput-object p1, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    .line 7
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
