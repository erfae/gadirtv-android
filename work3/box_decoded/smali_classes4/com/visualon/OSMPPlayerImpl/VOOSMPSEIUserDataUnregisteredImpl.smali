.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;
.super Ljava/lang/Object;
.source "VOOSMPSEIUserDataUnregisteredImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPSEIUserDataUnregistered;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPSEIUserDataUnregisteredImpl"


# instance fields
.field private data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    return-void
.end method


# virtual methods
.method public getDataBuffer()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->getDataBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFieldLength(I)I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->getFieldLength(I)I

    move-result p1

    return p1
.end method

.method public setData(Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->data:Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    return-void
.end method
