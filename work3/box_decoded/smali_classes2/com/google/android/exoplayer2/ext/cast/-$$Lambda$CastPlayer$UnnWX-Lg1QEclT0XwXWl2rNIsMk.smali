.class public final synthetic Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$UnnWX-Lg1QEclT0XwXWl2rNIsMk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/cast/CastPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$UnnWX-Lg1QEclT0XwXWl2rNIsMk;->f$0:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    return-void
.end method


# virtual methods
.method public final invokeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$UnnWX-Lg1QEclT0XwXWl2rNIsMk;->f$0:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->lambda$updateTimelineAndNotifyIfChanged$4$CastPlayer(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
