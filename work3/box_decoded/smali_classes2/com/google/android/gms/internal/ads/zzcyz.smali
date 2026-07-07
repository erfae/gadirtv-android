.class final synthetic Lcom/google/android/gms/internal/ads/zzcyz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyb;


# instance fields
.field private final zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgxl:Lcom/google/android/gms/internal/ads/zzcyx;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcyx;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
