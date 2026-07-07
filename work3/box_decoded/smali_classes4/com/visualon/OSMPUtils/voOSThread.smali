.class public Lcom/visualon/OSMPUtils/voOSThread;
.super Ljava/lang/Object;
.source "voOSThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voOSThread$voRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSThread"


# instance fields
.field private nativeContext_:J

.field private runnable_:Lcom/visualon/OSMPUtils/voOSThread$voRunnable;

.field private threadPlayback:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->nativeContext_:J

    .line 47
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voOSThread"

    const-string v2, "Construct!"

    .line 48
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected native nativeOnRun()I
.end method

.method public playback()V
    .locals 4

    .line 85
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@voOSThread"

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "voOSThread running"

    .line 86
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voOSThread;->nativeOnRun()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "nativeOnRun Error!"

    .line 91
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->runnable_:Lcom/visualon/OSMPUtils/voOSThread$voRunnable;

    .line 94
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->threadPlayback:Ljava/lang/Thread;

    return-void
.end method

.method public start()I
    .locals 4

    .line 53
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@voOSThread"

    const-string v3, "voOSThread start"

    .line 54
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->runnable_:Lcom/visualon/OSMPUtils/voOSThread$voRunnable;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/visualon/OSMPUtils/voOSThread$voRunnable;

    invoke-direct {v0, p0, p0}, Lcom/visualon/OSMPUtils/voOSThread$voRunnable;-><init>(Lcom/visualon/OSMPUtils/voOSThread;Lcom/visualon/OSMPUtils/voOSThread;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->runnable_:Lcom/visualon/OSMPUtils/voOSThread$voRunnable;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->threadPlayback:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voOSThread;->runnable_:Lcom/visualon/OSMPUtils/voOSThread$voRunnable;

    const-string v3, "voOS Java Thread for C"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->threadPlayback:Ljava/lang/Thread;

    const/16 v2, 0x8

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 63
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->threadPlayback:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return v1
.end method

.method public stop()I
    .locals 4

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSThread;->threadPlayback:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    .line 72
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@voOSThread"

    const-string v3, "voOSThread stopped!"

    .line 78
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method
