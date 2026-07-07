.class public Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;
.super Ljava/lang/Object;
.source "voOSCPUInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSCPUInfo;


# instance fields
.field mCPUType:I

.field mCoreCount:I

.field mFrequency:I

.field mllReserved:J


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;->mCoreCount:I

    .line 70
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;->mCPUType:I

    .line 71
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;->mFrequency:I

    .line 72
    iput-wide p4, p0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;->mllReserved:J

    return-void
.end method


# virtual methods
.method public CPUType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;->mCPUType:I

    return v0
.end method

.method public CoreCount()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;->mCoreCount:I

    return v0
.end method

.method public Frequency()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;->mFrequency:I

    return v0
.end method

.method public ReservedField()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;->mllReserved:J

    return-wide v0
.end method
