.class final synthetic Lcom/google/android/gms/internal/ads/zzdem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxz;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzhaq:Lcom/google/android/gms/internal/ads/zzdek;

.field private final zzhar:Ljava/util/List;

.field private final zzhas:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdek;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhaq:Lcom/google/android/gms/internal/ads/zzdek;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzdha:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhar:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhas:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzata()Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhaq:Lcom/google/android/gms/internal/ads/zzdek;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzdha:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhar:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhas:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdek;->zza(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    return-object v0
.end method
