.class public abstract Lcom/google/android/gms/internal/cast/zzcp;
.super Lcom/google/android/gms/cast/internal/zzd;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/cast/internal/zzd<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected zzaaq:Lcom/google/android/gms/cast/internal/zzam;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzch;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzch;->zza(Lcom/google/android/gms/internal/cast/zzch;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/cast/internal/zzn;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzcp;->execute()V

    return-void
.end method

.method public abstract execute()V
.end method
