.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;
.super Ljava/lang/Object;
.source "VOSubtitleFontInfo.java"


# instance fields
.field public fontColor:I

.field public fontName:Ljava/lang/String;

.field public fontSize:F

.field public fontSizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSizeStr:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    return-void
.end method


# virtual methods
.method public getFontColor()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontColor:I

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleFontInfo;->fontSize:F

    return v0
.end method
