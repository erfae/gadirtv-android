.class public Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;
.super Ljava/lang/Object;
.source "voOSVideoInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSVideoInfo;


# instance fields
.field private mAngle:I

.field private mFormat:Lcom/visualon/OSMPUtils/voOSVideoFormat;

.field private mVideoDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSVideoFormat;

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mAngle:I

    .line 38
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mVideoDesc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSVideoFormat;I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSVideoFormat;

    .line 47
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mAngle:I

    return-void
.end method


# virtual methods
.method public Angle()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mAngle:I

    return v0
.end method

.method public Format()Lcom/visualon/OSMPUtils/voOSVideoFormat;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSVideoFormat;

    return-object v0
.end method

.method public VideoDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 1

    .line 59
    new-instance v0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSVideoFormat;

    .line 60
    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->parse(Landroid/os/Parcel;)Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPUtils/voOSVideoInfoImpl;->mAngle:I

    const/4 p1, 0x1

    return p1
.end method
