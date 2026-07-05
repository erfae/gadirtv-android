.class Lio/realm/rx/RealmObservableFactory$15$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$15;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/realm/rx/RealmObservableFactory$15;

.field public final synthetic val$listener:Lio/realm/RealmObjectChangeListener;

.field public final synthetic val$observableRealm:Lio/realm/Realm;


# direct methods
.method public constructor <init>(Lio/realm/rx/RealmObservableFactory$15;Lio/realm/Realm;Lio/realm/RealmObjectChangeListener;)V
    .locals 0

    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$15$2;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$observableRealm:Lio/realm/Realm;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$listener:Lio/realm/RealmObjectChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$2;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$15;->val$object:Lio/realm/RealmModel;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$listener:Lio/realm/RealmObjectChangeListener;

    invoke-static {v0, v1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 3
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$2;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$15;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$400(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$15$2;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$15;->val$object:Lio/realm/RealmModel;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    return-void
.end method
