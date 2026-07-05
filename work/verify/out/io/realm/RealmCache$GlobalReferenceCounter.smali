.class Lio/realm/RealmCache$GlobalReferenceCounter;
.super Lio/realm/RealmCache$ReferenceCounter;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalReferenceCounter"
.end annotation


# instance fields
.field private cachedRealm:Lio/realm/BaseRealm;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/realm/RealmCache$ReferenceCounter;-><init>(Lio/realm/RealmCache$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/realm/RealmCache$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/realm/RealmCache$GlobalReferenceCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public clearThreadLocalCache()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/RealmCache$ReferenceCounter;->localCount:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    iput-object v2, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    .line 4
    iget-object v1, p0, Lio/realm/RealmCache$ReferenceCounter;->globalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_17

    return-void

    .line 5
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Global reference counter of Realm"

    const-string v3, " not be negative."

    .line 6
    invoke-static {v2, v0, v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getRealmInstance()Lio/realm/BaseRealm;
    .registers 2

    iget-object v0, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method public final getThreadLocalCount()I
    .registers 2

    iget-object v0, p0, Lio/realm/RealmCache$ReferenceCounter;->globalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final hasInstanceAvailableForThread()Z
    .registers 2

    iget-object v0, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final onRealmCreated(Lio/realm/BaseRealm;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    .line 2
    iget-object p1, p0, Lio/realm/RealmCache$ReferenceCounter;->localCount:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/realm/RealmCache$ReferenceCounter;->globalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
