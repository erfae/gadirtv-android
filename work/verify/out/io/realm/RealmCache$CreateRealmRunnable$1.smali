.class Lio/realm/RealmCache$CreateRealmRunnable$1;
.super Ljava/lang/Object;
.source "RealmCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmCache$CreateRealmRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/RealmCache$CreateRealmRunnable;


# direct methods
.method public constructor <init>(Lio/realm/RealmCache$CreateRealmRunnable;)V
    .registers 2

    iput-object p1, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->future:Ljava/util/concurrent/Future;
    invoke-static {v0}, Lio/realm/RealmCache$CreateRealmRunnable;->access$100(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->future:Ljava/util/concurrent/Future;
    invoke-static {v0}, Lio/realm/RealmCache$CreateRealmRunnable;->access$100(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_53

    :cond_15
    const/4 v0, 0x0

    .line 2
    :try_start_16
    iget-object v1, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->configuration:Lio/realm/RealmConfiguration;
    invoke-static {v1}, Lio/realm/RealmCache$CreateRealmRunnable;->access$300(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/RealmConfiguration;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->realmClass:Ljava/lang/Class;
    invoke-static {v2}, Lio/realm/RealmCache$CreateRealmRunnable;->access$400(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_33

    .line 3
    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->canReleaseBackgroundInstanceLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lio/realm/RealmCache$CreateRealmRunnable;->access$200(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3d

    :catchall_33
    move-exception v1

    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->canReleaseBackgroundInstanceLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lio/realm/RealmCache$CreateRealmRunnable;->access$200(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_3d
    if-eqz v0, :cond_49

    .line 4
    iget-object v1, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->callback:Lio/realm/BaseRealm$InstanceCallback;
    invoke-static {v1}, Lio/realm/RealmCache$CreateRealmRunnable;->access$500(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/BaseRealm$InstanceCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/BaseRealm$InstanceCallback;->onSuccess(Lio/realm/BaseRealm;)V

    goto :goto_52

    .line 5
    :cond_49
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->callback:Lio/realm/BaseRealm$InstanceCallback;
    invoke-static {v0}, Lio/realm/RealmCache$CreateRealmRunnable;->access$500(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/BaseRealm$InstanceCallback;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/BaseRealm$InstanceCallback;->onError(Ljava/lang/Throwable;)V

    :goto_52
    return-void

    .line 6
    :cond_53
    :goto_53
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    # getter for: Lio/realm/RealmCache$CreateRealmRunnable;->canReleaseBackgroundInstanceLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lio/realm/RealmCache$CreateRealmRunnable;->access$200(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
