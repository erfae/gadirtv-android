.class final Lcom/verimatrix/vdc/HoldOffStrategy;
.super Ljava/lang/Object;
.source "HoldOffStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final c:Landroid/content/Context;

.field private final configuration:Lcom/verimatrix/vdc/Configuration;

.field private final holdOff:J

.field private final holdOffLimit:J

.field private retryCount:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;JJI)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->c:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 23
    iput-object p3, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->title:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->holdOff:J

    .line 25
    iput-wide p6, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->holdOffLimit:J

    .line 26
    iput p8, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->retryCount:I

    return-void
.end method

.method private isLimitReached(I)Z
    .locals 1

    .line 67
    iget v0, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->retryCount:I

    if-lez v0, :cond_0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sleep(I)V
    .locals 5

    .line 55
    iget-wide v0, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->holdOff:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 56
    iget-wide v2, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->holdOffLimit:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    move-wide v0, v2

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " HOLDOFF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " holdoff sleep "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (limit="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->holdOffLimit:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MonitorLoginSteps"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method


# virtual methods
.method performAction(Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitorLoginSteps"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-interface {p1}, Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction;->perform()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 41
    invoke-direct {p0, v3}, Lcom/verimatrix/vdc/HoldOffStrategy;->isLimitReached(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cancelled because limit reached"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v5, :cond_3

    .line 45
    invoke-interface {p1, v3, v1}, Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction;->shouldRetry(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_0

    .line 47
    invoke-direct {p0, v3}, Lcom/verimatrix/vdc/HoldOffStrategy;->sleep(I)V

    .line 48
    iget-object v4, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/verimatrix/vdc/HoldOffStrategy;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " RETRIED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v1
.end method
