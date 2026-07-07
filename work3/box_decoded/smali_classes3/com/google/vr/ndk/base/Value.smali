.class public final Lcom/google/vr/ndk/base/Value;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Value"


# instance fields
.field nativeValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/vr/ndk/base/GvrApi;->nativeCreateValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    return-void
.end method


# virtual methods
.method public final asFlags()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeValueAsFlags(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final asFloat()F
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeValueAsFloat(J)F

    move-result v0

    return v0
.end method

.method public final asInt()I
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeValueAsInt(J)I

    move-result v0

    return v0
.end method

.method public final asMat4f([F)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    invoke-static {v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeValueAsMat4f(J[F)V

    return-void
.end method

.method public final close()V
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeDestroyValue(J)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    return-void
.end method

.method protected final finalize()V
    .locals 5

    .line 7
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v0, "Value"

    const-string v1, "Value.close() should be called when done with the event."

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/Value;->close()V

    :cond_0
    return-void
.end method

.method public final getFlags()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeValueGetFlags(J)J

    move-result-wide v0

    return-wide v0
.end method
