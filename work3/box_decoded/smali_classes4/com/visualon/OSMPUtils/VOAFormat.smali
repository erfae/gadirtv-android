.class public Lcom/visualon/OSMPUtils/VOAFormat;
.super Ljava/lang/Object;
.source "VOAFormat.java"


# instance fields
.field public final channelCount:I

.field public final codec:Ljava/lang/String;

.field public final sampleRate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOAFormat;->codec:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/visualon/OSMPUtils/VOAFormat;->sampleRate:I

    .line 36
    iput p3, p0, Lcom/visualon/OSMPUtils/VOAFormat;->channelCount:I

    return-void
.end method

.method public static parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/VOAFormat;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ","

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 51
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 52
    invoke-static {v4}, Lcom/visualon/OSMPUtils/voMimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 53
    invoke-static {v5}, Lcom/visualon/OSMPUtils/voMimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    new-instance v3, Lcom/visualon/OSMPUtils/VOAFormat;

    invoke-direct {v3, v1, v0, v2}, Lcom/visualon/OSMPUtils/VOAFormat;-><init>(Ljava/lang/String;II)V

    .line 64
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v3
.end method
