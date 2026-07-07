.class public final Lcom/google/vr/ndk/base/Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/Properties$SafetyRegionType;,
        Lcom/google/vr/ndk/base/Properties$TrackingStatusFlag;,
        Lcom/google/vr/ndk/base/Properties$PropertyType;
    }
.end annotation


# instance fields
.field private final nativeProperties:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/ndk/base/Properties;->nativeProperties:J

    return-void
.end method


# virtual methods
.method public final get(ILcom/google/vr/ndk/base/Value;)Z
    .locals 4

    .line 4
    iget-wide v0, p0, Lcom/google/vr/ndk/base/Properties;->nativeProperties:J

    iget-wide v2, p2, Lcom/google/vr/ndk/base/Value;->nativeValue:J

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetProperty(JIJ)Z

    move-result p1

    return p1
.end method
