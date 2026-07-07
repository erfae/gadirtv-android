.class final synthetic Lcom/google/android/gms/internal/ads/zzcsi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnz;


# instance fields
.field private final zzgro:Lcom/google/android/gms/internal/ads/zzcrb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcrb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgro:Lcom/google/android/gms/internal/ads/zzcrb;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzys;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzgro:Lcom/google/android/gms/internal/ads/zzcrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcsf;->zza(Lcom/google/android/gms/internal/ads/zzcrb;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v0

    return-object v0
.end method
