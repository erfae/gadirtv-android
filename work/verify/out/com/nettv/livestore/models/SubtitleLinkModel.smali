.class public Lcom/nettv/livestore/models/SubtitleLinkModel;
.super Ljava/lang/Object;
.source "SubtitleLinkModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public file_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_name"
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field public remaining:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remaining"
    .end annotation
.end field

.field public requests:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requests"
    .end annotation
.end field

.field public reset_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reset_time"
    .end annotation
.end field

.field public reset_time_utc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reset_time_utc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleLinkModel;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleLinkModel;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleLinkModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRemaining()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SubtitleLinkModel;->remaining:I

    return v0
.end method

.method public getRequests()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SubtitleLinkModel;->requests:I

    return v0
.end method

.method public getReset_time()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleLinkModel;->reset_time:Ljava/lang/String;

    return-object v0
.end method

.method public getReset_time_utc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleLinkModel;->reset_time_utc:Ljava/lang/String;

    return-object v0
.end method
