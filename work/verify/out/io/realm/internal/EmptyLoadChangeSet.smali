.class public Lio/realm/internal/EmptyLoadChangeSet;
.super Lio/realm/internal/OsCollectionChangeSet;
.source "EmptyLoadChangeSet.java"


# static fields
.field private static final NO_INDEX_CHANGES:[I

.field private static final NO_RANGE_CHANGES:[Lio/realm/OrderedCollectionChangeSet$Range;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lio/realm/internal/EmptyLoadChangeSet;->NO_INDEX_CHANGES:[I

    new-array v0, v0, [Lio/realm/OrderedCollectionChangeSet$Range;

    .line 2
    sput-object v0, Lio/realm/internal/EmptyLoadChangeSet;->NO_RANGE_CHANGES:[Lio/realm/OrderedCollectionChangeSet$Range;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public getChangeRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
    .registers 2

    sget-object v0, Lio/realm/internal/EmptyLoadChangeSet;->NO_RANGE_CHANGES:[Lio/realm/OrderedCollectionChangeSet$Range;

    return-object v0
.end method

.method public getChanges()[I
    .registers 2

    sget-object v0, Lio/realm/internal/EmptyLoadChangeSet;->NO_INDEX_CHANGES:[I

    return-object v0
.end method

.method public getDeletionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
    .registers 2

    sget-object v0, Lio/realm/internal/EmptyLoadChangeSet;->NO_RANGE_CHANGES:[Lio/realm/OrderedCollectionChangeSet$Range;

    return-object v0
.end method

.method public getDeletions()[I
    .registers 2

    sget-object v0, Lio/realm/internal/EmptyLoadChangeSet;->NO_INDEX_CHANGES:[I

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInsertionRanges()[Lio/realm/OrderedCollectionChangeSet$Range;
    .registers 2

    sget-object v0, Lio/realm/internal/EmptyLoadChangeSet;->NO_RANGE_CHANGES:[Lio/realm/OrderedCollectionChangeSet$Range;

    return-object v0
.end method

.method public getInsertions()[I
    .registers 2

    sget-object v0, Lio/realm/internal/EmptyLoadChangeSet;->NO_INDEX_CHANGES:[I

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->getNativeFinalizerPtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lio/realm/OrderedCollectionChangeSet$State;
    .registers 2

    sget-object v0, Lio/realm/OrderedCollectionChangeSet$State;->INITIAL:Lio/realm/OrderedCollectionChangeSet$State;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isFirstAsyncCallback()Z
    .registers 2

    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->isFirstAsyncCallback()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lio/realm/internal/OsCollectionChangeSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
