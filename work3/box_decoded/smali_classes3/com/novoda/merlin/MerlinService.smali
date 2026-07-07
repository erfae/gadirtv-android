.class public Lcom/novoda/merlin/MerlinService;
.super Landroid/app/Service;
.source "MerlinService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/MerlinService$LocalBinder;,
        Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;
    }
.end annotation


# static fields
.field private static isBound:Z


# instance fields
.field private binder:Landroid/os/IBinder;

.field private connectivityChangesForwarder:Lcom/novoda/merlin/ConnectivityChangesForwarder;

.field private connectivityChangesRegister:Lcom/novoda/merlin/ConnectivityChangesRegister;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    new-instance v0, Lcom/novoda/merlin/MerlinService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/novoda/merlin/MerlinService$LocalBinder;-><init>(Lcom/novoda/merlin/MerlinService;)V

    iput-object v0, p0, Lcom/novoda/merlin/MerlinService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/novoda/merlin/MerlinService;)Lcom/novoda/merlin/ConnectivityChangesForwarder;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesForwarder:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    return-object p0
.end method

.method static synthetic access$002(Lcom/novoda/merlin/MerlinService;Lcom/novoda/merlin/ConnectivityChangesForwarder;)Lcom/novoda/merlin/ConnectivityChangesForwarder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesForwarder:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/novoda/merlin/MerlinService;Lcom/novoda/merlin/ConnectivityChangesRegister;)Lcom/novoda/merlin/ConnectivityChangesRegister;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesRegister:Lcom/novoda/merlin/ConnectivityChangesRegister;

    return-object p1
.end method

.method static synthetic access$200(Lcom/novoda/merlin/MerlinService;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/novoda/merlin/MerlinService;->start()V

    return-void
.end method

.method private assertDependenciesBound()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesRegister:Lcom/novoda/merlin/ConnectivityChangesRegister;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesForwarder:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    const-class v0, Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-static {v0}, Lcom/novoda/merlin/MerlinServiceDependencyMissingException;->missing(Ljava/lang/Class;)Lcom/novoda/merlin/MerlinServiceDependencyMissingException;

    move-result-object v0

    throw v0

    .line 52
    :cond_1
    const-class v0, Lcom/novoda/merlin/ConnectivityChangesRegister;

    invoke-static {v0}, Lcom/novoda/merlin/MerlinServiceDependencyMissingException;->missing(Ljava/lang/Class;)Lcom/novoda/merlin/MerlinServiceDependencyMissingException;

    move-result-object v0

    throw v0
.end method

.method public static isBound()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/novoda/merlin/MerlinService;->isBound:Z

    return v0
.end method

.method private start()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/novoda/merlin/MerlinService;->assertDependenciesBound()V

    .line 46
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesForwarder:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-virtual {v0}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->forwardInitialNetworkStatus()V

    .line 47
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesRegister:Lcom/novoda/merlin/ConnectivityChangesRegister;

    iget-object v1, p0, Lcom/novoda/merlin/MerlinService;->binder:Landroid/os/IBinder;

    check-cast v1, Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;

    invoke-virtual {v0, v1}, Lcom/novoda/merlin/ConnectivityChangesRegister;->register(Lcom/novoda/merlin/MerlinService$ConnectivityChangesNotifier;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x1

    .line 23
    sput-boolean p1, Lcom/novoda/merlin/MerlinService;->isBound:Z

    .line 24
    iget-object p1, p0, Lcom/novoda/merlin/MerlinService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/novoda/merlin/MerlinService;->isBound:Z

    .line 30
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesRegister:Lcom/novoda/merlin/ConnectivityChangesRegister;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/novoda/merlin/ConnectivityChangesRegister;->unregister()V

    .line 32
    iput-object v1, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesRegister:Lcom/novoda/merlin/ConnectivityChangesRegister;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesForwarder:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    if-eqz v0, :cond_1

    .line 37
    iput-object v1, p0, Lcom/novoda/merlin/MerlinService;->connectivityChangesForwarder:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    .line 40
    :cond_1
    iput-object v1, p0, Lcom/novoda/merlin/MerlinService;->binder:Landroid/os/IBinder;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
