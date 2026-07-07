.class public Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;
.super Ljava/lang/Object;
.source "voOSOutputControlServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSOutputControlServer"

.field private static m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

.field private mEventHandler:Landroid/os/Handler;

.field private mHDMICheckState:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

.field private mListener:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

.field private mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mListener:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    .line 47
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$1;-><init>(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mHDMICheckState:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    .line 103
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;-><init>(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    .line 166
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
    .locals 1

    .line 26
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    return-object v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mListener:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    return-object p0
.end method


# virtual methods
.method public closeMiracast()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->closeMiracast()I

    :cond_0
    return-void
.end method

.method public setOutputControlListener(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mListener:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    return-void
.end method

.method public startDisplayListener()V
    .locals 5

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    .line 174
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "@@@voOSOutputControlServer"

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "Initial HDMI Check module"

    .line 175
    invoke-static {v3, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_0
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->Release()V

    const/4 v0, 0x0

    .line 180
    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    .line 182
    :cond_1
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    .line 184
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mHDMICheckState:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->setOnHDMIStateChangeListener(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;)V

    .line 185
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 186
    sget-object v4, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isSupported()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x1

    sget-object v4, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isHDMIConnected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v2, "Init HDMI Check module successful, Is support HDMI check is %b,  current connect state is %b"

    invoke-static {v3, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    .line 192
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    if-nez v0, :cond_3

    .line 194
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    .line 195
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->setHandler(Landroid/os/Handler;)V

    .line 196
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->setOnExternalDisplayListener(Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;)V

    .line 197
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->start()V

    :cond_3
    return-void
.end method

.method public stopDisplayListener()V
    .locals 3

    .line 210
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->Release()V

    .line 213
    sput-object v1, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    .line 216
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->stop()V

    .line 219
    iput-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    :cond_1
    return-void
.end method
