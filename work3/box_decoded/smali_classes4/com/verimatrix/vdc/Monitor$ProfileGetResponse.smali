.class public Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileGetResponse"
.end annotation


# instance fields
.field appId:Ljava/lang/String;

.field key:Ljava/lang/String;

.field lastModified:J

.field success:Z

.field type:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->success:Z

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->lastModified:J

    return-wide v0
.end method

.method public getType()Lcom/verimatrix/vdc/Monitor$ProfileDataType;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->type:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->appId:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->lastModified:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 77
    :try_start_0
    invoke-static {p1}, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    move-result-object p1

    iput-object p1, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->type:Lcom/verimatrix/vdc/Monitor$ProfileDataType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->STRING:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    iput-object p1, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->type:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/verimatrix/vdc/Monitor$ProfileGetResponse;->value:Ljava/lang/Object;

    return-void
.end method
