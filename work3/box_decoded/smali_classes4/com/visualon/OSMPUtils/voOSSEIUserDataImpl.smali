.class public Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;
.super Ljava/lang/Object;
.source "voOSSEIUserDataImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSEIUserData;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSSEIUserDataImpl"


# instance fields
.field private nCount:I

.field private nSize:[I

.field private pBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataBuffer()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->pBuffer:[B

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nCount:I

    return v0
.end method

.method public getFieldLength(I)I
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    array-length v2, v0

    if-gt v2, p1, :cond_1

    return v1

    .line 52
    :cond_1
    aget p1, v0, p1

    return p1
.end method

.method public parse(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nCount:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 74
    :goto_0
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    .line 75
    aput v0, v1, v0

    const/4 v1, 0x0

    .line 77
    :goto_1
    iget v2, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nCount:I

    if-ge v0, v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 79
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->nSize:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    .line 82
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->pBuffer:[B

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method
