.class public final Lcom/google/android/gms/internal/ads/zzckm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Lcom/google/android/gms/internal/ads/zzckt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaqb()Lcom/google/android/gms/internal/ads/zzckm;
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzckl;->zzaqa()Lcom/google/android/gms/internal/ads/zzckm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzckt;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrl;->zzhob:Lcom/google/android/gms/internal/ads/zzdrl;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrl;->zzhoe:Lcom/google/android/gms/internal/ads/zzdrl;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzckt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrl;Lcom/google/android/gms/internal/ads/zzdrl;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzckt;

    return-object v0
.end method
