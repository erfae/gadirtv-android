.class public Lcom/nettv/livestore/models/SubtitleModel;
.super Ljava/lang/Object;
.source "SubtitleModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/models/SubtitleModel$UploaderModel;,
        Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;,
        Lcom/nettv/livestore/models/SubtitleModel$RelatedLinkModel;,
        Lcom/nettv/livestore/models/SubtitleModel$FileModel;,
        Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;,
        Lcom/nettv/livestore/models/SubtitleModel$DataModel;
    }
.end annotation


# instance fields
.field public dataModels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/SubtitleModel$DataModel;",
            ">;"
        }
    .end annotation
.end field

.field public page:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field public per_page:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "per_page"
    .end annotation
.end field

.field public total_count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_count"
    .end annotation
.end field

.field public total_pages:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_pages"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataModels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/SubtitleModel$DataModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel;->dataModels:Ljava/util/List;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    return-object v0
.end method
