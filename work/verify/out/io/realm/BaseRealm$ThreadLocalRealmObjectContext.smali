.class final Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;
.super Ljava/lang/ThreadLocal;
.source "BaseRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/BaseRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadLocalRealmObjectContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lio/realm/BaseRealm$RealmObjectContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lio/realm/BaseRealm$RealmObjectContext;

    invoke-direct {v0}, Lio/realm/BaseRealm$RealmObjectContext;-><init>()V

    return-object v0
.end method
