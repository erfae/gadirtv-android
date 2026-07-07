.class final synthetic Lcom/google/android/gms/internal/ads/zzccz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgeh:Lcom/google/android/gms/internal/ads/zzcda;

.field private final zzgei:Lcom/google/android/gms/internal/ads/zzcdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcda;Lcom/google/android/gms/internal/ads/zzcdy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzgeh:Lcom/google/android/gms/internal/ads/zzcda;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzgei:Lcom/google/android/gms/internal/ads/zzcdy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzgeh:Lcom/google/android/gms/internal/ads/zzcda;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzgei:Lcom/google/android/gms/internal/ads/zzcdy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcda;->zze(Lcom/google/android/gms/internal/ads/zzcdy;)V

    return-void
.end method
