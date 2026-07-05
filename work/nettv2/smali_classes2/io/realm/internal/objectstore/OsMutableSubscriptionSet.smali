.class public Lio/realm/internal/objectstore/OsMutableSubscriptionSet;
.super Lio/realm/internal/objectstore/OsSubscriptionSet;
.source "OsMutableSubscriptionSet.java"

# interfaces
.implements Lio/realm/mongodb/sync/MutableSubscriptionSet;


# direct methods
.method public constructor <init>(JLio/realm/internal/RealmProxyMediator;Lio/realm/internal/async/RealmThreadPoolExecutor;Lio/realm/internal/async/RealmThreadPoolExecutor;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lio/realm/internal/objectstore/OsSubscriptionSet;-><init>(JLio/realm/internal/RealmProxyMediator;Lio/realm/internal/async/RealmThreadPoolExecutor;Lio/realm/internal/async/RealmThreadPoolExecutor;)V

    return-void
.end method

.method private addSubscription(Lio/realm/mongodb/sync/Subscription;Z)Lio/realm/mongodb/sync/Subscription;
    .locals 6

    .line 1
    instance-of v0, p1, Lio/realm/internal/UnmanagedSubscription;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/realm/internal/UnmanagedSubscription;

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/UnmanagedSubscription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/UnmanagedSubscription;->getQueryPointer()J

    move-result-wide v3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->nativeInsertOrAssign(JLjava/lang/String;JZ)J

    move-result-wide p1

    .line 4
    new-instance v0, Lio/realm/internal/objectstore/OsSubscription;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/objectstore/OsSubscription;-><init>(J)V

    return-object v0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only unmanaged subscriptions are allowed as input. This subscription was managed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeCommit(J)J
.end method

.method private static native nativeInsertOrAssign(JLjava/lang/String;JZ)J
.end method

.method private static native nativeRemove(JJ)Z
.end method

.method private static native nativeRemoveAll(J)Z
.end method

.method private static native nativeRemoveAllForType(JLjava/lang/String;)Z
.end method

.method private static native nativeRemoveNamed(JLjava/lang/String;)Z
.end method


# virtual methods
.method public add(Lio/realm/mongodb/sync/Subscription;)Lio/realm/mongodb/sync/Subscription;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->addSubscription(Lio/realm/mongodb/sync/Subscription;Z)Lio/realm/mongodb/sync/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addOrUpdate(Lio/realm/mongodb/sync/Subscription;)Lio/realm/mongodb/sync/Subscription;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->addSubscription(Lio/realm/mongodb/sync/Subscription;Z)Lio/realm/mongodb/sync/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public commit()J
    .locals 2

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->nativeCommit(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Lio/realm/mongodb/sync/Subscription;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lio/realm/internal/objectstore/OsSubscription;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->getNativePtr()J

    move-result-wide v0

    check-cast p1, Lio/realm/internal/objectstore/OsSubscription;

    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsSubscription;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->nativeRemove(JJ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only managed Subscriptions can be removed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2

    .line 4
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->nativeRemoveNamed(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAll()Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->nativeRemoveAll(J)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->getNativePtr()J

    move-result-wide v0

    iget-object v2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet;->schema:Lio/realm/internal/RealmProxyMediator;

    invoke-virtual {v2, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->nativeRemoveAllForType(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lio/realm/internal/objectstore/OsMutableSubscriptionSet;->nativeRemoveAllForType(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method
