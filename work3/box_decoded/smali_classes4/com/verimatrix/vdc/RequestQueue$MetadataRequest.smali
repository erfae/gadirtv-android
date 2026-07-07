.class public Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;
.super Lcom/verimatrix/vdc/RequestQueue$Request;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MetadataRequest"
.end annotation


# instance fields
.field localMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

.field stream:Lcom/verimatrix/vdc/Stream;


# direct methods
.method public constructor <init>(Lcom/verimatrix/vdc/Stream;Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Stream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 176
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/RequestQueue$Request;-><init>(I)V

    .line 177
    iput-object p1, p0, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;->stream:Lcom/verimatrix/vdc/Stream;

    .line 178
    iput-object p2, p0, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;->localMetadata:Ljava/util/Map;

    .line 179
    iput-object p3, p0, Lcom/verimatrix/vdc/RequestQueue$MetadataRequest;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    return-void
.end method
