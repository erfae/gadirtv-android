.class public Lio/realm/SetChangeSet;
.super Ljava/lang/Object;
.source "SetChangeSet.java"


# instance fields
.field private final osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsCollectionChangeSet;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/SetChangeSet;->osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;

    return-void
.end method


# virtual methods
.method public getNumberOfDeletions()I
    .registers 2

    iget-object v0, p0, Lio/realm/SetChangeSet;->osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsCollectionChangeSet;->getDeletions()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getNumberOfInsertions()I
    .registers 2

    iget-object v0, p0, Lio/realm/SetChangeSet;->osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsCollectionChangeSet;->getInsertions()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEmpty()Z
    .registers 6

    iget-object v0, p0, Lio/realm/SetChangeSet;->osCollectionChangeSet:Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {v0}, Lio/realm/internal/OsCollectionChangeSet;->getNativePtr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
