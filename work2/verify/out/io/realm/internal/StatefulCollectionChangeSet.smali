.class public Lio/realm/internal/StatefulCollectionChangeSet;
.super Ljava/lang/Object;
.source "StatefulCollectionChangeSet.java"

# interfaces
.implements Lio/realm/OrderedCollectionChangeSet;


# instance fields
.field private final changeset:Lio/realm/OrderedCollectionChangeSet;

.field private final error:Ljava/lang/Throwable;

.field private final state:Lio/realm/OrderedCollectionChangeSet$State;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsCollectionChangeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/internal/StatefulCollectionChangeSet;->changeset:Lio/realm/OrderedCollectionChangeSet;

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->isFirstAsyncCallback()Z

    move-result v0

    .line 4
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->getError()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/StatefulCollectionChangeSet;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_16

    .line 5
    sget-object p1, Lio/realm/OrderedCollectionChangeSet$State;->ERROR:Lio/realm/OrderedCollectionChangeSet$State;

    iput-object p1, p0, Lio/realm/internal/StatefulCollectionChangeSet;->state:Lio/realm/OrderedCollectionChangeSet$State;

    goto :goto_1f

    :cond_16
    if-eqz v0, :cond_1b

    .line 6
    sget-object p1, Lio/realm/OrderedCollectionChangeSet$State;->INITIAL:Lio/realm/OrderedCollectionChangeSet$State;

    goto :goto_1d

    :cond_1b
    sget-object p1, Lio/realm/OrderedCollectionChangeSet$State;->UPDATE:Lio/realm/OrderedCollectionChangeSet$State;

    :goto_1d
    iput-object p1, p0, Lio/realm/internal/StatefulCollectionChangeSet;->state:Lio/realm/OrderedCollectionChangeSet$State;

    :goto_1f
    return-void
.end method


# virtual methods
.method public getChangeRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/StatefulCollectionChangeSet;->changeset:Lio/realm/OrderedCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/OrderedCollectionChangeSet;->getChangeRanges()[Lio/realm/OrderedCollectionChangeSet$Range;

    move-result-object v0

    return-object v0
.end method

.method public getChanges()[I
    .registers 2

    iget-object v0, p0, Lio/realm/internal/StatefulCollectionChangeSet;->changeset:Lio/realm/OrderedCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/OrderedCollectionChangeSet;->getChanges()[I

    move-result-object v0

    return-object v0
.end method

.method public getDeletionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/StatefulCollectionChangeSet;->changeset:Lio/realm/OrderedCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/OrderedCollectionChangeSet;->getDeletionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;

    move-result-object v0

    return-object v0
.end method

.method public getDeletions()[I
    .registers 2

    iget-object v0, p0, Lio/realm/internal/StatefulCollectionChangeSet;->changeset:Lio/realm/OrderedCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/OrderedCollectionChangeSet;->getDeletions()[I

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/internal/StatefulCollectionChangeSet;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getInsertionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/StatefulCollectionChangeSet;->changeset:Lio/realm/OrderedCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/OrderedCollectionChangeSet;->getInsertionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;

    move-result-object v0

    return-object v0
.end method

.method public getInsertions()[I
    .registers 2

    iget-object v0, p0, Lio/realm/internal/StatefulCollectionChangeSet;->changeset:Lio/realm/OrderedCollectionChangeSet;

    invoke-interface {v0}, Lio/realm/OrderedCollectionChangeSet;->getInsertions()[I

    move-result-object v0

    return-object v0
.end method

.method public getState()Lio/realm/OrderedCollectionChangeSet$State;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/StatefulCollectionChangeSet;->state:Lio/realm/OrderedCollectionChangeSet$State;

    return-object v0
.end method
