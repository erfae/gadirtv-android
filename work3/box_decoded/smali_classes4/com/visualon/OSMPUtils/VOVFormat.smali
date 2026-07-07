.class public Lcom/visualon/OSMPUtils/VOVFormat;
.super Ljava/lang/Object;
.source "VOVFormat.java"


# instance fields
.field public final codec:Ljava/lang/String;

.field public final frameRate:D

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IID)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOVFormat;->codec:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/visualon/OSMPUtils/VOVFormat;->width:I

    .line 37
    iput p3, p0, Lcom/visualon/OSMPUtils/VOVFormat;->height:I

    .line 38
    iput-wide p4, p0, Lcom/visualon/OSMPUtils/VOVFormat;->frameRate:D

    return-void
.end method

.method public static parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/VOVFormat;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ","

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 53
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 54
    invoke-static {v4}, Lcom/visualon/OSMPUtils/voMimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 55
    invoke-static {v5}, Lcom/visualon/OSMPUtils/voMimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v1

    .line 62
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 63
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 64
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 65
    new-instance v0, Lcom/visualon/OSMPUtils/VOVFormat;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/visualon/OSMPUtils/VOVFormat;-><init>(Ljava/lang/String;IID)V

    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
