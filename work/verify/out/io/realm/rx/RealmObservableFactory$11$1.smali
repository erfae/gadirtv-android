.class Lio/realm/rx/RealmObservableFactory$11$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$11;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/OrderedRealmCollectionChangeListener<",
        "Lio/realm/RealmList<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lio/realm/rx/RealmObservableFactory$11;

.field public final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lio/realm/rx/RealmObservableFactory$11;Lio/reactivex/ObservableEmitter;)V
    .registers 3

    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$11$1;->this$1:Lio/realm/rx/RealmObservableFactory$11;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$11$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmList;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "TE;>;",
            "Lio/realm/OrderedCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lio/realm/RealmList;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3
    iget-object p1, p0, Lio/realm/rx/RealmObservableFactory$11$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    .line 4
    :cond_c
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$11$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 5
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$11$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lio/realm/rx/CollectionChange;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$11$1;->this$1:Lio/realm/rx/RealmObservableFactory$11;

    iget-object v2, v2, Lio/realm/rx/RealmObservableFactory$11;->this$0:Lio/realm/rx/RealmObservableFactory;

    # getter for: Lio/realm/rx/RealmObservableFactory;->returnFrozenObjects:Z
    invoke-static {v2}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Lio/realm/RealmList;->freeze()Lio/realm/RealmList;

    move-result-object p1

    :cond_26
    invoke-direct {v1, p1, p2}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 3

    .line 1
    check-cast p1, Lio/realm/RealmList;

    invoke-virtual {p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$11$1;->onChange(Lio/realm/RealmList;Lio/realm/OrderedCollectionChangeSet;)V

    return-void
.end method
