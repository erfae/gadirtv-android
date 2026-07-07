.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$FHdePZbX29tMQI2hkEItev2KViw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$FHdePZbX29tMQI2hkEItev2KViw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FHdePZbX29tMQI2hkEItev2KViw;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/-$$Lambda$FHdePZbX29tMQI2hkEItev2KViw;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FHdePZbX29tMQI2hkEItev2KViw;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$FHdePZbX29tMQI2hkEItev2KViw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired()V

    return-void
.end method
