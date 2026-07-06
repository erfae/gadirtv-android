.class public Lcom/nettv/livestore/models/SubtitleModel$FileModel;
.super Ljava/lang/Object;
.source "SubtitleModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/models/SubtitleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileModel"
.end annotation


# instance fields
.field public cd_number:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cd_number"
    .end annotation
.end field

.field public file_id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_id"
    .end annotation
.end field

.field public file_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCd_number()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FileModel;->cd_number:I

    return v0
.end method

.method public getFile_id()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FileModel;->file_id:I

    return v0
.end method

.method public getFile_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FileModel;->file_name:Ljava/lang/String;

    return-object v0
.end method
