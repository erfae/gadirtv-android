.class final synthetic Lcom/google/android/gms/internal/ads/zzcom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzgnw:Lcom/google/android/gms/internal/ads/zzcok;

.field private final zzgnx:Lcom/google/android/gms/internal/ads/zzcor;

.field private final zzgny:Lcom/google/android/gms/internal/ads/zzatl;

.field private final zzgnz:Lcom/google/android/gms/internal/ads/zzdyb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcok;Lcom/google/android/gms/internal/ads/zzcor;Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgnw:Lcom/google/android/gms/internal/ads/zzcok;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgnx:Lcom/google/android/gms/internal/ads/zzcor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgny:Lcom/google/android/gms/internal/ads/zzatl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgnz:Lcom/google/android/gms/internal/ads/zzdyb;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgnw:Lcom/google/android/gms/internal/ads/zzcok;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgnx:Lcom/google/android/gms/internal/ads/zzcor;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgny:Lcom/google/android/gms/internal/ads/zzatl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgnz:Lcom/google/android/gms/internal/ads/zzdyb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcoh;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcok;->zza(Lcom/google/android/gms/internal/ads/zzcor;Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzcoh;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
