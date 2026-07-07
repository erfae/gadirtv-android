.class final synthetic Lcom/google/android/gms/internal/ads/zzcvp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

.field private final zzgto:Lcom/google/android/gms/internal/ads/zzcvq;

.field private final zzgtp:Lcom/google/android/gms/internal/ads/zzcrb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvq;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgto:Lcom/google/android/gms/internal/ads/zzcvq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgtp:Lcom/google/android/gms/internal/ads/zzcrb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgto:Lcom/google/android/gms/internal/ads/zzcvq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgfz:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcvp;->zzgtp:Lcom/google/android/gms/internal/ads/zzcrb;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvq;->zzgts:Lcom/google/android/gms/internal/ads/zzcvo;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcvo;->zza(Lcom/google/android/gms/internal/ads/zzcvo;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)V

    return-void
.end method
