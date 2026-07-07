.class public abstract Lcom/google/android/gms/internal/cast/zzca;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private zzut:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzca;->zzut:Z

    return-void
.end method


# virtual methods
.method public isAttached()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzca;->zzut:Z

    return v0
.end method

.method public abstract zzg(J)V
.end method

.method public zzk(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzca;->zzut:Z

    return-void
.end method
