.class Lcom/inka/ncg2/a/g;
.super Lcom/inka/ncg2/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inka/ncg2/a/g$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field private static final c:Ljava/lang/String; = "state"


# instance fields
.field private d:Lcom/inka/ncg2/a/g$a;

.field private e:Z

.field private f:Lcom/inka/ncg2/a/d;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/inka/ncg2/a/b;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/inka/ncg2/a/g;->e:Z

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/inka/ncg2/a/g;->f:Lcom/inka/ncg2/a/d;

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inka/ncg2/a/g;->g:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/inka/ncg2/a/g$1;

    invoke-direct {v0, p0}, Lcom/inka/ncg2/a/g$1;-><init>(Lcom/inka/ncg2/a/g;)V

    iput-object v0, p0, Lcom/inka/ncg2/a/g;->h:Ljava/lang/Runnable;

    .line 233
    new-instance v0, Lcom/inka/ncg2/a/g$2;

    invoke-direct {v0, p0}, Lcom/inka/ncg2/a/g$2;-><init>(Lcom/inka/ncg2/a/g;)V

    iput-object v0, p0, Lcom/inka/ncg2/a/g;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/inka/ncg2/a/g;)Lcom/inka/ncg2/a/d;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/inka/ncg2/a/g;->f:Lcom/inka/ncg2/a/d;

    return-object p0
.end method

.method static synthetic a(Lcom/inka/ncg2/a/g;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/inka/ncg2/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/inka/ncg2/a/g;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/inka/ncg2/a/g;->e:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/inka/ncg2/a/g;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/inka/ncg2/a/g;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/inka/ncg2/a/g;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/inka/ncg2/a/g;->l()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/inka/ncg2/a/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/inka/ncg2/a/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/inka/ncg2/a/g;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/inka/ncg2/a/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/inka/ncg2/a/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/inka/ncg2/a/g;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/inka/ncg2/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inka/ncg2/a/g;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/inka/ncg2/a/d;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/inka/ncg2/a/g;->f:Lcom/inka/ncg2/a/d;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcom/inka/ncg2/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/inka/ncg2/a/e;->a(Landroid/content/Context;)V

    .line 120
    invoke-direct {p0}, Lcom/inka/ncg2/a/g;->h()V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 191
    invoke-static {p1, v1}, Lcom/inka/ncg2/a/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-boolean v1, p0, Lcom/inka/ncg2/a/g;->e:Z

    if-eqz v1, :cond_1

    .line 195
    iget-object v2, p0, Lcom/inka/ncg2/a/g;->d:Lcom/inka/ncg2/a/g$a;

    invoke-virtual {v2, p1, v0}, Lcom/inka/ncg2/a/g$a;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 196
    iput-boolean v0, p0, Lcom/inka/ncg2/a/g;->e:Z

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/inka/ncg2/a/g;->d:Lcom/inka/ncg2/a/g$a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/inka/ncg2/a/g$a;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    iput-boolean v2, p0, Lcom/inka/ncg2/a/g;->e:Z

    .line 205
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/inka/ncg2/a/g;->e:Z

    if-eq v1, p1, :cond_3

    .line 206
    invoke-direct {p0}, Lcom/inka/ncg2/a/g;->l()V

    :cond_3
    return-void
.end method

.method public d()Z
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/inka/ncg2/a/g;->j()V

    .line 142
    iget-object v0, p0, Lcom/inka/ncg2/a/g;->d:Lcom/inka/ncg2/a/g$a;

    invoke-virtual {v0}, Lcom/inka/ncg2/a/g$a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    invoke-virtual {p0, v1}, Lcom/inka/ncg2/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/inka/ncg2/a/b;->e()V

    .line 176
    invoke-direct {p0}, Lcom/inka/ncg2/a/g;->k()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/inka/ncg2/a/g;->a:Landroid/content/Context;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/inka/ncg2/a/g;->e:Z

    return v0
.end method

.method public j()V
    .locals 12

    const-string v0, "logFilter:StatusBarPolicy:D,c,onHdmiPlugIn Starting!,onHdmiPlugOut Starting!"

    const-string v1, "logFilter:StatusBar.DisplayController:D,c,onHdmiPlugIn Starting!,onHdmiPlugOut Starting!"

    const-string v2, "logFilter:SurfaceFlinger:D,c,setHdmiStatus(uint32_t) HDMI cable status = 1,setHdmiStatus(uint32_t) HDMI cable status = 0"

    const-string v3, "logFilter:AudioService:W,c, connected, disconnected"

    const-string v4, "logFilter:AudioService:V,c,_connected,_disconnected"

    const-string v5, "logFilter:HDMIService:I,e,HDMI connected and start out,REMOVE Event received and stop HDMI Out,LG-SU760"

    const-string v6, "logFilter:HDMIService:E,e,state = 1,state = 0"

    const-string v7, "logFilter:DisplayService:D,e,enableHDMIOutput(true),enableHDMIOutput(false),HTC_X515E"

    const-string v8, "logFilter:hdmid:D,c,sethdmistatus:1,sethdmistatus:0"

    const-string v9, "logFilter:HDMIService:E,e,HDMI_CABLE_CONNECTED,HDMI_CABLE_DISCONNECTED"

    const-string v10, "logFilter:hdmid:D,c,setHdmiStatus:1,setHdmiStatus:0"

    const-string v11, "logFilter:HDMIObserver:E,c, ACTION_HDMI_PLUG: state: 1 name:, ACTION_HDMI_PLUG: state: 0 name:"

    .line 152
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/inka/ncg2/a/g$a;

    invoke-direct {v1, p0, v0}, Lcom/inka/ncg2/a/g$a;-><init>(Lcom/inka/ncg2/a/g;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/inka/ncg2/a/g;->d:Lcom/inka/ncg2/a/g$a;

    return-void
.end method
