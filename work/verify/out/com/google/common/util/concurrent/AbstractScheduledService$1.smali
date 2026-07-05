.class Lcom/google/common/util/concurrent/AbstractScheduledService$1;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "AbstractScheduledService.java"


# instance fields
.field public final synthetic val$executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 2

    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
