.class public final Lcom/google/android/play/core/appupdate/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/appupdate/zzaa;

.field private final zzb:Lcom/google/android/play/core/internal/zzcs;

.field private final zzc:Lcom/google/android/play/core/internal/zzcs;

.field private final zzd:Lcom/google/android/play/core/internal/zzcs;

.field private final zze:Lcom/google/android/play/core/internal/zzcs;

.field private final zzf:Lcom/google/android/play/core/internal/zzcs;

.field private final zzg:Lcom/google/android/play/core/internal/zzcs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/zzh;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zza:Lcom/google/android/play/core/appupdate/zzaa;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzj;-><init>(Lcom/google/android/play/core/appupdate/zzh;)V

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzb:Lcom/google/android/play/core/internal/zzcs;

    new-instance p1, Lcom/google/android/play/core/appupdate/zzt;

    invoke-direct {p1, v0}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    invoke-static {p1}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzc:Lcom/google/android/play/core/internal/zzcs;

    new-instance v1, Lcom/google/android/play/core/appupdate/zzr;

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/appupdate/zzr;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzd:Lcom/google/android/play/core/internal/zzcs;

    new-instance v1, Lcom/google/android/play/core/appupdate/zzc;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/appupdate/zzc;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 3
    invoke-static {v1}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zze:Lcom/google/android/play/core/internal/zzcs;

    new-instance v2, Lcom/google/android/play/core/appupdate/zzg;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V

    .line 4
    invoke-static {v2}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzf:Lcom/google/android/play/core/internal/zzcs;

    new-instance v0, Lcom/google/android/play/core/appupdate/zzi;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Lcom/google/android/play/core/internal/zzcs;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/play/core/internal/zzcq;->zzc(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzcs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzg:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzaa;->zzg:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-object v0
.end method
