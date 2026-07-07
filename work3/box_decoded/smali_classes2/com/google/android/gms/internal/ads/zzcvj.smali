.class final synthetic Lcom/google/android/gms/internal/ads/zzcvj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfj;


# instance fields
.field private final zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzgra:Lcom/google/android/gms/internal/ads/zzcif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcif;Lcom/google/android/gms/internal/ads/zzbdv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgra:Lcom/google/android/gms/internal/ads/zzcif;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

    return-void
.end method


# virtual methods
.method public final zzai(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgra:Lcom/google/android/gms/internal/ads/zzcif;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvj;->zzgfj:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcif;->zzapd()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacm()V

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->zzacs()Lcom/google/android/gms/internal/ads/zzbfg;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfg;->zzace()V

    return-void
.end method
