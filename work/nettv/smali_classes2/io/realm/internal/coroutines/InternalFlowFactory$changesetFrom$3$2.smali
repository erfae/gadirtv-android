.class final Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InternalFlowFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0000H\n"
    }
    d2 = {
        "T",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $flowRealm:Lio/realm/Realm;

.field public final synthetic $list:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic $listener:Lio/realm/OrderedRealmCollectionChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmList<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/Realm;Lio/realm/RealmList;Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmList<",
            "TT;>;",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmList<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;->$flowRealm:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;->$list:Lio/realm/RealmList;

    iput-object p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;->$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;->$flowRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;->$list:Lio/realm/RealmList;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;->$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 4
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$3$2;->$flowRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_0
    return-void
.end method
