.class Lio/realm/RealmModelOperator;
.super Lio/realm/RealmAnyOperator;
.source "RealmAnyOperator.java"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Lio/realm/RealmModel;


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/core/NativeRealmAny;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    invoke-direct {p0, v0, p2}, Lio/realm/RealmAnyOperator;-><init>(Lio/realm/RealmAny$Type;Lio/realm/internal/core/NativeRealmAny;)V

    .line 5
    iput-object p3, p0, Lio/realm/RealmModelOperator;->clazz:Ljava/lang/Class;

    .line 6
    invoke-static {p1, p3, p2}, Lio/realm/RealmModelOperator;->getRealmModel(Lio/realm/BaseRealm;Ljava/lang/Class;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmModel;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    return-void
.end method

.method public constructor <init>(Lio/realm/RealmModel;)V
    .registers 3

    .line 1
    sget-object v0, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    invoke-direct {p0, v0}, Lio/realm/RealmAnyOperator;-><init>(Lio/realm/RealmAny$Type;)V

    .line 2
    iput-object p1, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmModelOperator;->clazz:Ljava/lang/Class;

    return-void
.end method

.method private static getRealmModel(Lio/realm/BaseRealm;Ljava/lang/Class;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/realm/internal/core/NativeRealmAny;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lio/realm/internal/core/NativeRealmAny;->getRealmModelRowKey()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkValidObject(Lio/realm/BaseRealm;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    invoke-static {v0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2
    iget-object v0, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-ne v0, p1, :cond_1f

    return-void

    .line 3
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Realm object belongs to a different Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Realm object is not a valid managed object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    instance-of v0, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_16

    .line 2
    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, Lio/realm/internal/RealmObjectProxy;

    .line 3
    iget-object v2, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Lio/realm/internal/RealmObjectProxy;)V

    return-object v0

    .line 5
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native RealmAny instances only allow managed Realm objects or primitives"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_22

    .line 2
    :cond_12
    check-cast p1, Lio/realm/RealmModelOperator;

    .line 3
    iget-object v1, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    iget-object p1, p1, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    if-nez v1, :cond_1e

    if-nez p1, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :cond_1e
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_22
    :goto_22
    return v0
.end method

.method public getTypedClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lio/realm/internal/RealmObjectProxy;

    iget-object v1, p0, Lio/realm/RealmModelOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/realm/RealmModelOperator;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lio/realm/RealmModelOperator;->clazz:Ljava/lang/Class;

    :goto_13
    return-object v0
.end method

.method public final getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/RealmModelOperator;->value:Lio/realm/RealmModel;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
