.class public Lcom/nettv/livestore/models/ServerModel;
.super Ljava/lang/Object;
.source "ServerModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private time_now:Ljava/lang/String;

.field private timestamp_now:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/nettv/livestore/models/ServerModel;->timestamp_now:J

    return-void
.end method


# virtual methods
.method public getTime_now()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/ServerModel;->time_now:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp_now()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/ServerModel;->timestamp_now:J

    return-wide v0
.end method

.method public setTime_now(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/ServerModel;->time_now:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp_now(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/ServerModel;->timestamp_now:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "ServerModel{timestamp_now=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/nettv/livestore/models/ServerModel;->timestamp_now:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time_now=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/models/ServerModel;->time_now:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
