.class public Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;
.super Ljava/lang/Object;
.source "voOSIOFailedDescImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSIOFailedDesc;


# instance fields
.field private mReason:I

.field private mResponse:Ljava/lang/String;

.field private mResponsePayload:[B

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mReason:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponse:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponsePayload:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mReason:I

    .line 37
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponse:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mUrl:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponsePayload:[B

    return-void
.end method


# virtual methods
.method public getReason()Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
    .locals 1

    .line 70
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mReason:I

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->valueOf(I)Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getResponsePayload()[B
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponsePayload:[B

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mReason:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponse:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponsePayload:[B

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->mResponsePayload:[B

    .line 58
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    const/4 p1, 0x1

    return p1
.end method
