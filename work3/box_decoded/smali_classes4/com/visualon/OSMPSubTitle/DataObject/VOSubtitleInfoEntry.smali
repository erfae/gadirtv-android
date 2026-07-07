.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;
.super Ljava/lang/Object;
.source "VOSubtitleInfoEntry.java"


# instance fields
.field public duration:I

.field public horizontalAlignment:I

.field public subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

.field public subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

.field public verticalAlignment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    .line 24
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VORect;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    .line 25
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->horizontalAlignment:I

    .line 28
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->verticalAlignment:I

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->duration:I

    return v0
.end method

.method public getSubtitleDispInfo()Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleDispInfo:Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisplayInfo;

    return-object v0
.end method

.method public getSubtitleRectInfo()Lcom/visualon/OSMPSubTitle/DataObject/VORect;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfoEntry;->subtitleRectInfo:Lcom/visualon/OSMPSubTitle/DataObject/VORect;

    return-object v0
.end method
