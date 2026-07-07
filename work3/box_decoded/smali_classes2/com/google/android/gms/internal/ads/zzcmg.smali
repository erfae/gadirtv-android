.class final synthetic Lcom/google/android/gms/internal/ads/zzcmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgmd:Lcom/google/android/gms/internal/ads/zzcmd;

.field private final zzgme:Lcom/google/android/gms/internal/ads/zzatl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmd;Lcom/google/android/gms/internal/ads/zzatl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgmd:Lcom/google/android/gms/internal/ads/zzcmd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgme:Lcom/google/android/gms/internal/ads/zzatl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgmd:Lcom/google/android/gms/internal/ads/zzcmd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgme:Lcom/google/android/gms/internal/ads/zzatl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmd;->zzf(Lcom/google/android/gms/internal/ads/zzatl;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
