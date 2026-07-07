.class final synthetic Lcom/google/android/gms/internal/ads/zzcfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfj;


# instance fields
.field private final zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzggx:Lcom/google/android/gms/internal/ads/zzcff;

.field private final zzggy:Lcom/google/android/gms/internal/ads/zzazr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcff;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzazr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzggx:Lcom/google/android/gms/internal/ads/zzcff;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzggy:Lcom/google/android/gms/internal/ads/zzazr;

    return-void
.end method


# virtual methods
.method public final zzai(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzggx:Lcom/google/android/gms/internal/ads/zzcff;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzggy:Lcom/google/android/gms/internal/ads/zzazr;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcff;->zzb(Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzazr;Z)V

    return-void
.end method
