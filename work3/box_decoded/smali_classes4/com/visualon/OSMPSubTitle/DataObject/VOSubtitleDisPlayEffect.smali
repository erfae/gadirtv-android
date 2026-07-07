.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;
.super Ljava/lang/Object;
.source "VOSubtitleDisPlayEffect.java"


# instance fields
.field public effectDirection:I

.field public effectSpeed:I

.field public effectType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    .line 23
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    .line 24
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectSpeed:I

    return-void
.end method


# virtual methods
.method public getEffectDirection()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectDirection:I

    return v0
.end method

.method public getEffectSpeed()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectSpeed:I

    return v0
.end method

.method public getEffectType()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleDisPlayEffect;->effectType:I

    return v0
.end method
