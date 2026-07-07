.class final Lcom/google/android/gms/internal/ads/zzbih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmp;


# instance fields
.field private final synthetic zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

.field private zzflf:Landroid/content/Context;

.field private zzflg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbih;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;)V

    return-void
.end method


# virtual methods
.method public final zzahn()Lcom/google/android/gms/internal/ads/zzdmm;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzflf:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbig;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzflf:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzflg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbig;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhj;)V

    return-object v0
.end method

.method public final synthetic zzcb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdmp;
    .locals 0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzflf:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic zzft(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdmp;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzflg:Ljava/lang/String;

    return-object p0
.end method
