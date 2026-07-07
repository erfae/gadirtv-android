.class public Lcom/verimatrix/vdc/MonitorLogin;
.super Ljava/lang/Object;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/MonitorLogin$ResponseHandler;,
        Lcom/verimatrix/vdc/MonitorLogin$Server;,
        Lcom/verimatrix/vdc/MonitorLogin$LoginAction;,
        Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;,
        Lcom/verimatrix/vdc/MonitorLogin$LoginState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MonitorLogin"

.field private static final TAG_STEPS:Ljava/lang/String;

.field private static final action:[[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

.field private static final transition:[[Lcom/verimatrix/vdc/MonitorLogin$LoginState;


# instance fields
.field private agent:Lcom/verimatrix/vdc/MonitorAgent;

.field private c:Landroid/content/Context;

.field private currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

.field private handler:Landroid/os/Handler;

.field lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private logoutRequestedByUser:Z

.field private mAppId:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mEncodeSubscriberId:Ljava/lang/Boolean;

.field private mEncodeUserId:Ljava/lang/Boolean;

.field private mGdprConsent:Ljava/lang/String;

.field private mOperatorCode:Ljava/lang/Long;

.field private mPlayerType:Ljava/lang/String;

.field private mPlayerVersion:Ljava/lang/String;

.field private mSubscriberId:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mUserType:Ljava/lang/String;

.field readLock:Ljava/util/concurrent/locks/Lock;

.field private servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verimatrix/vdc/MonitorLogin$Server;",
            ">;"
        }
    .end annotation
.end field

.field writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 19
    const-class v0, Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Steps"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [[Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const/4 v2, 0x7

    new-array v3, v2, [Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    .line 84
    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_OUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_IN:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_OUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v0

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const/4 v8, 0x4

    aput-object v4, v3, v8

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const/4 v9, 0x5

    aput-object v4, v3, v9

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    const/4 v10, 0x6

    aput-object v4, v3, v10

    aput-object v3, v1, v5

    new-array v3, v2, [Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v5

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_OUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v6

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_IN:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v7

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v0

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v8

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v9

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v10

    aput-object v3, v1, v6

    new-array v3, v2, [Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v5

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_OUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v6

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_IN:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v7

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_OUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v0

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v8

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v9

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    aput-object v4, v3, v10

    aput-object v3, v1, v7

    sput-object v1, Lcom/verimatrix/vdc/MonitorLogin;->transition:[[Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    new-array v1, v0, [[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    new-array v3, v2, [Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    .line 91
    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->LOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v5

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->NONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v6

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->NONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v7

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->NONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v0

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v8

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->LOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v9

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->FALLBACK:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v10

    aput-object v3, v1, v5

    new-array v3, v2, [Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->DELAY:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v5

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->LOGOUT:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v6

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->DONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v7

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->DELAY:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v0

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v8

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v9

    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->FALLBACK:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v4, v3, v10

    aput-object v3, v1, v6

    new-array v2, v2, [Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    sget-object v3, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v3, v2, v5

    sget-object v3, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->LOGOUT:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v3, v2, v6

    sget-object v3, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ERROR:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v3, v2, v7

    sget-object v3, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->NONE:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v3, v2, v0

    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v0, v2, v8

    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->RELOGIN:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v0, v2, v9

    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->FALLBACK:Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    aput-object v0, v2, v10

    aput-object v2, v1, v7

    sput-object v1, Lcom/verimatrix/vdc/MonitorLogin;->action:[[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    return-void
.end method

.method public constructor <init>(Lcom/verimatrix/vdc/MonitorAgent;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 24
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->logoutRequestedByUser:Z

    .line 131
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_OUT:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    .line 132
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->agent:Lcom/verimatrix/vdc/MonitorAgent;

    .line 134
    :try_start_0
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "HandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->handler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p1

    .line 139
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method static synthetic access$000(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->requestLogin(Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method static synthetic access$100(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->addCurrentServer(Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method static synthetic access$200(Lcom/verimatrix/vdc/MonitorLogin;)Lcom/verimatrix/vdc/Configuration;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/verimatrix/vdc/MonitorLogin;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/verimatrix/vdc/MonitorLogin;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/verimatrix/vdc/MonitorLogin;Landroid/os/Message;Lcom/verimatrix/vdc/MonitorLogin$Server;Lcom/verimatrix/vdc/Configuration;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/verimatrix/vdc/MonitorLogin;->handleConfigResponse(Landroid/os/Message;Lcom/verimatrix/vdc/MonitorLogin$Server;Lcom/verimatrix/vdc/Configuration;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/verimatrix/vdc/MonitorLogin;)Lcom/verimatrix/vdc/MonitorLogin$Server;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->requestFallbackServer(Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method static synthetic access$800(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/verimatrix/vdc/MonitorLogin;->requestStatus(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method private addCurrentServer(Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 3

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 614
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add server to stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private getAction(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;)Lcom/verimatrix/vdc/MonitorLogin$LoginAction;
    .locals 4

    .line 99
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " LoginStimuli "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin;->action:[[Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 101
    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin;->transition:[[Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->getValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->getValue()I

    move-result p1

    aget-object p1, v2, p1

    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " LoginAction "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getConfig()Lcom/verimatrix/vdc/Configuration;
    .locals 1

    .line 671
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->getCurrentConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private getConfigResponseCode(Landroid/os/Message;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 475
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 476
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method private getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;
    .locals 2

    const-string v0, ""

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 629
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verimatrix/vdc/MonitorLogin$Server;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 632
    :cond_0
    :try_start_1
    new-instance v1, Lcom/verimatrix/vdc/MonitorLogin$Server;

    invoke-direct {v1, p0, v0, v0}, Lcom/verimatrix/vdc/MonitorLogin$Server;-><init>(Lcom/verimatrix/vdc/MonitorLogin;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private getPreviousServer()Lcom/verimatrix/vdc/MonitorLogin$Server;
    .locals 3

    const-string v0, ""

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 659
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 660
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verimatrix/vdc/MonitorLogin$Server;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 662
    :cond_0
    :try_start_1
    new-instance v1, Lcom/verimatrix/vdc/MonitorLogin$Server;

    invoke-direct {v1, p0, v0, v0}, Lcom/verimatrix/vdc/MonitorLogin$Server;-><init>(Lcom/verimatrix/vdc/MonitorLogin;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private handleConfigResponse(Landroid/os/Message;Lcom/verimatrix/vdc/MonitorLogin$Server;Lcom/verimatrix/vdc/Configuration;)V
    .locals 7

    .line 353
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->getConfigResponseCode(Landroid/os/Message;)I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 468
    sget-object p2, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "config error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", back to the previous server "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getPreviousServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getPreviousServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->requestFallbackServer(Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    goto/16 :goto_7

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object p1

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new monitor server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "monitor_server"

    invoke-virtual {p1, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MonitorLoginSteps"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "monitor_server_active"

    .line 363
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "monitor_server_ip"

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p1, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p3, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p3, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_1
    iget-object v0, p2, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/verimatrix/vdc/NetworkUtils;->getProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    iget-object v0, p2, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-static {v0}, Lcom/verimatrix/vdc/NetworkUtils;->getProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_2
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->setLoginProtocol(Ljava/lang/String;)V

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 377
    invoke-virtual {p1, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-static {v3}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "://"

    if-nez v4, :cond_3

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p1, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_3
    invoke-virtual {p1, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-static {v3}, Lcom/verimatrix/vdc/NetworkUtils;->containsProtocol(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p1, v2, v0}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_4
    iget-object v0, p2, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    iget-object v3, p2, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    .line 394
    invoke-virtual {p1, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/NetworkUtils;->sameAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v3, "settings_configuration_version"

    const-string v4, "configuration_version"

    if-eqz v0, :cond_11

    .line 396
    invoke-virtual {p1, v4}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 397
    invoke-virtual {p3, v4}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 398
    invoke-virtual {p3, v4}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v4}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const/4 p3, 0x1

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_6

    .line 401
    :try_start_0
    invoke-static {}, Lcom/verimatrix/vdc/DatabaseManager;->getInstance()Lcom/verimatrix/vdc/DatabaseManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/verimatrix/vdc/DatabaseManager;->deleteAllEvents()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 403
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin;->TAG:Ljava/lang/String;

    const-string v5, "Call MonitorAgent.init() method before use library"

    invoke-static {v0, v5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    :cond_6
    :goto_1
    iget-object p3, p0, Lcom/verimatrix/vdc/MonitorLogin;->mEncodeUserId:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Lcom/verimatrix/vdc/Configuration;->getUserIdEncoded()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_2

    :cond_7
    const/4 p3, 0x0

    .line 408
    :goto_2
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->mEncodeSubscriberId:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/verimatrix/vdc/Configuration;->getSubscriberIdEncoded()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-nez p3, :cond_a

    if-eqz v1, :cond_9

    goto :goto_4

    .line 451
    :cond_9
    invoke-direct {p0, p2}, Lcom/verimatrix/vdc/MonitorLogin;->requestLoginSuccess(Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    .line 452
    invoke-virtual {p1, v4}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/verimatrix/vdc/MonitorLogin;->sendConfigLoadedEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    :goto_4
    const-string p2, "Error constructing AESCryptoUtils"

    const-string v0, "encrypt_iv"

    const-string v2, "encrypt_key"

    const-string v3, "\n"

    const-string v4, ""

    if-eqz p3, :cond_d

    .line 413
    iget-object p3, p0, Lcom/verimatrix/vdc/MonitorLogin;->mUserId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 414
    invoke-virtual {p1, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/verimatrix/vdc/AESCryptoUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 415
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/verimatrix/vdc/AESCryptoUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 417
    :try_start_1
    new-instance v6, Lcom/verimatrix/vdc/AESCryptoUtils;

    invoke-direct {v6, p3, v5}, Lcom/verimatrix/vdc/AESCryptoUtils;-><init>([B[B)V

    .line 418
    iget-object p3, p0, Lcom/verimatrix/vdc/MonitorLogin;->mUserId:Ljava/lang/String;

    invoke-virtual {v6, p3}, Lcom/verimatrix/vdc/AESCryptoUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 421
    :catch_1
    sget-object p3, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object p3, v4

    .line 424
    :goto_5
    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 425
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 427
    :cond_c
    invoke-virtual {p1, p3}, Lcom/verimatrix/vdc/Configuration;->setUserIdEncoded(Ljava/lang/String;)V

    .line 428
    sget-object p3, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const-string v5, "\'relogin with encoded user id\'"

    invoke-static {p3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v1, :cond_10

    .line 432
    iget-object p3, p0, Lcom/verimatrix/vdc/MonitorLogin;->mSubscriberId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_e

    .line 433
    invoke-virtual {p1, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/verimatrix/vdc/AESCryptoUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 434
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/AESCryptoUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 436
    :try_start_2
    new-instance v1, Lcom/verimatrix/vdc/AESCryptoUtils;

    invoke-direct {v1, p3, v0}, Lcom/verimatrix/vdc/AESCryptoUtils;-><init>([B[B)V

    .line 437
    iget-object p3, p0, Lcom/verimatrix/vdc/MonitorLogin;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Lcom/verimatrix/vdc/AESCryptoUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 440
    :catch_2
    sget-object p3, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object p2, v4

    .line 443
    :goto_6
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 444
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 446
    :cond_f
    invoke-virtual {p1, p2}, Lcom/verimatrix/vdc/Configuration;->setSubscriberIdEncoded(Ljava/lang/String;)V

    .line 447
    sget-object p1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const-string p2, "\'relogin with encoded subscriber id\'"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_10
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->requestRetryLogin(Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    goto :goto_7

    .line 455
    :cond_11
    sget-object p2, Lcom/verimatrix/vdc/MonitorLogin;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Server Match : Relogin RESP "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " PREF : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p1, v4}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/verimatrix/vdc/MonitorLogin;->sendConfigLoadedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object p2, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const-string p3, "\'relogin with new server from config\'"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance p2, Lcom/verimatrix/vdc/MonitorLogin$Server;

    invoke-virtual {p1, v1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p3, p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;-><init>(Lcom/verimatrix/vdc/MonitorLogin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/verimatrix/vdc/MonitorLogin;->requestChangeServer(Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    :goto_7
    return-void
.end method

.method private initServerIp(Lcom/verimatrix/vdc/MonitorLogin$Server;)Lcom/verimatrix/vdc/MonitorLogin$Server;
    .locals 1

    .line 509
    iget-object v0, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/verimatrix/vdc/NetworkUtils;->convertUrlToIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private loginAction(Lcom/verimatrix/vdc/MonitorLogin$LoginAction;Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v2

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorLogin$Server;->isEmpty()Z

    move-result v2

    xor-int/lit8 v18, v2, 0x1

    .line 295
    iget-object v3, v0, Lcom/verimatrix/vdc/MonitorLogin;->c:Landroid/content/Context;

    iget-object v4, v1, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    iget-object v5, v1, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    iget-object v6, v0, Lcom/verimatrix/vdc/MonitorLogin;->mSubscriberId:Ljava/lang/String;

    iget-object v7, v0, Lcom/verimatrix/vdc/MonitorLogin;->mPlayerType:Ljava/lang/String;

    iget-object v8, v0, Lcom/verimatrix/vdc/MonitorLogin;->mPlayerVersion:Ljava/lang/String;

    iget-object v9, v0, Lcom/verimatrix/vdc/MonitorLogin;->mAppVersion:Ljava/lang/String;

    iget-object v10, v0, Lcom/verimatrix/vdc/MonitorLogin;->mUserId:Ljava/lang/String;

    iget-object v11, v0, Lcom/verimatrix/vdc/MonitorLogin;->mEncodeUserId:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/verimatrix/vdc/MonitorLogin;->mEncodeSubscriberId:Ljava/lang/Boolean;

    iget-object v13, v0, Lcom/verimatrix/vdc/MonitorLogin;->mAppId:Ljava/lang/String;

    iget-object v14, v0, Lcom/verimatrix/vdc/MonitorLogin;->mUserType:Ljava/lang/String;

    iget-object v15, v0, Lcom/verimatrix/vdc/MonitorLogin;->mGdprConsent:Ljava/lang/String;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorLogin;->mDeviceId:Ljava/lang/String;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorLogin;->mOperatorCode:Ljava/lang/Long;

    move-object/from16 v17, v2

    new-instance v2, Landroid/os/Messenger;

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    new-instance v3, Lcom/verimatrix/vdc/MonitorLogin$2;

    move-object/from16 v21, v4

    move-object/from16 v4, p1

    invoke-direct {v3, v0, v0, v1, v4}, Lcom/verimatrix/vdc/MonitorLogin$2;-><init>(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;Lcom/verimatrix/vdc/MonitorLogin$LoginAction;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-static/range {v3 .. v19}, Lcom/verimatrix/vdc/NetworkManager;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLandroid/os/Messenger;)V

    return-void
.end method

.method private logoutAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/verimatrix/vdc/NetworkManager;->logout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;
    .locals 4

    const-string v0, ""

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 643
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verimatrix/vdc/MonitorLogin$Server;

    .line 645
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 646
    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove server from stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 649
    :cond_0
    :try_start_1
    new-instance v1, Lcom/verimatrix/vdc/MonitorLogin$Server;

    invoke-direct {v1, p0, v0, v0}, Lcom/verimatrix/vdc/MonitorLogin$Server;-><init>(Lcom/verimatrix/vdc/MonitorLogin;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private requestChangeServer(Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 1

    .line 496
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->initServerIp(Lcom/verimatrix/vdc/MonitorLogin$Server;)Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    .line 497
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->CHANGE_SERVER_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-direct {p0, v0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->requestStatus(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method private requestFallbackServer(Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 1

    .line 501
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->FALLBACK_SERVER_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-direct {p0, v0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->requestStatus(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method private requestLogin(Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 1

    .line 483
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->initServerIp(Lcom/verimatrix/vdc/MonitorLogin$Server;)Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    .line 484
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGIN_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-direct {p0, v0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->requestStatus(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method private requestLoginFailure()V
    .locals 2

    .line 505
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGIN_FAILURE:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/verimatrix/vdc/MonitorLogin;->requestStatus(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method private requestLoginSuccess(Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 1

    .line 488
    sget-object p1, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGIN_SUCCESS:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLogin;->requestStatus(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method private requestRetryLogin(Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 1

    .line 492
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->RELOGIN_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-direct {p0, v0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->requestStatus(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method

.method private requestStatus(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;Lcom/verimatrix/vdc/MonitorLogin$Server;)V
    .locals 6

    .line 152
    iget-boolean v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->logoutRequestedByUser:Z

    const-string v1, ", action="

    const-string v2, ", state="

    const-string v3, "requestStatus(stimuli="

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->LOGOUT_REQ:Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;

    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorLogin;->getAction(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;)Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    move-result-object v0

    .line 155
    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") ignored because user calls logout"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->getAction(Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;)Lcom/verimatrix/vdc/MonitorLogin$LoginAction;

    move-result-object v0

    .line 158
    sget-object v4, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginAction:[I

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin$LoginAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "logout "

    const-string v3, "start login "

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 218
    :pswitch_0
    sget-object p1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const-string p2, "none"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 214
    :pswitch_1
    sget-object p1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const-string p2, "startMonitoringServices"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->agent:Lcom/verimatrix/vdc/MonitorAgent;

    iget-object p2, p0, Lcom/verimatrix/vdc/MonitorLogin;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/verimatrix/vdc/MonitorAgent;->startMonitoringServices(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 210
    :pswitch_2
    sget-object p2, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const-string v0, "error"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object p2, Lcom/verimatrix/vdc/MonitorLogin;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state/action in login processing: State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoginStimuli = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 203
    :pswitch_3
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->removeCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 205
    sget-object p2, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p2, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/verimatrix/vdc/MonitorLogin;->logoutAction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 185
    :pswitch_4
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->removeCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    .line 186
    invoke-virtual {p1, p2}, Lcom/verimatrix/vdc/MonitorLogin$Server;->equals(Lcom/verimatrix/vdc/MonitorLogin$Server;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/verimatrix/vdc/MonitorLogin;->logoutAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorLogin$Server;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    sget-object p2, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0, v0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->loginAction(Lcom/verimatrix/vdc/MonitorLogin$LoginAction;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    goto/16 :goto_2

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    .line 195
    invoke-virtual {p2, p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->equals(Lcom/verimatrix/vdc/MonitorLogin$Server;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 196
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->removeCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    .line 198
    :cond_3
    sget-object p1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, v0, p2}, Lcom/verimatrix/vdc/MonitorLogin;->loginAction(Lcom/verimatrix/vdc/MonitorLogin$LoginAction;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    goto :goto_2

    .line 169
    :pswitch_5
    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin$4;->$SwitchMap$com$verimatrix$vdc$MonitorLogin$LoginStimuli:[I

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$LoginStimuli;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    .line 174
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->removeCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    goto :goto_1

    .line 171
    :cond_4
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object p1

    .line 177
    :goto_1
    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 178
    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/verimatrix/vdc/MonitorLogin;->logoutAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_5
    sget-object p1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0, v0, p2}, Lcom/verimatrix/vdc/MonitorLogin;->loginAction(Lcom/verimatrix/vdc/MonitorLogin$LoginAction;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    goto :goto_2

    .line 164
    :pswitch_6
    sget-object p1, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorLogin$Server;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, v0, p2}, Lcom/verimatrix/vdc/MonitorLogin;->loginAction(Lcom/verimatrix/vdc/MonitorLogin$LoginAction;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendConfigLoadedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 532
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p2, p1

    .line 536
    :cond_1
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object v1

    .line 539
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->c:Landroid/content/Context;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configurationVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settingsConfigurationVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "agentVersion="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getAgentVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "operatorCode="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/verimatrix/vdc/MonitorLogin;->mOperatorCode:Ljava/lang/Long;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-string v4, "config_loaded"

    .line 539
    invoke-static {v0, v1, v4, v3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    new-array v9, v2, [J

    .line 545
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->configurationVersionToLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v9, v5

    .line 546
    invoke-static {p2}, Lcom/verimatrix/vdc/MonitorUtils;->configurationVersionToLong(Ljava/lang/String;)J

    move-result-wide p1

    aput-wide p1, v9, v6

    .line 547
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getAgentVersionLong()J

    move-result-wide p1

    aput-wide p1, v9, v7

    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->mOperatorCode:Ljava/lang/Long;

    .line 548
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    aput-wide p1, v9, v8

    .line 550
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->c:Landroid/content/Context;

    const/16 v2, 0x53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    return-void
.end method


# virtual methods
.method public isLoggedIn()Z
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->LOGGED_IN:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLoginInProgress()Z
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->currentState:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/verimatrix/vdc/MonitorLogin$LoginState;->ATTEMPTING_LOGON:Lcom/verimatrix/vdc/MonitorLogin$LoginState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public login(Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    move-object v1, p0

    move-object v0, p1

    .line 242
    invoke-virtual {p0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v2

    iget-object v2, v2, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->logout(Lcom/verimatrix/vdc/Configuration;)Lcom/verimatrix/vdc/Monitor$Status;

    goto :goto_0

    .line 246
    :cond_0
    new-instance v2, Lcom/verimatrix/vdc/Configuration;

    invoke-direct {v2, p1}, Lcom/verimatrix/vdc/Configuration;-><init>(Lcom/verimatrix/vdc/Configuration;)V

    .line 247
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v3

    iget-object v3, v3, Lcom/verimatrix/vdc/MonitorLogin$Server;->url:Ljava/lang/String;

    const-string v4, "monitor_server"

    invoke-virtual {v2, v4, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorLogin;->getCurrentServer()Lcom/verimatrix/vdc/MonitorLogin$Server;

    move-result-object v3

    iget-object v3, v3, Lcom/verimatrix/vdc/MonitorLogin$Server;->ip:Ljava/lang/String;

    const-string v4, "monitor_server_ip"

    invoke-virtual {v2, v4, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, v2}, Lcom/verimatrix/vdc/MonitorLogin;->logout(Lcom/verimatrix/vdc/Configuration;)Lcom/verimatrix/vdc/Monitor$Status;

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue;->getInstance()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/verimatrix/vdc/RequestQueue;->clean()V

    :goto_0
    const/4 v2, 0x0

    .line 255
    iput-boolean v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->logoutRequestedByUser:Z

    move-object v2, p2

    .line 257
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mSubscriberId:Ljava/lang/String;

    move-object v2, p3

    .line 258
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mPlayerType:Ljava/lang/String;

    move-object v2, p4

    .line 259
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mPlayerVersion:Ljava/lang/String;

    move-object v2, p5

    .line 260
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mAppVersion:Ljava/lang/String;

    move-object v2, p6

    .line 261
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mUserId:Ljava/lang/String;

    move-object v2, p7

    .line 262
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mEncodeUserId:Ljava/lang/Boolean;

    move-object v2, p8

    .line 263
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mEncodeSubscriberId:Ljava/lang/Boolean;

    move-object v2, p9

    .line 264
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mAppId:Ljava/lang/String;

    move-object v2, p10

    .line 265
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mUserType:Ljava/lang/String;

    move-object/from16 v2, p11

    .line 266
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mGdprConsent:Ljava/lang/String;

    move-object/from16 v2, p12

    .line 267
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mDeviceId:Ljava/lang/String;

    move-object/from16 v2, p13

    .line 268
    iput-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->mOperatorCode:Ljava/lang/Long;

    .line 270
    sget-object v2, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const-string v3, "*********************** Login request ***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_0
    iget-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 274
    iget-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->servers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 281
    iget-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/verimatrix/vdc/MonitorLogin$1;

    invoke-direct {v3, p0, p1}, Lcom/verimatrix/vdc/MonitorLogin$1;-><init>(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/Configuration;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 278
    iget-object v2, v1, Lcom/verimatrix/vdc/MonitorLogin;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public logout(Lcom/verimatrix/vdc/Configuration;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 2

    .line 559
    sget-object v0, Lcom/verimatrix/vdc/MonitorLogin;->TAG_STEPS:Ljava/lang/String;

    const-string v1, "*********************** Logout request **********************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->c:Landroid/content/Context;

    const-string v1, "Logout"

    invoke-static {v0, p1, v1}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/verimatrix/vdc/MonitorLogin$3;

    invoke-direct {v1, p0}, Lcom/verimatrix/vdc/MonitorLogin$3;-><init>(Lcom/verimatrix/vdc/MonitorLogin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 571
    iput-boolean v0, p0, Lcom/verimatrix/vdc/MonitorLogin;->logoutRequestedByUser:Z

    .line 573
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue;->getInstance()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/RequestQueue;->clean()V

    const/4 v0, 0x0

    .line 574
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->setLoginProtocol(Ljava/lang/String;)V

    .line 576
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin;->c:Landroid/content/Context;

    return-void
.end method
