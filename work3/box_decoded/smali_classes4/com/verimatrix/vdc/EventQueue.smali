.class final Lcom/verimatrix/vdc/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/EventQueue$EventQueueHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventQueue"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/verimatrix/vdc/EventQueue;
    .locals 1

    .line 18
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue$EventQueueHolder;->access$000()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method add(Lcom/verimatrix/vdc/SendEvent;)V
    .locals 4

    .line 29
    :try_start_0
    invoke-static {}, Lcom/verimatrix/vdc/Foreground;->get()Lcom/verimatrix/vdc/Foreground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/Foreground;->isForeground()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    sget-object v0, Lcom/verimatrix/vdc/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t detect parent application foreground state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p1, Lcom/verimatrix/vdc/SendEvent;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/verimatrix/vdc/SendEvent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {v0, v1, p1}, Lcom/verimatrix/vdc/MonitorCore;->addEventToQueue(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)V

    .line 37
    sget-object v0, Lcom/verimatrix/vdc/EventQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[content_id] send event with R0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getR0()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", R1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getR1()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", R2(mediaType)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getR2()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
