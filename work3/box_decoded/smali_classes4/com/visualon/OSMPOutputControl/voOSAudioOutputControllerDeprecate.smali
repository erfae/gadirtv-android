.class public Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerDeprecate;
.super Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;
.source "voOSAudioOutputControllerDeprecate.java"


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;-><init>(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)V

    return-void
.end method


# virtual methods
.method public endPlayback()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerDeprecate;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerDeprecate;->focusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public startPlayback()I
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerDeprecate;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerDeprecate;->focusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method
