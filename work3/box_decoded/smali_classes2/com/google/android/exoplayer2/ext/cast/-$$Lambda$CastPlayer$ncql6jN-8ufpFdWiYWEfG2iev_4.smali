.class public final synthetic Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$ncql6jN-8ufpFdWiYWEfG2iev_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$ncql6jN-8ufpFdWiYWEfG2iev_4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$ncql6jN-8ufpFdWiYWEfG2iev_4;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$ncql6jN-8ufpFdWiYWEfG2iev_4;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$ncql6jN-8ufpFdWiYWEfG2iev_4;->INSTANCE:Lcom/google/android/exoplayer2/ext/cast/-$$Lambda$CastPlayer$ncql6jN-8ufpFdWiYWEfG2iev_4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invokeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->lambda$updateInternalStateAndNotifyIfChanged$2(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
