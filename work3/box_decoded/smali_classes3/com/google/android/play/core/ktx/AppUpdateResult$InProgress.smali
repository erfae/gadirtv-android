.class public final Lcom/google/android/play/core/ktx/AppUpdateResult$InProgress;
.super Lcom/google/android/play/core/ktx/AppUpdateResult;
.source "AppUpdateManagerKtx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/ktx/AppUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/google/android/play/core/ktx/AppUpdateResult$InProgress;",
        "Lcom/google/android/play/core/ktx/AppUpdateResult;",
        "installState",
        "Lcom/google/android/play/core/install/InstallState;",
        "(Lcom/google/android/play/core/install/InstallState;)V",
        "getInstallState",
        "()Lcom/google/android/play/core/install/InstallState;",
        "tmp.wkwm2e3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final installState:Lcom/google/android/play/core/install/InstallState;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/install/InstallState;)V
    .locals 1

    const-string v0, "installState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, v0}, Lcom/google/android/play/core/ktx/AppUpdateResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$InProgress;->installState:Lcom/google/android/play/core/install/InstallState;

    return-void
.end method


# virtual methods
.method public final getInstallState()Lcom/google/android/play/core/install/InstallState;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$InProgress;->installState:Lcom/google/android/play/core/install/InstallState;

    return-object v0
.end method
