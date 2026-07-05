.class public Lio/realm/rx/RealmObservableFactory;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/rx/RxObservableFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
    }
.end annotation


# static fields
.field private static final BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;


# instance fields
.field private listRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmList;",
            ">;>;"
        }
    .end annotation
.end field

.field private objectRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private resultsRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmResults;",
            ">;>;"
        }
    .end annotation
.end field

.field private final returnFrozenObjects:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    sput-object v0, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/realm/rx/RealmObservableFactory$1;

    invoke-direct {v0}, Lio/realm/rx/RealmObservableFactory$1;-><init>()V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->resultsRefs:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Lio/realm/rx/RealmObservableFactory$2;

    invoke-direct {v0}, Lio/realm/rx/RealmObservableFactory$2;-><init>()V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->listRefs:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Lio/realm/rx/RealmObservableFactory$3;

    invoke-direct {v0}, Lio/realm/rx/RealmObservableFactory$3;-><init>()V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->objectRefs:Ljava/lang/ThreadLocal;

    .line 5
    iput-boolean p1, p0, Lio/realm/rx/RealmObservableFactory;->returnFrozenObjects:Z

    return-void
.end method

.method public static synthetic access$100(Lio/realm/rx/RealmObservableFactory;)Z
    .locals 0

    iget-boolean p0, p0, Lio/realm/rx/RealmObservableFactory;->returnFrozenObjects:Z

    return p0
.end method

.method public static synthetic access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lio/realm/rx/RealmObservableFactory;->resultsRefs:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public static synthetic access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lio/realm/rx/RealmObservableFactory;->listRefs:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public static synthetic access$400(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lio/realm/rx/RealmObservableFactory;->objectRefs:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method private getScheduler()Lio/reactivex/Scheduler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lio/reactivex/android/schedulers/AndroidSchedulers;->from(Landroid/os/Looper;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No looper found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/ObjectChange<",
            "Lio/realm/DynamicRealmObject;",
            ">;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance p1, Lio/realm/rx/ObjectChange;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/realm/rx/ObjectChange;-><init>(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 34
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 35
    new-instance v1, Lio/realm/rx/RealmObservableFactory$17;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$17;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/DynamicRealmObject;Lio/realm/RealmConfiguration;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmList<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance p1, Lio/realm/rx/CollectionChange;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 22
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 23
    new-instance v1, Lio/realm/rx/RealmObservableFactory$13;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$13;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmList;Lio/realm/RealmConfiguration;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmResults<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lio/realm/rx/CollectionChange;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 10
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 11
    new-instance v1, Lio/realm/rx/RealmObservableFactory$9;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$9;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmResults;Lio/realm/RealmConfiguration;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public changesetsFrom(Lio/realm/Realm;Lio/realm/RealmList;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmList<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lio/realm/Realm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance p1, Lio/realm/rx/CollectionChange;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 16
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 17
    new-instance v1, Lio/realm/rx/RealmObservableFactory$11;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$11;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmList;Lio/realm/RealmConfiguration;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public changesetsFrom(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/ObjectChange<",
            "TE;>;>;"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lio/realm/Realm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance p1, Lio/realm/rx/ObjectChange;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/realm/rx/ObjectChange;-><init>(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 28
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 29
    new-instance v1, Lio/realm/rx/RealmObservableFactory$15;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$15;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmModel;Lio/realm/RealmConfiguration;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public changesetsFrom(Lio/realm/Realm;Lio/realm/RealmResults;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmResults<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/realm/Realm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lio/realm/rx/CollectionChange;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 5
    new-instance v1, Lio/realm/rx/RealmObservableFactory$7;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$7;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmResults;Lio/realm/RealmConfiguration;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lio/realm/rx/RealmObservableFactory;

    return p1
.end method

.method public from(Lio/realm/DynamicRealm;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lio/realm/DynamicRealm;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 10
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 11
    new-instance v1, Lio/realm/rx/RealmObservableFactory$5;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$5;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;)V

    sget-object p1, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    .line 47
    new-instance v2, Lio/realm/rx/RealmObservableFactory$16;

    invoke-direct {v2, p0, p1, v0, p2}, Lio/realm/rx/RealmObservableFactory$16;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/DynamicRealm;Lio/realm/RealmConfiguration;Lio/realm/DynamicRealmObject;)V

    sget-object p1, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v2, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmList<",
            "TE;>;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 34
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 35
    new-instance v1, Lio/realm/rx/RealmObservableFactory$12;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$12;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmList;Lio/realm/RealmConfiguration;)V

    sget-object p1, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmResults<",
            "TE;>;>;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 22
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 23
    new-instance v1, Lio/realm/rx/RealmObservableFactory$8;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$8;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmResults;Lio/realm/RealmConfiguration;)V

    sget-object p1, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/Realm;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lio/realm/Realm;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/realm/Realm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 5
    new-instance v1, Lio/realm/rx/RealmObservableFactory$4;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$4;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;)V

    sget-object p1, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmList;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmList<",
            "TE;>;>;"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lio/realm/Realm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 28
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 29
    new-instance v1, Lio/realm/rx/RealmObservableFactory$10;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$10;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmList;Lio/realm/RealmConfiguration;)V

    sget-object p1, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;)",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lio/realm/Realm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 40
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v1

    .line 41
    new-instance v2, Lio/realm/rx/RealmObservableFactory$14;

    invoke-direct {v2, p0, p1, v0, p2}, Lio/realm/rx/RealmObservableFactory$14;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;)V

    sget-object p1, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v2, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 42
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmResults<",
            "TE;>;>;"
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lio/realm/Realm;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p2}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 16
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory;->getScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 17
    new-instance v1, Lio/realm/rx/RealmObservableFactory$6;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/rx/RealmObservableFactory$6;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmResults;Lio/realm/RealmConfiguration;)V

    sget-object p1, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, p1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmQuery;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmQuery<",
            "TE;>;)",
            "Lio/reactivex/Single<",
            "Lio/realm/RealmQuery<",
            "TE;>;>;"
        }
    .end annotation

    .line 50
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "RealmQuery not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmQuery;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmQuery<",
            "TE;>;)",
            "Lio/reactivex/Single<",
            "Lio/realm/RealmQuery<",
            "TE;>;>;"
        }
    .end annotation

    .line 49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "RealmQuery not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method
