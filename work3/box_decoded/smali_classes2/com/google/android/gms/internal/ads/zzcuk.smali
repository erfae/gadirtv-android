.class public final Lcom/google/android/gms/internal/ads/zzcuk;
.super Lcom/google/android/gms/internal/ads/zzcud;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcud<",
        "Lcom/google/android/gms/internal/ads/zzchc;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

.field private final zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

.field private final zzgst:Lcom/google/android/gms/internal/ads/zzbrg$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgm;Lcom/google/android/gms/internal/ads/zzbrg$zza;Lcom/google/android/gms/internal/ads/zzbwp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcud;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgst:Lcom/google/android/gms/internal/ads/zzbrg$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzdnn;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnn;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzchc;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaey()Lcom/google/android/gms/internal/ads/zzchi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzgst:Lcom/google/android/gms/internal/ads/zzbrg$zza;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnn;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzakx()Lcom/google/android/gms/internal/ads/zzbrg;

    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzchi;->zzf(Lcom/google/android/gms/internal/ads/zzbrg;)Lcom/google/android/gms/internal/ads/zzchi;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuk;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    .line 12
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzchi;->zzf(Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzchi;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzchi;->zzaho()Lcom/google/android/gms/internal/ads/zzchf;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchf;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboz;->zzakj()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
