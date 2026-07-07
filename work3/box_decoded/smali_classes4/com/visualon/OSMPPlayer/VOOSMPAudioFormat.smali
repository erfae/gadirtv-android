.class public Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;
.super Ljava/lang/Object;
.source "VOOSMPAudioFormat.java"


# instance fields
.field private audioFormat:I

.field private channels:I

.field private sampleBits:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->audioFormat:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->channels:I

    return v0
.end method

.method public getSampleBits()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->sampleBits:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->sampleRate:I

    return v0
.end method

.method public setAudioFormat(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;
    .locals 0

    .line 28
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->audioFormat:I

    return-object p0
.end method

.method public setChannels(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;
    .locals 0

    .line 46
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->channels:I

    return-object p0
.end method

.method public setSampleBits(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;
    .locals 0

    .line 55
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->sampleBits:I

    return-object p0
.end method

.method public setSampleRate(I)Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;
    .locals 0

    .line 37
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAudioFormat;->sampleRate:I

    return-object p0
.end method
