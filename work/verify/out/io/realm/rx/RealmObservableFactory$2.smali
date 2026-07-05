.class Lio/realm/rx/RealmObservableFactory$2;
.super Ljava/lang/ThreadLocal;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/rx/RealmObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
        "Lio/realm/RealmList;",
        ">;>;"
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
    .registers 3

    new-instance v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;-><init>(Lio/realm/rx/RealmObservableFactory$1;)V

    return-object v0
.end method
