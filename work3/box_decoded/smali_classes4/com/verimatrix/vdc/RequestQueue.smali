.class public Lcom/verimatrix/vdc/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/RequestQueue$DebugRequest;,
        Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;,
        Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;,
        Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;,
        Lcom/verimatrix/vdc/RequestQueue$Request;,
        Lcom/verimatrix/vdc/RequestQueue$RequestQueueHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:I = 0x3

.field private static final METADATA:I = 0x2

.field private static final PROFILE_GET:I = 0x1

.field private static final PROFILE_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RequestQueue"


# instance fields
.field queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/verimatrix/vdc/RequestQueue$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/RequestQueue;->queue:Ljava/util/LinkedList;

    return-void
.end method

.method public static getInstance()Lcom/verimatrix/vdc/RequestQueue;
    .locals 1

    .line 28
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue$RequestQueueHolder;->access$000()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method private getTypeName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "unsupported type"

    goto :goto_0

    :cond_0
    const-string p1, "debug"

    goto :goto_0

    :cond_1
    const-string p1, "metadata"

    goto :goto_0

    :cond_2
    const-string p1, "profileGet"

    goto :goto_0

    :cond_3
    const-string p1, "profileSet"

    :goto_0
    return-object p1
.end method


# virtual methods
.method add(Lcom/verimatrix/vdc/RequestQueue$Request;)V
    .locals 4

    .line 36
    sget-object v0, Lcom/verimatrix/vdc/RequestQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request queued "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/verimatrix/vdc/RequestQueue$Request;->type:I

    invoke-direct {p0, v2}, Lcom/verimatrix/vdc/RequestQueue;->getTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/verimatrix/vdc/RequestQueue$Request;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/verimatrix/vdc/RequestQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clean()V
    .locals 2

    .line 101
    sget-object v0, Lcom/verimatrix/vdc/RequestQueue;->TAG:Ljava/lang/String;

    const-string v1, "request queue cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/verimatrix/vdc/RequestQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method proceed(Landroid/content/Context;)V
    .locals 9

    .line 41
    iget-object v0, p0, Lcom/verimatrix/vdc/RequestQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/verimatrix/vdc/RequestQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/verimatrix/vdc/RequestQueue;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verimatrix/vdc/RequestQueue$Request;

    .line 48
    :try_start_0
    iget v1, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ")"

    const-string v3, " ("

    const-string v4, ">proceed "

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 91
    :try_start_1
    sget-object v0, Lcom/verimatrix/vdc/RequestQueue;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported queued request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;

    .line 82
    sget-object v2, Lcom/verimatrix/vdc/RequestQueue;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->type:I

    invoke-direct {p0, v4}, Lcom/verimatrix/vdc/RequestQueue;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->timestamp:J

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;->message:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->getCurrentConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object v0

    const-string v2, "debug_active"

    .line 85
    invoke-virtual {v0, v2}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, v1, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;->deviceId:Ljava/lang/String;

    iget-object v3, v1, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;->message:Ljava/lang/String;

    iget-wide v4, v1, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;->timestamp:J

    .line 87
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 86
    invoke-static {p1, v2, v3, v0, v1}, Lcom/verimatrix/vdc/NetworkManager;->sendDebug(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/Long;)Z

    goto :goto_0

    .line 70
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;

    .line 72
    sget-object v5, Lcom/verimatrix/vdc/RequestQueue;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->type:I

    invoke-direct {p0, v4}, Lcom/verimatrix/vdc/RequestQueue;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->timestamp:J

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, v1, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;->stream:Lcom/verimatrix/vdc/Stream;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, v1, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    iget-object v2, v1, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;->localMetadata:Ljava/util/Map;

    iget-object v1, v1, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v0, v2, v1}, Lcom/verimatrix/vdc/StreamMetadata;->updateMetadata(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;

    goto/16 :goto_0

    .line 61
    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;

    .line 63
    sget-object v5, Lcom/verimatrix/vdc/RequestQueue;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->type:I

    invoke-direct {p0, v4}, Lcom/verimatrix/vdc/RequestQueue;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->timestamp:J

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;->profile:Lcom/verimatrix/vdc/Profile;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;->profile:Lcom/verimatrix/vdc/Profile;

    iget-object v2, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;->listener:Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;

    invoke-virtual {v0, v2, v1}, Lcom/verimatrix/vdc/Profile;->get(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)Lcom/verimatrix/vdc/Monitor$Status;

    goto/16 :goto_0

    .line 50
    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;

    .line 52
    sget-object v5, Lcom/verimatrix/vdc/RequestQueue;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->type:I

    invoke-direct {p0, v4}, Lcom/verimatrix/vdc/RequestQueue;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/verimatrix/vdc/RequestQueue$Request;->timestamp:J

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->profile:Lcom/verimatrix/vdc/Profile;

    if-eqz v0, :cond_0

    .line 55
    iget-object v2, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->profile:Lcom/verimatrix/vdc/Profile;

    iget-object v3, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->value:Ljava/lang/String;

    iget-object v5, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->setType:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    iget-object v6, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->dataType:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    iget-object v7, v1, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;->privacyType:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/verimatrix/vdc/Profile;->set(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 95
    sget-object v1, Lcom/verimatrix/vdc/RequestQueue;->TAG:Ljava/lang/String;

    const-string v2, "Error while executing queued request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    return-void
.end method
