.class Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;
.super Ljava/lang/Object;
.source "MerlinServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/merlin/MerlinServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerHolder"
.end annotation


# instance fields
.field private final bindCallbackManager:Lcom/novoda/merlin/BindCallbackManager;

.field private final connectCallbackManager:Lcom/novoda/merlin/ConnectCallbackManager;

.field private final disconnectCallbackManager:Lcom/novoda/merlin/DisconnectCallbackManager;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/ConnectCallbackManager;Lcom/novoda/merlin/DisconnectCallbackManager;Lcom/novoda/merlin/BindCallbackManager;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->connectCallbackManager:Lcom/novoda/merlin/ConnectCallbackManager;

    .line 104
    iput-object p2, p0, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->disconnectCallbackManager:Lcom/novoda/merlin/DisconnectCallbackManager;

    .line 105
    iput-object p3, p0, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->bindCallbackManager:Lcom/novoda/merlin/BindCallbackManager;

    return-void
.end method

.method static synthetic access$000(Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;)Lcom/novoda/merlin/DisconnectCallbackManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->disconnectCallbackManager:Lcom/novoda/merlin/DisconnectCallbackManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;)Lcom/novoda/merlin/ConnectCallbackManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->connectCallbackManager:Lcom/novoda/merlin/ConnectCallbackManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;)Lcom/novoda/merlin/BindCallbackManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->bindCallbackManager:Lcom/novoda/merlin/BindCallbackManager;

    return-object p0
.end method
