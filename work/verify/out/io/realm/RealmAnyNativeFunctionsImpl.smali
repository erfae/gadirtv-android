.class public Lio/realm/RealmAnyNativeFunctionsImpl;
.super Ljava/lang/Object;
.source "RealmAnyNativeFunctionsImpl.java"

# interfaces
.implements Lio/realm/internal/RealmAnyNativeFunctions;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V
    .registers 9
    .param p2    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    array-length v0, p4

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 2
    :goto_4
    :try_start_4
    array-length v2, p4

    if-ge v1, v2, :cond_12

    .line 3
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_f} :catch_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4
    :cond_12
    invoke-virtual {p1, p2, p3, v0}, Lio/realm/internal/TableQuery;->rawPredicateWithPointers(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[J)V

    return-void

    :catch_16
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unmanaged Realm objects are not valid query arguments"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public handleItem(JLio/realm/RealmAny;)V
    .registers 6

    .line 1
    invoke-virtual {p3}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddRealmAnyListItem(JJ)V

    return-void
.end method

.method public handleItem(JLjava/util/Map$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/RealmAny;

    invoke-virtual {p3}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v1

    invoke-static {p1, p2, v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddRealmAnyDictionaryEntry(JLjava/lang/String;J)V

    return-void
.end method
