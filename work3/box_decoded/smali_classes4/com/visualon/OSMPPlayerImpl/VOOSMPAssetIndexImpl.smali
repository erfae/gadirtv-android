.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;
.super Ljava/lang/Object;
.source "VOOSMPAssetIndexImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPAssetIndexImpl"


# instance fields
.field private mAudioIndex:I

.field private mSubtitleIndex:I

.field private mVideoIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    .line 35
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    .line 36
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 40
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    aget v0, p1, v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    const/4 v0, 0x1

    .line 49
    aget v0, p1, v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    const/4 v0, 0x2

    .line 50
    aget p1, p1, v0

    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    return-void

    :cond_1
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAssetIndexImpl"

    const-string v1, "AssetIndex info is invalid."

    .line 42
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    .line 44
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    .line 45
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    return-void
.end method


# virtual methods
.method public getAudioIndex()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    return v0
.end method

.method public getSubtitleIndex()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    return v0
.end method

.method public getVideoIndex()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mVideoIndex:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mAudioIndex:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->mSubtitleIndex:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAssetIndexImpl"

    const-string v1, "The Parcel object is null"

    .line 61
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "audioIndex"

    .line 69
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->getAudioIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "videoIndex"

    .line 70
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->getVideoIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "subtitleIndex"

    .line 71
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->getSubtitleIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
