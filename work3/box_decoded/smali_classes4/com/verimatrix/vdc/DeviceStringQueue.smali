.class public Lcom/verimatrix/vdc/DeviceStringQueue;
.super Ljava/lang/Object;
.source "DeviceStringQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/verimatrix/vdc/DeviceStringQueue;

.field public static final TAG:Ljava/lang/String; = "DeviceStringQueue"


# instance fields
.field private deque:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/verimatrix/vdc/DeviceStringQueue;

    invoke-direct {v0}, Lcom/verimatrix/vdc/DeviceStringQueue;-><init>()V

    sput-object v0, Lcom/verimatrix/vdc/DeviceStringQueue;->INSTANCE:Lcom/verimatrix/vdc/DeviceStringQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->deque:Ljava/util/List;

    .line 17
    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->PAUSED:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    iput-object v0, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->status:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    return-void
.end method

.method public static getInstance()Lcom/verimatrix/vdc/DeviceStringQueue;
    .locals 1

    .line 23
    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue;->INSTANCE:Lcom/verimatrix/vdc/DeviceStringQueue;

    return-object v0
.end method

.method private getSize()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->deque:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private popleft()Ljava/lang/String;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->deque:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue;->TAG:Ljava/lang/String;

    const-string v1, "Deque underflow!! unable to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->deque:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/verimatrix/vdc/DeviceStringQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device String Queue removed from front: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private pushright(Ljava/lang/String;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device String Queue adding at rear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->deque:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add_request(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;ILjava/lang/String;)V
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->deque:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "limit_value"

    invoke-virtual {p2, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "]"

    if-lt v0, v2, :cond_0

    .line 68
    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add : Request Queue IS FULL ()"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->deque:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/verimatrix/vdc/DeviceStringQueue;->popleft()Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add : Request Removed and Dumped from Queue =["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p4, :cond_1

    .line 74
    invoke-direct {p0, p4}, Lcom/verimatrix/vdc/DeviceStringQueue;->pushright(Ljava/lang/String;)V

    .line 75
    :cond_1
    sget-object p4, Lcom/verimatrix/vdc/DeviceStringQueue;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add : Request Queue Size = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/verimatrix/vdc/DeviceStringQueue;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p4, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->status:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->PAUSED:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    if-ne p4, v0, :cond_3

    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p4

    invoke-virtual {p4}, Lcom/verimatrix/vdc/MonitorAgent;->getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;

    move-result-object p4

    invoke-virtual {p4}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 80
    sget-object p4, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->PROCESSING:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    iput-object p4, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->status:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    .line 81
    :goto_0
    iget-object p4, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->deque:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/verimatrix/vdc/DeviceStringQueue;->process_queue(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;I)V

    .line 84
    sget-object p4, Lcom/verimatrix/vdc/DeviceStringQueue;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated Request Queue Size = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/verimatrix/vdc/DeviceStringQueue;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_2
    sget-object p1, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->PAUSED:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    iput-object p1, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->status:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    :cond_3
    return-void
.end method

.method public process_queue(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;I)V
    .locals 3

    .line 92
    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue;->TAG:Ljava/lang/String;

    const-string v1, "Start processing request queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/verimatrix/vdc/DeviceStringQueue;->popleft()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    sget-object v2, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->PROCESSING:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    iput-object v2, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->status:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    .line 98
    invoke-virtual {p2}, Lcom/verimatrix/vdc/Configuration;->getMeId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/verimatrix/vdc/DeviceStringQueue;->send_request(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Request sent OK"

    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "ERROR !! - Device String Request not sent."

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Null request encountered !"

    .line 109
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object p1, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->PAUSED:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    iput-object p1, p0, Lcom/verimatrix/vdc/DeviceStringQueue;->status:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    const-string p1, "Processing of requestis paused"

    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public send_request(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;ILjava/lang/String;)I
    .locals 4

    .line 117
    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Request identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "application/x-www-form-urlencoded"

    .line 118
    invoke-static {p4, p3, v1}, Lcom/verimatrix/vdc/NetworkUtils;->doGetRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/verimatrix/vdc/NetworkUtils$Response;

    move-result-object p3

    .line 119
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP answer: statusCode = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget p4, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->code:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    const-string v3, "Bad HTTP answer: Err Msg ="

    if-eq p4, v1, :cond_1

    const/16 v1, 0xc8

    if-eq p4, v1, :cond_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 p3, 0x0

    const-string p4, "Send content successful"

    .line 124
    invoke-static {p1, p2, p4, p3}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/verimatrix/vdc/NetworkUtils$Response;->e:Ljava/lang/Exception;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
