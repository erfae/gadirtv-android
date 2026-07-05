.class public Lio/realm/internal/ObserverPairList;
.super Ljava/lang/Object;
.source "ObserverPairList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/ObserverPairList$Callback;,
        Lio/realm/internal/ObserverPairList$ObserverPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/internal/ObserverPairList$ObserverPair;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cleared:Z

.field private pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    return-void
.end method


# virtual methods
.method public add(Lio/realm/internal/ObserverPairList$ObserverPair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iput-boolean v1, p1, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    .line 4
    :cond_10
    iget-boolean p1, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    if-eqz p1, :cond_16

    .line 5
    iput-boolean v1, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    :cond_16
    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    .line 2
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public foreach(Lio/realm/internal/ObserverPairList$Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/ObserverPairList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/ObserverPairList$ObserverPair;

    .line 2
    iget-boolean v2, p0, Lio/realm/internal/ObserverPairList;->cleared:Z

    if-eqz v2, :cond_17

    goto :goto_2d

    .line 3
    :cond_17
    iget-object v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_25

    .line 4
    iget-object v2, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5
    :cond_25
    iget-boolean v3, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    if-nez v3, :cond_6

    .line 6
    invoke-interface {p1, v1, v2}, Lio/realm/internal/ObserverPairList$Callback;->onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V

    goto :goto_6

    :cond_2d
    :goto_2d
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TS;TU;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/ObserverPairList$ObserverPair;

    .line 2
    iget-object v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_6

    iget-object v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->listener:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    .line 4
    iget-object p1, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method

.method public final removeByObserver(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/ObserverPairList$ObserverPair;

    .line 2
    iget-object v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->observerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_6

    :cond_1c
    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lio/realm/internal/ObserverPairList$ObserverPair;->removed:Z

    .line 4
    iget-object v2, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_25
    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lio/realm/internal/ObserverPairList;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
