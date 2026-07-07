.class public Lcom/visualon/OSMPUtils/voOSDRMInit;
.super Ljava/lang/Object;
.source "voOSDRMInit.java"


# instance fields
.field private mDRMData:[B

.field private mDRMDataHandle:J


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSDRMInit;->mDRMDataHandle:J

    .line 39
    iput-object p3, p0, Lcom/visualon/OSMPUtils/voOSDRMInit;->mDRMData:[B

    return-void
.end method


# virtual methods
.method public getDRMInitData()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDRMInit;->mDRMData:[B

    return-object v0
.end method

.method public getDRMInitDataHandle()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSDRMInit;->mDRMDataHandle:J

    return-wide v0
.end method

.method public getDRMInitSize()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSDRMInit;->mDRMData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method
