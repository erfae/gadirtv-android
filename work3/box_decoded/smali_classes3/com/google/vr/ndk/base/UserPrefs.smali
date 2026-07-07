.class public Lcom/google/vr/ndk/base/UserPrefs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/UserPrefs$ControllerHandedness;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserPrefs"


# instance fields
.field private final nativeUserPrefs:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/ndk/base/UserPrefs;->nativeUserPrefs:J

    return-void
.end method


# virtual methods
.method public getControllerHandedness()I
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/google/vr/ndk/base/UserPrefs;->nativeUserPrefs:J

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeUserPrefsGetControllerHandedness(J)I

    move-result v0

    return v0
.end method
