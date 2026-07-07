.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;
.super Ljava/lang/Object;
.source "VOSubtitleTextInfoEntry.java"


# instance fields
.field public stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    return-void
.end method


# virtual methods
.method public getStringInfo()Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleStringInfo;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextInfoEntry;->text:Ljava/lang/String;

    return-object v0
.end method
