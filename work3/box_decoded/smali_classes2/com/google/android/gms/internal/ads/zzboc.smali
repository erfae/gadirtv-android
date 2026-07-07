.class public Lcom/google/android/gms/internal/ads/zzboc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field protected final zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

.field protected final zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzfur:Lcom/google/android/gms/internal/ads/zzbso;

.field private final zzfus:Lcom/google/android/gms/internal/ads/zzbte;

.field private final zzfut:Lcom/google/android/gms/internal/ads/zzdki;

.field private final zzfuu:Lcom/google/android/gms/internal/ads/zzbrp;

.field private final zzfuv:Lcom/google/android/gms/internal/ads/zzbul;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbob;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbob;->zza(Lcom/google/android/gms/internal/ads/zzbob;)Lcom/google/android/gms/internal/ads/zzdnj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbob;->zzb(Lcom/google/android/gms/internal/ads/zzbob;)Lcom/google/android/gms/internal/ads/zzdmu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbob;->zzc(Lcom/google/android/gms/internal/ads/zzbob;)Lcom/google/android/gms/internal/ads/zzbso;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfur:Lcom/google/android/gms/internal/ads/zzbso;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbob;->zzd(Lcom/google/android/gms/internal/ads/zzbob;)Lcom/google/android/gms/internal/ads/zzbte;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfus:Lcom/google/android/gms/internal/ads/zzbte;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbob;->zze(Lcom/google/android/gms/internal/ads/zzbob;)Lcom/google/android/gms/internal/ads/zzdki;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfut:Lcom/google/android/gms/internal/ads/zzdki;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbob;->zzf(Lcom/google/android/gms/internal/ads/zzbob;)Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfuu:Lcom/google/android/gms/internal/ads/zzbrp;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbob;->zzg(Lcom/google/android/gms/internal/ads/zzbob;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfuv:Lcom/google/android/gms/internal/ads/zzbul;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfur:Lcom/google/android/gms/internal/ads/zzbso;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbso;->zzce(Landroid/content/Context;)V

    return-void
.end method

.method public zzajj()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfus:Lcom/google/android/gms/internal/ads/zzbte;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbte;->onAdLoaded()V

    return-void
.end method

.method public final zzajy()Lcom/google/android/gms/internal/ads/zzbso;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfur:Lcom/google/android/gms/internal/ads/zzbso;

    return-object v0
.end method

.method public final zzajz()Lcom/google/android/gms/internal/ads/zzbrp;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfuu:Lcom/google/android/gms/internal/ads/zzbrp;

    return-object v0
.end method

.method public final zzaka()Lcom/google/android/gms/internal/ads/zzdki;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfut:Lcom/google/android/gms/internal/ads/zzdki;

    return-object v0
.end method

.method public final zzakb()Lcom/google/android/gms/internal/ads/zzbvn;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboc;->zzfuv:Lcom/google/android/gms/internal/ads/zzbul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbul;->zzakb()Lcom/google/android/gms/internal/ads/zzbvn;

    move-result-object v0

    return-object v0
.end method
