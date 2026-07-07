.class final Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;
.super Ljava/lang/Object;
.source "CastPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/cast/CastPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerNotificationTask"
.end annotation


# instance fields
.field private final listenerInvocation:Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;

.field private final listenersSnapshot:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;)V
    .locals 0

    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->access$1500(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;->listenersSnapshot:Ljava/util/Iterator;

    .line 1152
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;->listenerInvocation:Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;Lcom/google/android/exoplayer2/ext/cast/CastPlayer$1;)V
    .locals 0

    .line 1145
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;-><init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1156
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;->listenersSnapshot:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;->listenersSnapshot:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/cast/CastPlayer$ListenerNotificationTask;->listenerInvocation:Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->invoke(Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;)V

    goto :goto_0

    :cond_0
    return-void
.end method
