.class public Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;
.super Ljava/lang/Object;
.source "voOSAudioRenderFormat.java"


# instance fields
.field BufferSize:I

.field Channels:I

.field Format:I

.field SampleBits:I

.field SampleRate:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Format:I

    .line 33
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleRate:I

    .line 34
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Channels:I

    .line 35
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleBits:I

    .line 36
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->BufferSize:I

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->BufferSize:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Channels:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Format:I

    return v0
.end method

.method public getSampleBits()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleBits:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleRate:I

    return v0
.end method

.method public setBufferSize(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->BufferSize:I

    return-void
.end method

.method public setChannels(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Channels:I

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->Format:I

    return-void
.end method

.method public setSampleBits(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleBits:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->SampleRate:I

    return-void
.end method
