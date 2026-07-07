.class public Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;
.super Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;
.source "voOSAudioOutputControllerAFR.java"


# instance fields
.field private afrBuilder:Landroid/media/AudioFocusRequest$Builder;

.field private currentAFR:Landroid/media/AudioFocusRequest;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;-><init>(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->currentAFR:Landroid/media/AudioFocusRequest;

    .line 23
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->afrBuilder:Landroid/media/AudioFocusRequest$Builder;

    .line 26
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->afrBuilder:Landroid/media/AudioFocusRequest$Builder;

    .line 27
    iget-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->focusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    return-void
.end method


# virtual methods
.method public endPlayback()I
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->currentAFR:Landroid/media/AudioFocusRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->currentAFR:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->currentAFR:Landroid/media/AudioFocusRequest;

    :cond_1
    return v1
.end method

.method public startPlayback()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->currentAFR:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->currentAFR:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->afrBuilder:Landroid/media/AudioFocusRequest$Builder;

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->currentAFR:Landroid/media/AudioFocusRequest;

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;->currentAFR:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method
