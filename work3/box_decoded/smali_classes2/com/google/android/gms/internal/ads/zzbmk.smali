.class final synthetic Lcom/google/android/gms/internal/ads/zzbmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtj;


# instance fields
.field private final zzclq:Landroid/content/Context;

.field private final zzftn:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

.field private final zzftp:Lcom/google/android/gms/internal/ads/zzdnn;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzdnn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzclq:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzftn:Lcom/google/android/gms/internal/ads/zzazh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzftp:Lcom/google/android/gms/internal/ads/zzdnn;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzclq:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzftn:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzfto:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzftp:Lcom/google/android/gms/internal/ads/zzdnn;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzla()Lcom/google/android/gms/ads/internal/util/zzal;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhc:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnn;->zzhip:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzal;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
