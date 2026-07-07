.class public Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;
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
    name = "AttributesModel"
.end annotation


# instance fields
.field public ai_translated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ai_translated"
    .end annotation
.end field

.field public comments:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comments"
    .end annotation
.end field

.field public download_count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_count"
    .end annotation
.end field

.field public featureDetailModel:Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feature_details"
    .end annotation
.end field

.field public fileModels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "files"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/SubtitleModel$FileModel;",
            ">;"
        }
    .end annotation
.end field

.field public foreign_parts_only:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "foreign_parts_only"
    .end annotation
.end field

.field public fps:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fps"
    .end annotation
.end field

.field public from_trusted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from_trusted"
    .end annotation
.end field

.field public hd:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hd"
    .end annotation
.end field

.field public hearing_impaired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hearing_impaired"
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field public legacy_subtitle_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legacy_subtitle_id"
    .end annotation
.end field

.field public machine_translated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "machine_translated"
    .end annotation
.end field

.field public new_download_count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_download_count"
    .end annotation
.end field

.field public ratings:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ratings"
    .end annotation
.end field

.field public relatedLinkModels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "related_links"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/SubtitleModel$RelatedLinkModel;",
            ">;"
        }
    .end annotation
.end field

.field public release:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release"
    .end annotation
.end field

.field public subtitle_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitle_id"
    .end annotation
.end field

.field public upload_date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upload_date"
    .end annotation
.end field

.field public uploaderModel:Lcom/nettv/livestore/models/SubtitleModel$UploaderModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploader"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileModels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/SubtitleModel$FileModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;->fileModels:Ljava/util/List;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;->subtitle_id:Ljava/lang/String;

    return-object v0
.end method
