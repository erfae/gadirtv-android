.class final synthetic Lcom/google/android/gms/internal/ads/zzddr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddk;


# instance fields
.field private final zzhaf:Lcom/google/android/gms/internal/ads/zzddn;

.field private final zzhah:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddn;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddr;->zzhaf:Lcom/google/android/gms/internal/ads/zzddn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddr;->zzhah:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzs(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddr;->zzhaf:Lcom/google/android/gms/internal/ads/zzddn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddr;->zzhah:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzddn;->zza(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method
