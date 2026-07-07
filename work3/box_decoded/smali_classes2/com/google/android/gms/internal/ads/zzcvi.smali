.class final synthetic Lcom/google/android/gms/internal/ads/zzcvi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# instance fields
.field private final zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzgtl:Lcom/google/android/gms/internal/ads/zzcve;

.field private final zzgtm:Lcom/google/android/gms/internal/ads/zzche;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcve;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzche;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzgtl:Lcom/google/android/gms/internal/ads/zzcve;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzgtm:Lcom/google/android/gms/internal/ads/zzche;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvi;->zzgtm:Lcom/google/android/gms/internal/ads/zzche;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzdxi:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzadf()V

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacm()V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcoc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/ads/internal/util/zzu;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzu;->zza(Lcom/google/android/gms/internal/ads/zzbdv;)Z

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzche;->zzahq()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object p1

    return-object p1
.end method
