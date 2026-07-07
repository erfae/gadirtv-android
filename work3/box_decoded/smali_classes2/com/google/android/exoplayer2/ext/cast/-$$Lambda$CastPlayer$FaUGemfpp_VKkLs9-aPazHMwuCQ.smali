.class public final synthetic Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(ZIZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$0:Z

    iput p2, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$1:I

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$2:Z

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$3:Z

    iput p5, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$4:I

    return-void
.end method


# virtual methods
.method public final invokeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$0:Z

    iget v1, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$1:I

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$2:Z

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$3:Z

    iget v4, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$FaUGemfpp_VKkLs9-aPazHMwuCQ;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->lambda$setPlayerStateAndNotifyIfChanged$6(ZIZZILcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
