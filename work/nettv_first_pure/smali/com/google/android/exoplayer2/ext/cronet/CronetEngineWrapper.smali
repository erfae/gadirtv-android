.class public final Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;
.super Ljava/lang/Object;
.source "CronetEngineWrapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cronetEngine:Lorg/chromium/net/CronetEngine;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/ext/cronet/CronetUtil;->buildCronetEngine(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/net/CronetEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;->cronetEngine:Lorg/chromium/net/CronetEngine;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;->cronetEngine:Lorg/chromium/net/CronetEngine;

    return-void
.end method


# virtual methods
.method public final getCronetEngine()Lorg/chromium/net/CronetEngine;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;->cronetEngine:Lorg/chromium/net/CronetEngine;

    return-object v0
.end method
