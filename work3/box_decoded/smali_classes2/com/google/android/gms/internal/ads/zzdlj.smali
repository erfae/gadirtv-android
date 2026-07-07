.class final synthetic Lcom/google/android/gms/internal/ads/zzdlj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdka;


# instance fields
.field private final zzfxx:Lcom/google/android/gms/internal/ads/zzauf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlj;->zzfxx:Lcom/google/android/gms/internal/ads/zzauf;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlj;->zzfxx:Lcom/google/android/gms/internal/ads/zzauf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavi;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzawd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauf;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauf;->getAmount()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzavi;->zza(Lcom/google/android/gms/internal/ads/zzavc;)V

    return-void
.end method
