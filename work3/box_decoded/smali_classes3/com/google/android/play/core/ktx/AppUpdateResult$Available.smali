.class public final Lcom/google/android/play/core/ktx/AppUpdateResult$Available;
.super Lcom/google/android/play/core/ktx/AppUpdateResult;
.source "AppUpdateManagerKtx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/ktx/AppUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Available"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/google/android/play/core/ktx/AppUpdateResult$Available;",
        "Lcom/google/android/play/core/ktx/AppUpdateResult;",
        "appUpdateManager",
        "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
        "updateInfo",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V",
        "getUpdateInfo",
        "()Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "startFlexibleUpdate",
        "",
        "activity",
        "Landroid/app/Activity;",
        "requestCode",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "startImmediateUpdate",
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
.field private final appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private final updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 1

    const-string v0, "appUpdateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, v0}, Lcom/google/android/play/core/ktx/AppUpdateResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    iput-object p2, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-void
.end method


# virtual methods
.method public final getUpdateInfo()Lcom/google/android/play/core/appupdate/AppUpdateInfo;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-object v0
.end method

.method public final startFlexibleUpdate(Landroid/app/Activity;I)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 244
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x0

    .line 243
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z

    move-result p1

    return p1
.end method

.method public final startFlexibleUpdate(Landroidx/fragment/app/Fragment;I)Z
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 258
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x0

    .line 257
    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroidx/fragment/app/Fragment;I)Z

    move-result p1

    return p1
.end method

.method public final startImmediateUpdate(Landroid/app/Activity;I)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 272
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x1

    .line 271
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z

    move-result p1

    return p1
.end method

.method public final startImmediateUpdate(Landroidx/fragment/app/Fragment;I)Z
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 286
    iget-object v1, p0, Lcom/google/android/play/core/ktx/AppUpdateResult$Available;->updateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const/4 v2, 0x1

    .line 285
    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/play/core/ktx/AppUpdateManagerKtxKt;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroidx/fragment/app/Fragment;I)Z

    move-result p1

    return p1
.end method
