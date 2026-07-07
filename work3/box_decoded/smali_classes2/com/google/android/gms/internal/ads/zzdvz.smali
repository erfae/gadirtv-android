.class final Lcom/google/android/gms/internal/ads/zzdvz;
.super Lcom/google/android/gms/internal/ads/zzdwb;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# instance fields
.field private final synthetic zzhtk:Lcom/google/android/gms/internal/ads/zzdvw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdvw;Lcom/google/android/gms/internal/ads/zzdvx;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzhtk:Lcom/google/android/gms/internal/ads/zzdvw;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdwb;-><init>(Lcom/google/android/gms/internal/ads/zzdvx;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final zzem(I)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzhtk:Lcom/google/android/gms/internal/ads/zzdvw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhte:Lcom/google/android/gms/internal/ads/zzdvd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvz;->zzhtl:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdvd;->zza(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method final zzen(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
