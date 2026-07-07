.class public final Lcom/google/android/gms/internal/ads/zzcgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final zzfvh:Lcom/google/android/gms/internal/ads/zzbsu;

.field private final zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

.field private final zzgas:Lcom/google/android/gms/internal/ads/zzbrt;

.field private final zzght:Lcom/google/android/gms/internal/ads/zzbti;

.field private final zzghu:Lcom/google/android/gms/internal/ads/zzbvy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbsu;Lcom/google/android/gms/internal/ads/zzbti;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbvy;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzgas:Lcom/google/android/gms/internal/ads/zzbrt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzfvh:Lcom/google/android/gms/internal/ads/zzbsu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzght:Lcom/google/android/gms/internal/ads/zzbti;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzghu:Lcom/google/android/gms/internal/ads/zzbvy;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcgh;)V
    .locals 6

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgh;->zza(Lcom/google/android/gms/internal/ads/zzcgh;)Lcom/google/android/gms/internal/ads/zzcgp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzgas:Lcom/google/android/gms/internal/ads/zzbrt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzght:Lcom/google/android/gms/internal/ads/zzbti;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzfzy:Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzghu:Lcom/google/android/gms/internal/ads/zzbvy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzfvh:Lcom/google/android/gms/internal/ads/zzbsu;

    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcgr;->zza(Lcom/google/android/gms/internal/ads/zzbsu;)Lcom/google/android/gms/ads/internal/overlay/zzu;

    move-result-object v5

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgp;->zza(Lcom/google/android/gms/internal/ads/zzcgp;Lcom/google/android/gms/internal/ads/zzva;Lcom/google/android/gms/internal/ads/zzagy;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzaha;Lcom/google/android/gms/ads/internal/overlay/zzu;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgs;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcgh;->zza(Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdmz;)V

    return-void
.end method
