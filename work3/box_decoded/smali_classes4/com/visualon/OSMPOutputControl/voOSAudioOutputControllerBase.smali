.class public abstract Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;
.super Ljava/lang/Object;
.source "voOSAudioOutputControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;
    }
.end annotation


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field private controllerListener:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;

.field focusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->audioManager:Landroid/media/AudioManager;

    .line 50
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->controllerListener:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;

    .line 52
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$1;-><init>(Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->focusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 43
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->audioManager:Landroid/media/AudioManager;

    .line 44
    iput-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->controllerListener:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;)Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->controllerListener:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;

    return-object p0
.end method

.method public static createController(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;
    .locals 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;

    invoke-direct {v0, p0, p1}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerAFR;-><init>(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)V

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerDeprecate;

    invoke-direct {v0, p0, p1}, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerDeprecate;-><init>(Landroid/media/AudioManager;Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->audioManager:Landroid/media/AudioManager;

    .line 39
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase;->controllerListener:Lcom/visualon/OSMPOutputControl/voOSAudioOutputControllerBase$audioOutputControllerListener;

    return-void
.end method

.method public abstract endPlayback()I
.end method

.method public abstract startPlayback()I
.end method
