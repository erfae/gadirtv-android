.class Lio/realm/rx/RealmObservableFactory$8;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lio/realm/RealmResults<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field public final synthetic val$realmConfig:Lio/realm/RealmConfiguration;

.field public final synthetic val$results:Lio/realm/RealmResults;


# direct methods
.method public constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmResults;Lio/realm/RealmConfiguration;)V
    .registers 4

    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$8;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$8;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$8;->this$0:Lio/realm/rx/RealmObservableFactory;

    # getter for: Lio/realm/rx/RealmObservableFactory;->resultsRefs:Ljava/lang/ThreadLocal;
    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lio/realm/rx/RealmObservableFactory$8$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$8$1;-><init>(Lio/realm/rx/RealmObservableFactory$8;Lio/reactivex/FlowableEmitter;)V

    .line 5
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 6
    new-instance v2, Lio/realm/rx/RealmObservableFactory$8$2;

    invoke-direct {v2, p0, v0, v1}, Lio/realm/rx/RealmObservableFactory$8$2;-><init>(Lio/realm/rx/RealmObservableFactory$8;Lio/realm/DynamicRealm;Lio/realm/RealmChangeListener;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 7
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8;->this$0:Lio/realm/rx/RealmObservableFactory;

    # getter for: Lio/realm/rx/RealmObservableFactory;->returnFrozenObjects:Z
    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v0}, Lio/realm/RealmResults;->freeze()Lio/realm/RealmResults;

    move-result-object v0

    goto :goto_47

    :cond_45
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    :goto_47
    invoke-interface {p1, v0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
