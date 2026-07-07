.class final synthetic Lcom/google/android/gms/internal/ads/zzbtb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwm;


# instance fields
.field private final zzdgt:Ljava/lang/String;

.field private final zzdha:Ljava/lang/String;

.field private final zzfxx:Lcom/google/android/gms/internal/ads/zzauf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfxx:Lcom/google/android/gms/internal/ads/zzauf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzdha:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzdgt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzfxx:Lcom/google/android/gms/internal/ads/zzauf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzdha:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtb;->zzdgt:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbru;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbru;->zzb(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
