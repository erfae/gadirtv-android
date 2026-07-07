.class Lio/realm/DynamicRealm$2;
.super Ljava/lang/Object;
.source "DynamicRealm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/DynamicRealm;->executeTransactionAsync(Lio/realm/DynamicRealm$Transaction;Lio/realm/DynamicRealm$Transaction$OnSuccess;Lio/realm/DynamicRealm$Transaction$OnError;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/DynamicRealm;

.field public final synthetic val$canDeliverNotification:Z

.field public final synthetic val$onError:Lio/realm/DynamicRealm$Transaction$OnError;

.field public final synthetic val$onSuccess:Lio/realm/DynamicRealm$Transaction$OnSuccess;

.field public final synthetic val$realmConfiguration:Lio/realm/RealmConfiguration;

.field public final synthetic val$realmNotifier:Lio/realm/internal/RealmNotifier;

.field public final synthetic val$transaction:Lio/realm/DynamicRealm$Transaction;


# direct methods
.method public constructor <init>(Lio/realm/DynamicRealm;Lio/realm/RealmConfiguration;Lio/realm/DynamicRealm$Transaction;ZLio/realm/DynamicRealm$Transaction$OnSuccess;Lio/realm/internal/RealmNotifier;Lio/realm/DynamicRealm$Transaction$OnError;)V
    .registers 8

    iput-object p1, p0, Lio/realm/DynamicRealm$2;->this$0:Lio/realm/DynamicRealm;

    iput-object p2, p0, Lio/realm/DynamicRealm$2;->val$realmConfiguration:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/DynamicRealm$2;->val$transaction:Lio/realm/DynamicRealm$Transaction;

    iput-boolean p4, p0, Lio/realm/DynamicRealm$2;->val$canDeliverNotification:Z

    iput-object p5, p0, Lio/realm/DynamicRealm$2;->val$onSuccess:Lio/realm/DynamicRealm$Transaction$OnSuccess;

    iput-object p6, p0, Lio/realm/DynamicRealm$2;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    iput-object p7, p0, Lio/realm/DynamicRealm$2;->val$onError:Lio/realm/DynamicRealm$Transaction$OnError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2
    :cond_b
    iget-object v0, p0, Lio/realm/DynamicRealm$2;->val$realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->beginTransaction()V

    const/4 v1, 0x0

    .line 4
    :try_start_15
    iget-object v2, p0, Lio/realm/DynamicRealm$2;->val$transaction:Lio/realm/DynamicRealm$Transaction;

    invoke-interface {v2, v0}, Lio/realm/DynamicRealm$Transaction;->execute(Lio/realm/DynamicRealm;)V

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_51

    if-eqz v2, :cond_36

    .line 6
    :try_start_24
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 7
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->cancelTransaction()V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    .line 8
    :cond_2d
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    return-void

    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 9
    throw v1

    .line 10
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->commitTransaction()V

    .line 11
    iget-object v2, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v2
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_51

    .line 12
    :try_start_3f
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->isInTransaction()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 13
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->cancelTransaction()V
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_4c

    .line 14
    :cond_48
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    goto :goto_61

    :catchall_4c
    move-exception v1

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 15
    throw v1

    :catchall_51
    move-exception v2

    .line 16
    :try_start_52
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->isInTransaction()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 17
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->cancelTransaction()V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_8e

    .line 18
    :cond_5b
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 19
    :goto_61
    iget-boolean v0, p0, Lio/realm/DynamicRealm$2;->val$canDeliverNotification:Z

    if-eqz v0, :cond_83

    if-eqz v2, :cond_76

    .line 20
    iget-object v0, p0, Lio/realm/DynamicRealm$2;->val$onSuccess:Lio/realm/DynamicRealm$Transaction$OnSuccess;

    if-eqz v0, :cond_76

    .line 21
    iget-object v0, p0, Lio/realm/DynamicRealm$2;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/DynamicRealm$2$1;

    invoke-direct {v1, p0, v2}, Lio/realm/DynamicRealm$2$1;-><init>(Lio/realm/DynamicRealm$2;Lio/realm/internal/OsSharedRealm$VersionID;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_85

    :cond_76
    if-eqz v1, :cond_85

    .line 22
    iget-object v0, p0, Lio/realm/DynamicRealm$2;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/DynamicRealm$2$2;

    invoke-direct {v2, p0, v1}, Lio/realm/DynamicRealm$2$2;-><init>(Lio/realm/DynamicRealm$2;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_85

    :cond_83
    if-nez v1, :cond_86

    :cond_85
    :goto_85
    return-void

    .line 23
    :cond_86
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v2, "Async transaction failed"

    invoke-direct {v0, v2, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_8e
    move-exception v1

    .line 24
    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 25
    throw v1
.end method
