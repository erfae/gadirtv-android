.class public Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;
.super Ljava/lang/Object;
.source "voOSConnectPortInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSConnectPortInfo;


# instance fields
.field mAudioConnectPortIndex:I

.field mVideoConnectPortIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->mAudioConnectPortIndex:I

    .line 26
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->mVideoConnectPortIndex:I

    return-void
.end method


# virtual methods
.method public AudioConnectPort()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->mAudioConnectPortIndex:I

    return v0
.end method

.method public VideoConnectPort()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->mVideoConnectPortIndex:I

    return v0
.end method
