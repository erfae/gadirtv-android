.class public Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;
.super Ljava/lang/Object;
.source "ImageStore.java"


# instance fields
.field public data:[B

.field public height:I

.field public id:I

.field public size:I

.field public type:I

.field public width:I


# direct methods
.method public constructor <init>(IIIII[B)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->id:I

    .line 27
    iput p2, p0, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->width:I

    .line 28
    iput p3, p0, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->height:I

    .line 29
    iput p4, p0, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->size:I

    .line 30
    iput-object p6, p0, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->data:[B

    .line 31
    iput p5, p0, Lcom/visualon/OSMPSubTitle/DataObject/ImageStore;->type:I

    return-void
.end method
